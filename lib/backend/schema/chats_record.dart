import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "last_messag_time" field.
  DateTime? _lastMessagTime;
  DateTime? get lastMessagTime => _lastMessagTime;
  bool hasLastMessagTime() => _lastMessagTime != null;

  // "userids" field.
  List<DocumentReference>? _userids;
  List<DocumentReference> get userids => _userids ?? const [];
  bool hasUserids() => _userids != null;

  // "last_message" field.
  String? _lastMessage;
  String get lastMessage => _lastMessage ?? '';
  bool hasLastMessage() => _lastMessage != null;

  // "userNames" field.
  List<String>? _userNames;
  List<String> get userNames => _userNames ?? const [];
  bool hasUserNames() => _userNames != null;

  // "lastMessageSeenBy" field.
  List<DocumentReference>? _lastMessageSeenBy;
  List<DocumentReference> get lastMessageSeenBy =>
      _lastMessageSeenBy ?? const [];
  bool hasLastMessageSeenBy() => _lastMessageSeenBy != null;

  void _initializeFields() {
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _lastMessagTime = snapshotData['last_messag_time'] as DateTime?;
    _userids = getDataList(snapshotData['userids']);
    _lastMessage = snapshotData['last_message'] as String?;
    _userNames = getDataList(snapshotData['userNames']);
    _lastMessageSeenBy = getDataList(snapshotData['lastMessageSeenBy']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  DateTime? timestamp,
  DateTime? lastMessagTime,
  String? lastMessage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'timestamp': timestamp,
      'last_messag_time': lastMessagTime,
      'last_message': lastMessage,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.timestamp == e2?.timestamp &&
        e1?.lastMessagTime == e2?.lastMessagTime &&
        listEquality.equals(e1?.userids, e2?.userids) &&
        e1?.lastMessage == e2?.lastMessage &&
        listEquality.equals(e1?.userNames, e2?.userNames) &&
        listEquality.equals(e1?.lastMessageSeenBy, e2?.lastMessageSeenBy);
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash([
        e?.timestamp,
        e?.lastMessagTime,
        e?.userids,
        e?.lastMessage,
        e?.userNames,
        e?.lastMessageSeenBy
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
