// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserTypeStruct extends FFFirebaseStruct {
  UserTypeStruct({
    String? displayName,
    String? email,
    String? photoUrl,
    String? uid,
    LatLng? address,
    DateTime? createdTime,
    String? phoneNumber,
    UserType? userType,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _displayName = displayName,
        _email = email,
        _photoUrl = photoUrl,
        _uid = uid,
        _address = address,
        _createdTime = createdTime,
        _phoneNumber = phoneNumber,
        _userType = userType,
        super(firestoreUtilData);

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;
  bool hasDisplayName() => _displayName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  set photoUrl(String? val) => _photoUrl = val;
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;
  bool hasUid() => _uid != null;

  // "address" field.
  LatLng? _address;
  LatLng? get address => _address;
  set address(LatLng? val) => _address = val;
  bool hasAddress() => _address != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  set createdTime(DateTime? val) => _createdTime = val;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;
  bool hasPhoneNumber() => _phoneNumber != null;

  // "userType" field.
  UserType? _userType;
  UserType? get userType => _userType;
  set userType(UserType? val) => _userType = val;
  bool hasUserType() => _userType != null;

  static UserTypeStruct fromMap(Map<String, dynamic> data) => UserTypeStruct(
        displayName: data['display_name'] as String?,
        email: data['email'] as String?,
        photoUrl: data['photo_url'] as String?,
        uid: data['uid'] as String?,
        address: data['address'] as LatLng?,
        createdTime: data['created_time'] as DateTime?,
        phoneNumber: data['phone_number'] as String?,
        userType: deserializeEnum<UserType>(data['userType']),
      );

  static UserTypeStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserTypeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'display_name': _displayName,
        'email': _email,
        'photo_url': _photoUrl,
        'uid': _uid,
        'address': _address,
        'created_time': _createdTime,
        'phone_number': _phoneNumber,
        'userType': _userType?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'display_name': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'photo_url': serializeParam(
          _photoUrl,
          ParamType.String,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.LatLng,
        ),
        'created_time': serializeParam(
          _createdTime,
          ParamType.DateTime,
        ),
        'phone_number': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'userType': serializeParam(
          _userType,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static UserTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserTypeStruct(
        displayName: deserializeParam(
          data['display_name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        photoUrl: deserializeParam(
          data['photo_url'],
          ParamType.String,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.LatLng,
          false,
        ),
        createdTime: deserializeParam(
          data['created_time'],
          ParamType.DateTime,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phone_number'],
          ParamType.String,
          false,
        ),
        userType: deserializeParam<UserType>(
          data['userType'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'UserTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserTypeStruct &&
        displayName == other.displayName &&
        email == other.email &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        address == other.address &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        userType == other.userType;
  }

  @override
  int get hashCode => const ListEquality().hash([
        displayName,
        email,
        photoUrl,
        uid,
        address,
        createdTime,
        phoneNumber,
        userType
      ]);
}

UserTypeStruct createUserTypeStruct({
  String? displayName,
  String? email,
  String? photoUrl,
  String? uid,
  LatLng? address,
  DateTime? createdTime,
  String? phoneNumber,
  UserType? userType,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserTypeStruct(
      displayName: displayName,
      email: email,
      photoUrl: photoUrl,
      uid: uid,
      address: address,
      createdTime: createdTime,
      phoneNumber: phoneNumber,
      userType: userType,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserTypeStruct? updateUserTypeStruct(
  UserTypeStruct? userTypeStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userTypeStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserTypeStructData(
  Map<String, dynamic> firestoreData,
  UserTypeStruct? userTypeStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userTypeStruct == null) {
    return;
  }
  if (userTypeStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userTypeStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userTypeStructData =
      getUserTypeFirestoreData(userTypeStruct, forFieldValue);
  final nestedData =
      userTypeStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userTypeStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserTypeFirestoreData(
  UserTypeStruct? userTypeStruct, [
  bool forFieldValue = false,
]) {
  if (userTypeStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userTypeStruct.toMap());

  // Add any Firestore field values
  userTypeStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserTypeListFirestoreData(
  List<UserTypeStruct>? userTypeStructs,
) =>
    userTypeStructs?.map((e) => getUserTypeFirestoreData(e, true)).toList() ??
    [];
