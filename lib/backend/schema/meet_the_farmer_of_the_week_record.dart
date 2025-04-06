import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeetTheFarmerOfTheWeekRecord extends FirestoreRecord {
  MeetTheFarmerOfTheWeekRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "f_name" field.
  String? _fName;
  String get fName => _fName ?? '';
  bool hasFName() => _fName != null;

  void _initializeFields() {
    _image = snapshotData['Image'] as String?;
    _fName = snapshotData['f_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('meet_the_farmer_of_the_week');

  static Stream<MeetTheFarmerOfTheWeekRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => MeetTheFarmerOfTheWeekRecord.fromSnapshot(s));

  static Future<MeetTheFarmerOfTheWeekRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => MeetTheFarmerOfTheWeekRecord.fromSnapshot(s));

  static MeetTheFarmerOfTheWeekRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MeetTheFarmerOfTheWeekRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MeetTheFarmerOfTheWeekRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MeetTheFarmerOfTheWeekRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MeetTheFarmerOfTheWeekRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MeetTheFarmerOfTheWeekRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMeetTheFarmerOfTheWeekRecordData({
  String? image,
  String? fName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Image': image,
      'f_name': fName,
    }.withoutNulls,
  );

  return firestoreData;
}

class MeetTheFarmerOfTheWeekRecordDocumentEquality
    implements Equality<MeetTheFarmerOfTheWeekRecord> {
  const MeetTheFarmerOfTheWeekRecordDocumentEquality();

  @override
  bool equals(
      MeetTheFarmerOfTheWeekRecord? e1, MeetTheFarmerOfTheWeekRecord? e2) {
    return e1?.image == e2?.image && e1?.fName == e2?.fName;
  }

  @override
  int hash(MeetTheFarmerOfTheWeekRecord? e) =>
      const ListEquality().hash([e?.image, e?.fName]);

  @override
  bool isValidKey(Object? o) => o is MeetTheFarmerOfTheWeekRecord;
}
