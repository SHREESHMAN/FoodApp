import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PidataRecord extends FirestoreRecord {
  PidataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _category = snapshotData['category'] as String?;
    _price = castToType<double>(snapshotData['price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pidata');

  static Stream<PidataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PidataRecord.fromSnapshot(s));

  static Future<PidataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PidataRecord.fromSnapshot(s));

  static PidataRecord fromSnapshot(DocumentSnapshot snapshot) => PidataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PidataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PidataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PidataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PidataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPidataRecordData({
  String? category,
  double? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'category': category,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class PidataRecordDocumentEquality implements Equality<PidataRecord> {
  const PidataRecordDocumentEquality();

  @override
  bool equals(PidataRecord? e1, PidataRecord? e2) {
    return e1?.category == e2?.category && e1?.price == e2?.price;
  }

  @override
  int hash(PidataRecord? e) =>
      const ListEquality().hash([e?.category, e?.price]);

  @override
  bool isValidKey(Object? o) => o is PidataRecord;
}
