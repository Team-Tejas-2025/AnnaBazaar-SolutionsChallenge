// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnnaBuddyStruct extends FFFirebaseStruct {
  AnnaBuddyStruct({
    Role? role,
    String? message,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _role = role,
        _message = message,
        super(firestoreUtilData);

  // "role" field.
  Role? _role;
  Role? get role => _role;
  set role(Role? val) => _role = val;

  bool hasRole() => _role != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  static AnnaBuddyStruct fromMap(Map<String, dynamic> data) => AnnaBuddyStruct(
        role: data['role'] is Role
            ? data['role']
            : deserializeEnum<Role>(data['role']),
        message: data['message'] as String?,
      );

  static AnnaBuddyStruct? maybeFromMap(dynamic data) => data is Map
      ? AnnaBuddyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'role': _role?.serialize(),
        'message': _message,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'role': serializeParam(
          _role,
          ParamType.Enum,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
      }.withoutNulls;

  static AnnaBuddyStruct fromSerializableMap(Map<String, dynamic> data) =>
      AnnaBuddyStruct(
        role: deserializeParam<Role>(
          data['role'],
          ParamType.Enum,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AnnaBuddyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AnnaBuddyStruct &&
        role == other.role &&
        message == other.message;
  }

  @override
  int get hashCode => const ListEquality().hash([role, message]);
}

AnnaBuddyStruct createAnnaBuddyStruct({
  Role? role,
  String? message,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AnnaBuddyStruct(
      role: role,
      message: message,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AnnaBuddyStruct? updateAnnaBuddyStruct(
  AnnaBuddyStruct? annaBuddy, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    annaBuddy
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAnnaBuddyStructData(
  Map<String, dynamic> firestoreData,
  AnnaBuddyStruct? annaBuddy,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (annaBuddy == null) {
    return;
  }
  if (annaBuddy.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && annaBuddy.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final annaBuddyData = getAnnaBuddyFirestoreData(annaBuddy, forFieldValue);
  final nestedData = annaBuddyData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = annaBuddy.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAnnaBuddyFirestoreData(
  AnnaBuddyStruct? annaBuddy, [
  bool forFieldValue = false,
]) {
  if (annaBuddy == null) {
    return {};
  }
  final firestoreData = mapToFirestore(annaBuddy.toMap());

  // Add any Firestore field values
  annaBuddy.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAnnaBuddyListFirestoreData(
  List<AnnaBuddyStruct>? annaBuddys,
) =>
    annaBuddys?.map((e) => getAnnaBuddyFirestoreData(e, true)).toList() ?? [];
