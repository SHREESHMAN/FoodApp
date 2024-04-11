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

int isdefault(String cat) {
  List<String> str = [
    'Bread',
    'Milk',
    'Cheese',
    'Chicken',
    'Meat',
    'Fruit',
    'Vegetable'
  ];
  if (str.contains(cat)) {
    return 1;
  } else {
    return 0;
  }
}

String getRadomTip() {
  List<String> tips = [
    "Plan your meals before shopping",
    "Buy only what you need",
    "Store food properly to extend its shelf life",
    "Use leftovers creatively in new meals",
    "Compost food scraps",
    "Donate excess food to food banks",
    "Learn the difference between 'best before' and 'use by' dates",
    "Freeze food to extend its life",
    "Buy loose fruits and vegetables instead of pre-packaged",
    "Grow your own fruits and vegetables",
    "Use a water filter instead of buying bottled water",
    "Carry reusable shopping bags",
    "Recycle paper, plastic, and glass",
    "Buy products with less packaging",
    "Use rechargeable batteries",
    "Donate or sell items instead of throwing them away",
    "Repair items instead of replacing them",
    "Turn off lights when not in use",
    "Unplug electronics when not in use",
    "Use energy-efficient appliances",
    "Insulate your home to save energy",
    "Use public transport, cycle, or walk instead of driving",
    "Carpool with others",
    "Plant trees to offset carbon emissions",
    "Use solar power if possible",
    "Buy second-hand items",
    "Avoid single-use items",
    "Use a reusable water bottle",
    "Use cloth napkins instead of paper ones",
    "Use a razor with replaceable blades instead of disposable razors",
    "Use bar soap instead of liquid soap",
    "Buy in bulk to reduce packaging waste",
    "Make your own cleaning products",
    "Use cloth diapers instead of disposable ones",
    "Use a menstrual cup or cloth pads instead of disposable products",
    "Use digital documents instead of paper",
    "Print on both sides of the paper",
    "Reuse scrap paper",
    "Recycle old electronics",
    "Donate old clothes and shoes",
    "Repair clothes instead of throwing them away",
    "Buy clothes made of sustainable materials",
    "Avoid fast fashion",
    "Wash clothes in cold water",
    "Hang dry clothes instead of using a dryer",
    "Buy locally produced items",
    "Eat less meat and dairy",
    "Support companies with sustainable practices",
    "Avoid products with palm oil",
    "Use a compost bin",
    "Use a rain barrel to collect water for gardening",
    "Plant native plants that require less water",
    "Use a low-flow showerhead",
    "Fix leaks promptly",
    "Take shorter showers",
    "Turn off the tap while brushing your teeth",
    "Use a broom instead of a hose to clean your driveway",
    "Avoid products with microbeads",
    "Dispose of hazardous waste properly",
    "Pick up litter",
    "Avoid products made from endangered animals",
    "Support animal conservation efforts",
    "Educate others about sustainability",
    "Vote for politicians who support the environment",
    "Join a local environmental group",
    "Reduce, Reuse, Recycle",
    "Compost kitchen scraps",
    "Use natural light as much as possible",
    "Use cloth towels instead of paper towels",
    "Use a programmable thermostat",
    "Seal windows and doors to prevent drafts",
    "Use LED light bulbs",
    "Choose a fuel-efficient car",
    "Keep car tires properly inflated to improve gas mileage",
    "Reduce air travel",
    "Stay informed about environmental issues",
    "Teach children about the importance of sustainability",
    "Participate in community clean-up events",
    "Buy fair-trade products",
    "Avoid products tested on animals",
    "Use a reusable coffee cup",
    "Pack lunch in reusable containers",
    "Make your own snacks instead of buying pre-packaged ones",
    "Buy fresh bread that comes in paper bags instead of plastic",
    "Use a pressure cooker to save energy while cooking",
    "Use a toaster oven for small meals instead of the oven",
    "Keep the refrigerator and freezer full to make them more efficient",
    "Defrost food in the fridge instead of using the microwave",
    "Use a drying rack for dishes instead of a dishwasher",
    "Use a push mower instead of a gas-powered one",
    "Leave grass clippings on the lawn as natural fertilizer",
    "Mulch garden beds to retain moisture",
    "Plant a vegetable garden",
    "Start a worm farm",
    "Install a bat house to naturally control pests",
    "Use natural pest control methods",
    "Avoid synthetic fertilizers and pesticides",
    "Collect greywater for watering plants",
    "Install a green roof or walls",
    "Use permeable paving for driveways and paths",
    "Install a bird feeder and bird bath",
    "Create a habitat for beneficial insects",
    "Plant a tree every year",
    "Use eco-friendly pet products",
    "Adopt pets from shelters instead of buying",
    "Spay or neuter pets to prevent overpopulation",
    "Use biodegradable cat litter",
    "Feed pets sustainable pet food",
    "Pick up pet waste promptly",
    "Take a staycation instead of a vacation",
    "Choose eco-friendly accommodations when traveling",
    "Use a solar charger for devices",
    "Use an e-reader instead of buying books",
    "Borrow books and movies from the library",
    "Recycle old glasses and contact lenses",
    "Use cloth gift wrap",
    "Give experiences as gifts instead of physical items",
    "Make homemade gifts",
    "Send e-cards instead of paper cards",
    "Decorate with natural materials",
    "Choose a living Christmas tree",
    "Use LED Christmas lights",
    "Recycle Christmas trees",
    "Use reusable shopping bags for holiday shopping",
    "Buy holiday decorations after the holiday for the next year",
    "Make homemade holiday decorations",
    "Donate to a charity as a holiday gift",
    "Use a reusable advent calendar",
    "Buy Easter eggs made of wood or chocolate instead of plastic",
    "Use natural dyes for Easter eggs",
    "Reuse Halloween costumes",
    "Carve a local, organic pumpkin for Halloween",
    "Give out healthy, package-free treats for Halloween",
    "Celebrate holidays with a potluck meal",
    "Use reusable plates, cups, and cutlery for holiday meals",
    "Compost holiday meal scraps",
    "Donate leftover holiday food to a food bank",
    "Recycle holiday packaging",
    "Use rechargeable batteries for holiday gifts",
    "Give battery-free gifts",
    "Choose holiday gifts that support a good cause",
    "Give handmade holiday gifts",
    "Give holiday gifts that promote sustainability",
    "Wrap holiday gifts in reusable gift bags",
    "Reuse holiday wrapping paper and ribbons",
    "Make homemade holiday cards",
    "Send holiday cards made of recycled paper",
    "Send digital holiday cards",
    "Decorate a living Christmas tree outside",
    "Buy a potted Christmas tree and plant it after the holidays",
    "Rent a Christmas tree",
    "Decorate with LED Christmas lights",
    "Turn off Christmas lights during the day",
    "Use a timer for Christmas lights",
    "Recycle broken Christmas lights",
    "Donate unwanted Christmas gifts",
    "Regift unwanted Christmas gifts",
    "Sell unwanted Christmas gifts",
    "Swap unwanted Christmas gifts",
    "Return unwanted Christmas gifts",
    "Use unwanted Christmas gifts for a white elephant gift exchange",
    "Donate unwanted Christmas decorations",
    "Sell unwanted Christmas decorations",
    "Swap unwanted Christmas decorations",
    "Store Christmas decorations carefully to reuse next year",
    "Repair broken Christmas decorations",
    "Make homemade Christmas decorations",
    "Buy Christmas decorations secondhand",
    "Choose durable Christmas decorations that will last many years",
    "Avoid Christmas decorations made of plastic",
    "Choose Christmas decorations made of natural materials",
    "Avoid Christmas decorations with glitter",
    "Choose Christmas decorations in classic styles that won't go out of fashion",
    "Avoid trendy Christmas decorations that will be out of style next year",
    "Choose Christmas decorations in a limited color palette for a cohesive look",
    "Decorate with Christmas ornaments that have sentimental value",
    "Choose Christmas ornaments that can be used for other holidays",
    "Use edible Christmas decorations like popcorn garlands and gingerbread houses",
    "Use Christmas decorations that double as winter decorations",
    "Use Christmas decorations that can be composted like wreaths made of real greenery",
    "Use Christmas decorations that can be planted like bulbs in pots",
    "Use Christmas decorations that can be eaten like candy canes",
    "Use Christmas decorations that can be used for crafts like pinecones for bird feeders",
    "Use Christmas decorations that can be used for games like ornaments for a scavenger hunt",
    "Use Christmas decorations that can be used for gifts like ornaments with gift cards inside",
    "Use Christmas decorations that can be used for charity like ornaments sold for a good cause",
    "Use Christmas decorations that can be used for education like ornaments that teach about different cultures",
    "Use Christmas decorations that can be used for relaxation like ornaments with calming scents",
    "Use Christmas decorations that can be used for inspiration like ornaments with motivational quotes",
    "Use Christmas decorations that can be used for celebration like ornaments that mark special occasions",
    "Use Christmas decorations that can be used for connection like ornaments that represent family members",
    "Use Christmas decorations that can be used for creativity like ornaments that can be painted or decorated"
  ];
  var random = new math.Random();
  var randomTip = tips[random.nextInt(tips.length)];
  return (randomTip);
}

bool checkIfPresent(
  String item,
  List<String> list,
) {
  // check if item is in list
  return list.contains(item);
}

String noquote(String itemwithquote) {
  // takes a string and removes all single and double quote
  return itemwithquote.replaceAll(RegExp("[\'\"]"), '');
}
