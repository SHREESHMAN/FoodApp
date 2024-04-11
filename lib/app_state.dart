import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
    _safeInit(() {
      _foodItem = prefs
              .getStringList('ff_foodItem')
              ?.map((x) {
                try {
                  return FoodItemStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _foodItem;
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
    prefs.setStringList(
        'ff_foodItem', value.map((x) => x.serialize()).toList());
  }

  void addToFoodItem(FoodItemStruct value) {
    _foodItem.add(value);
    prefs.setStringList(
        'ff_foodItem', _foodItem.map((x) => x.serialize()).toList());
  }

  void removeFromFoodItem(FoodItemStruct value) {
    _foodItem.remove(value);
    prefs.setStringList(
        'ff_foodItem', _foodItem.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromFoodItem(int index) {
    _foodItem.removeAt(index);
    prefs.setStringList(
        'ff_foodItem', _foodItem.map((x) => x.serialize()).toList());
  }

  void updateFoodItemAtIndex(
    int index,
    FoodItemStruct Function(FoodItemStruct) updateFn,
  ) {
    _foodItem[index] = updateFn(_foodItem[index]);
    prefs.setStringList(
        'ff_foodItem', _foodItem.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInFoodItem(int index, FoodItemStruct value) {
    _foodItem.insert(index, value);
    prefs.setStringList(
        'ff_foodItem', _foodItem.map((x) => x.serialize()).toList());
  }

  double _datepick = 0.0;
  double get datepick => _datepick;
  set datepick(double value) {
    _datepick = value;
  }

  UserTypeStruct _fetchedusers = UserTypeStruct();
  UserTypeStruct get fetchedusers => _fetchedusers;
  set fetchedusers(UserTypeStruct value) {
    _fetchedusers = value;
  }

  void updateFetchedusersStruct(Function(UserTypeStruct) updateFn) {
    updateFn(_fetchedusers);
  }

  List<FoodItemStruct> _queryusers = [];
  List<FoodItemStruct> get queryusers => _queryusers;
  set queryusers(List<FoodItemStruct> value) {
    _queryusers = value;
  }

  void addToQueryusers(FoodItemStruct value) {
    _queryusers.add(value);
  }

  void removeFromQueryusers(FoodItemStruct value) {
    _queryusers.remove(value);
  }

  void removeAtIndexFromQueryusers(int index) {
    _queryusers.removeAt(index);
  }

  void updateQueryusersAtIndex(
    int index,
    FoodItemStruct Function(FoodItemStruct) updateFn,
  ) {
    _queryusers[index] = updateFn(_queryusers[index]);
  }

  void insertAtIndexInQueryusers(int index, FoodItemStruct value) {
    _queryusers.insert(index, value);
  }

  final _userDocQueryManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> userDocQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _userDocQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserDocQueryCache() => _userDocQueryManager.clear();
  void clearUserDocQueryCacheKey(String? uniqueKey) =>
      _userDocQueryManager.clearRequest(uniqueKey);
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
