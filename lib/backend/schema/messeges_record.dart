import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessegesRecord extends FirestoreRecord {
  MessegesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "seen" field.
  bool? _seen;
  bool get seen => _seen ?? false;
  bool hasSeen() => _seen != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "UidofSender" field.
  DocumentReference? _uidofSender;
  DocumentReference? get uidofSender => _uidofSender;
  bool hasUidofSender() => _uidofSender != null;

  // "NameOfSender" field.
  String? _nameOfSender;
  String get nameOfSender => _nameOfSender ?? '';
  bool hasNameOfSender() => _nameOfSender != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _text = snapshotData['text'] as String?;
    _image = snapshotData['image'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _seen = snapshotData['seen'] as bool?;
    _user = snapshotData['user'] as DocumentReference?;
    _uidofSender = snapshotData['UidofSender'] as DocumentReference?;
    _nameOfSender = snapshotData['NameOfSender'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('messeges')
          : FirebaseFirestore.instance.collectionGroup('messeges');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('messeges').doc(id);

  static Stream<MessegesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MessegesRecord.fromSnapshot(s));

  static Future<MessegesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MessegesRecord.fromSnapshot(s));

  static MessegesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MessegesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MessegesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MessegesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MessegesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MessegesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMessegesRecordData({
  String? text,
  String? image,
  DateTime? timestamp,
  bool? seen,
  DocumentReference? user,
  DocumentReference? uidofSender,
  String? nameOfSender,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'text': text,
      'image': image,
      'timestamp': timestamp,
      'seen': seen,
      'user': user,
      'UidofSender': uidofSender,
      'NameOfSender': nameOfSender,
    }.withoutNulls,
  );

  return firestoreData;
}

class MessegesRecordDocumentEquality implements Equality<MessegesRecord> {
  const MessegesRecordDocumentEquality();

  @override
  bool equals(MessegesRecord? e1, MessegesRecord? e2) {
    return e1?.text == e2?.text &&
        e1?.image == e2?.image &&
        e1?.timestamp == e2?.timestamp &&
        e1?.seen == e2?.seen &&
        e1?.user == e2?.user &&
        e1?.uidofSender == e2?.uidofSender &&
        e1?.nameOfSender == e2?.nameOfSender;
  }

  @override
  int hash(MessegesRecord? e) => const ListEquality().hash([
        e?.text,
        e?.image,
        e?.timestamp,
        e?.seen,
        e?.user,
        e?.uidofSender,
        e?.nameOfSender
      ]);

  @override
  bool isValidKey(Object? o) => o is MessegesRecord;
}
