import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

String combineall(List<String> foo) {
  return '[${foo.join(',')}]';
}

String getitem(
  List<String> lis,
  String img,
) {
  String lowercaseVariable1 = img.toLowerCase().trim();
  for (String item in lis) {
    if (item.toLowerCase() == lowercaseVariable1) {
      return item;
    }
  }
  return '0';
}

DateTime? getdate(
  String? date,
  String? month,
  String? year,
) {
  // takes in date month and year strings and returns a datetime object
  if (date == null || month == null || year == null) {
    return null;
  }
  final intDate = int.tryParse(date);
  final intMonth = int.tryParse(month);
  final intYear = int.tryParse(year);
  if (intDate == null || intMonth == null || intYear == null) {
    return null;
  }
  return DateTime(intYear, intMonth, intDate);
}

String? getDefaultImage(String inp) {
  // accept string inp and if its in string list str then return same index item from string list abc
  List<String> str = [
    'Bread',
    'Milk',
    'Cheese',
    'Chicken',
    'Meat',
    'Fruit',
    'Vegetable'
  ];
  List<String> abc = [
    'https://www.maangchi.com/wp-content/uploads/2021/03/pandemic-bread-scaled-1200x675-cropped.jpg',
    'https://www.blanktag.co/cdn/shop/products/The_Milk_Carton_Sticker_-_Product_Image.png?v=1534641984&width=1024',
    'https://images-prod.healthline.com/hlcmsresource/images/AN_images/healthiest-cheese-1296x728-swiss.jpg',
    'https://www.simplyrecipes.com/thmb/Sw2rWO2l615LjOnmUyDIWjAMDKg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2007__04__honey-glazed-roast-chicken-horiz-a-1800-2057270028084ff2bdb54fcb0f2d3227.jpg',
    'https://www.foodmanufacture.co.uk/var/wrbm_gb_food_pharma/storage/images/publications/food-beverage-nutrition/foodmanufacture.co.uk/article/2021/02/01/meat-trends-market-prospers-in-face-of-pandemic/12148503-4-eng-GB/Meat-trends-market-prospers-in-face-of-pandemic.jpg',
    'https://hips.hearstapps.com/hmg-prod/images/pasta-salad-horizontal-jpg-1522265695.jpg?crop=1xw:0.8435812837432514xh;center,top&resize=1200:*',
    'https://www.sprinklesandsprouts.com/wp-content/uploads/2020/03/Buttered-Vegetables-SQ-480x270.jpg'
  ];

  if (str.contains(inp)) {
    return abc[str.indexOf(inp)];
  } else {
    return null;
  }
}

String messagemaker(FoodItemStruct item) {
  return ("I wold like to donate this item:\nName:" +
      item.name +
      "\nExpiry: " +
      DateFormat('dd/MM/yyyy').format(item.expiry!) +
      "\nBuy Price: AED " +
      item.price.toString() +
      "\nQuantity: " +
      item.quantity.toString() +
      "\nCategory: " +
      item.category +
      "\nCondition: " +
      item.description);
}

int lastItem(List<FoodItemStruct> fitem) {
  return fitem.length - 1;
}

List<PiedataStruct> getpiedata(List<FoodItemStruct> allitems) {
  List<PiedataStruct> piedata = [];
  // Group food items by category
  Map<String, List<FoodItemStruct>> groupedItems = {};

  allitems.forEach((item) {
    if (groupedItems.containsKey(item.category)) {
      groupedItems[item.category]!.add(item);
    } else {
      groupedItems[item.category] = [item];
    }
  });
  // Calculate total calories for each category
  groupedItems.forEach((category, items) {
    double totalCalories = 0;
    items.forEach((item) {
      totalCalories += item.price;
    });
    piedata.add(PiedataStruct(price: totalCalories, category: category));
  });

  return piedata;
}
