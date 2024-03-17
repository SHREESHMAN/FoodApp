import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _categories = prefs.getStringList('ff_categories') ?? _categories;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _appState = '0';
  String get appState => _appState;
  set appState(String value) {
    _appState = value;
  }

  double _visible = 0.0;
  double get visible => _visible;
  set visible(double value) {
    _visible = value;
  }

  String _helptext =
      'Enter details manually or click the image icon to use AI and autofill some information about the product.';
  String get helptext => _helptext;
  set helptext(String value) {
    _helptext = value;
  }

  List<String> _categories = [
    'Bread',
    'Milk',
    'Cheese',
    'Chicken',
    'Meat',
    'Fruit',
    'Vegetable'
  ];
  List<String> get categories => _categories;
  set categories(List<String> value) {
    _categories = value;
    prefs.setStringList('ff_categories', value);
  }

  void addToCategories(String value) {
    _categories.add(value);
    prefs.setStringList('ff_categories', _categories);
  }

  void removeFromCategories(String value) {
    _categories.remove(value);
    prefs.setStringList('ff_categories', _categories);
  }

  void removeAtIndexFromCategories(int index) {
    _categories.removeAt(index);
    prefs.setStringList('ff_categories', _categories);
  }

  void updateCategoriesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _categories[index] = updateFn(_categories[index]);
    prefs.setStringList('ff_categories', _categories);
  }

  void insertAtIndexInCategories(int index, String value) {
    _categories.insert(index, value);
    prefs.setStringList('ff_categories', _categories);
  }

  List<FoodItemStruct> _foodItem = [];
  List<FoodItemStruct> get foodItem => _foodItem;
  set foodItem(List<FoodItemStruct> value) {
    _foodItem = value;
  }

  void addToFoodItem(FoodItemStruct value) {
    _foodItem.add(value);
  }

  void removeFromFoodItem(FoodItemStruct value) {
    _foodItem.remove(value);
  }

  void removeAtIndexFromFoodItem(int index) {
    _foodItem.removeAt(index);
  }

  void updateFoodItemAtIndex(
    int index,
    FoodItemStruct Function(FoodItemStruct) updateFn,
  ) {
    _foodItem[index] = updateFn(_foodItem[index]);
  }

  void insertAtIndexInFoodItem(int index, FoodItemStruct value) {
    _foodItem.insert(index, value);
  }

  double _datepick = 0.0;
  double get datepick => _datepick;
  set datepick(double value) {
    _datepick = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
