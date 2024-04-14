import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
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
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _categories =
          await secureStorage.getStringList('ff_categories') ?? _categories;
    });
    await _safeInitAsync(() async {
      _foodItem = (await secureStorage.getStringList('ff_foodItem'))
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
    await _safeInitAsync(() async {
      _tutorialsdone = (await secureStorage.getStringList('ff_tutorialsdone'))
              ?.map(int.parse)
              .toList() ??
          _tutorialsdone;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

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
    secureStorage.setStringList('ff_categories', value);
  }

  void deleteCategories() {
    secureStorage.delete(key: 'ff_categories');
  }

  void addToCategories(String value) {
    _categories.add(value);
    secureStorage.setStringList('ff_categories', _categories);
  }

  void removeFromCategories(String value) {
    _categories.remove(value);
    secureStorage.setStringList('ff_categories', _categories);
  }

  void removeAtIndexFromCategories(int index) {
    _categories.removeAt(index);
    secureStorage.setStringList('ff_categories', _categories);
  }

  void updateCategoriesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _categories[index] = updateFn(_categories[index]);
    secureStorage.setStringList('ff_categories', _categories);
  }

  void insertAtIndexInCategories(int index, String value) {
    _categories.insert(index, value);
    secureStorage.setStringList('ff_categories', _categories);
  }

  List<FoodItemStruct> _foodItem = [];
  List<FoodItemStruct> get foodItem => _foodItem;
  set foodItem(List<FoodItemStruct> value) {
    _foodItem = value;
    secureStorage.setStringList(
        'ff_foodItem', value.map((x) => x.serialize()).toList());
  }

  void deleteFoodItem() {
    secureStorage.delete(key: 'ff_foodItem');
  }

  void addToFoodItem(FoodItemStruct value) {
    _foodItem.add(value);
    secureStorage.setStringList(
        'ff_foodItem', _foodItem.map((x) => x.serialize()).toList());
  }

  void removeFromFoodItem(FoodItemStruct value) {
    _foodItem.remove(value);
    secureStorage.setStringList(
        'ff_foodItem', _foodItem.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromFoodItem(int index) {
    _foodItem.removeAt(index);
    secureStorage.setStringList(
        'ff_foodItem', _foodItem.map((x) => x.serialize()).toList());
  }

  void updateFoodItemAtIndex(
    int index,
    FoodItemStruct Function(FoodItemStruct) updateFn,
  ) {
    _foodItem[index] = updateFn(_foodItem[index]);
    secureStorage.setStringList(
        'ff_foodItem', _foodItem.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInFoodItem(int index, FoodItemStruct value) {
    _foodItem.insert(index, value);
    secureStorage.setStringList(
        'ff_foodItem', _foodItem.map((x) => x.serialize()).toList());
  }

  double _datepick = 0.0;
  double get datepick => _datepick;
  set datepick(double value) {
    _datepick = value;
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

  List<int> _tutorialsdone = [];
  List<int> get tutorialsdone => _tutorialsdone;
  set tutorialsdone(List<int> value) {
    _tutorialsdone = value;
    secureStorage.setStringList(
        'ff_tutorialsdone', value.map((x) => x.toString()).toList());
  }

  void deleteTutorialsdone() {
    secureStorage.delete(key: 'ff_tutorialsdone');
  }

  void addToTutorialsdone(int value) {
    _tutorialsdone.add(value);
    secureStorage.setStringList(
        'ff_tutorialsdone', _tutorialsdone.map((x) => x.toString()).toList());
  }

  void removeFromTutorialsdone(int value) {
    _tutorialsdone.remove(value);
    secureStorage.setStringList(
        'ff_tutorialsdone', _tutorialsdone.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromTutorialsdone(int index) {
    _tutorialsdone.removeAt(index);
    secureStorage.setStringList(
        'ff_tutorialsdone', _tutorialsdone.map((x) => x.toString()).toList());
  }

  void updateTutorialsdoneAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _tutorialsdone[index] = updateFn(_tutorialsdone[index]);
    secureStorage.setStringList(
        'ff_tutorialsdone', _tutorialsdone.map((x) => x.toString()).toList());
  }

  void insertAtIndexInTutorialsdone(int index, int value) {
    _tutorialsdone.insert(index, value);
    secureStorage.setStringList(
        'ff_tutorialsdone', _tutorialsdone.map((x) => x.toString()).toList());
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

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
