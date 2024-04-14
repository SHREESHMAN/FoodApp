import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RewardsRecord extends FirestoreRecord {
  RewardsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Points" field.
  int? _points;
  int get points => _points ?? 0;
  bool hasPoints() => _points != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _points = castToType<int>(snapshotData['Points']);
    _description = snapshotData['Description'] as String?;
    _image = snapshotData['Image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Rewards');

  static Stream<RewardsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RewardsRecord.fromSnapshot(s));

  static Future<RewardsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RewardsRecord.fromSnapshot(s));

  static RewardsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RewardsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RewardsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RewardsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RewardsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RewardsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRewardsRecordData({
  String? name,
  int? points,
  String? description,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Points': points,
      'Description': description,
      'Image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class RewardsRecordDocumentEquality implements Equality<RewardsRecord> {
  const RewardsRecordDocumentEquality();

  @override
  bool equals(RewardsRecord? e1, RewardsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.points == e2?.points &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image;
  }

  @override
  int hash(RewardsRecord? e) =>
      const ListEquality().hash([e?.name, e?.points, e?.description, e?.image]);

  @override
  bool isValidKey(Object? o) => o is RewardsRecord;
}
