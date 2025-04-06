import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FarmerAiRecord extends FirestoreRecord {
  FarmerAiRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "message_text" field.
  String? _messageText;
  String get messageText => _messageText ?? '';
  bool hasMessageText() => _messageText != null;

  // "sent_data_time" field.
  DateTime? _sentDataTime;
  DateTime? get sentDataTime => _sentDataTime;
  bool hasSentDataTime() => _sentDataTime != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "aiChat_ref" field.
  DocumentReference? _aiChatRef;
  DocumentReference? get aiChatRef => _aiChatRef;
  bool hasAiChatRef() => _aiChatRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _role = snapshotData['role'] as String?;
    _messageText = snapshotData['message_text'] as String?;
    _sentDataTime = snapshotData['sent_data_time'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _aiChatRef = snapshotData['aiChat_ref'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Farmer_Ai')
          : FirebaseFirestore.instance.collectionGroup('Farmer_Ai');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Farmer_Ai').doc(id);

  static Stream<FarmerAiRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FarmerAiRecord.fromSnapshot(s));

  static Future<FarmerAiRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FarmerAiRecord.fromSnapshot(s));

  static FarmerAiRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FarmerAiRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FarmerAiRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FarmerAiRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FarmerAiRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FarmerAiRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFarmerAiRecordData({
  String? role,
  String? messageText,
  DateTime? sentDataTime,
  String? image,
  DocumentReference? aiChatRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'role': role,
      'message_text': messageText,
      'sent_data_time': sentDataTime,
      'image': image,
      'aiChat_ref': aiChatRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class FarmerAiRecordDocumentEquality implements Equality<FarmerAiRecord> {
  const FarmerAiRecordDocumentEquality();

  @override
  bool equals(FarmerAiRecord? e1, FarmerAiRecord? e2) {
    return e1?.role == e2?.role &&
        e1?.messageText == e2?.messageText &&
        e1?.sentDataTime == e2?.sentDataTime &&
        e1?.image == e2?.image &&
        e1?.aiChatRef == e2?.aiChatRef;
  }

  @override
  int hash(FarmerAiRecord? e) => const ListEquality()
      .hash([e?.role, e?.messageText, e?.sentDataTime, e?.image, e?.aiChatRef]);

  @override
  bool isValidKey(Object? o) => o is FarmerAiRecord;
}
