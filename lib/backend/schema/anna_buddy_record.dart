import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnnaBuddyRecord extends FirestoreRecord {
  AnnaBuddyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "conversational_id" field.
  String? _conversationalId;
  String get conversationalId => _conversationalId ?? '';
  bool hasConversationalId() => _conversationalId != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _conversationalId = snapshotData['conversational_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Anna_Buddy');

  static Stream<AnnaBuddyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnnaBuddyRecord.fromSnapshot(s));

  static Future<AnnaBuddyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnnaBuddyRecord.fromSnapshot(s));

  static AnnaBuddyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnnaBuddyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnnaBuddyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnnaBuddyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnnaBuddyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnnaBuddyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnnaBuddyRecordData({
  DocumentReference? userRef,
  String? conversationalId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'conversational_id': conversationalId,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnnaBuddyRecordDocumentEquality implements Equality<AnnaBuddyRecord> {
  const AnnaBuddyRecordDocumentEquality();

  @override
  bool equals(AnnaBuddyRecord? e1, AnnaBuddyRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.conversationalId == e2?.conversationalId;
  }

  @override
  int hash(AnnaBuddyRecord? e) =>
      const ListEquality().hash([e?.userRef, e?.conversationalId]);

  @override
  bool isValidKey(Object? o) => o is AnnaBuddyRecord;
}
