import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodItemsRecord extends FirestoreRecord {
  FoodItemsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "expiry" field.
  DateTime? _expiry;
  DateTime? get expiry => _expiry;
  bool hasExpiry() => _expiry != null;

  // "donated" field.
  bool? _donated;
  bool get donated => _donated ?? false;
  bool hasDonated() => _donated != null;

  // "quantity" field.
  double? _quantity;
  double get quantity => _quantity ?? 0.0;
  bool hasQuantity() => _quantity != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _category = snapshotData['category'] as String?;
    _expiry = snapshotData['expiry'] as DateTime?;
    _donated = snapshotData['donated'] as bool?;
    _quantity = castToType<double>(snapshotData['quantity']);
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('foodItems');

  static Stream<FoodItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FoodItemsRecord.fromSnapshot(s));

  static Future<FoodItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FoodItemsRecord.fromSnapshot(s));

  static FoodItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FoodItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FoodItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FoodItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FoodItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FoodItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFoodItemsRecordData({
  String? name,
  String? description,
  double? price,
  String? category,
  DateTime? expiry,
  bool? donated,
  double? quantity,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'category': category,
      'expiry': expiry,
      'donated': donated,
      'quantity': quantity,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class FoodItemsRecordDocumentEquality implements Equality<FoodItemsRecord> {
  const FoodItemsRecordDocumentEquality();

  @override
  bool equals(FoodItemsRecord? e1, FoodItemsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.category == e2?.category &&
        e1?.expiry == e2?.expiry &&
        e1?.donated == e2?.donated &&
        e1?.quantity == e2?.quantity &&
        e1?.image == e2?.image;
  }

  @override
  int hash(FoodItemsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.price,
        e?.category,
        e?.expiry,
        e?.donated,
        e?.quantity,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is FoodItemsRecord;
}
