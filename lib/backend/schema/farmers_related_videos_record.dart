import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FarmersRelatedVideosRecord extends FirestoreRecord {
  FarmersRelatedVideosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "crops_related_videos" field.
  String? _cropsRelatedVideos;
  String get cropsRelatedVideos => _cropsRelatedVideos ?? '';
  bool hasCropsRelatedVideos() => _cropsRelatedVideos != null;

  void _initializeFields() {
    _cropsRelatedVideos = snapshotData['crops_related_videos'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('farmers_related_videos');

  static Stream<FarmersRelatedVideosRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => FarmersRelatedVideosRecord.fromSnapshot(s));

  static Future<FarmersRelatedVideosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => FarmersRelatedVideosRecord.fromSnapshot(s));

  static FarmersRelatedVideosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FarmersRelatedVideosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FarmersRelatedVideosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FarmersRelatedVideosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FarmersRelatedVideosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FarmersRelatedVideosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFarmersRelatedVideosRecordData({
  String? cropsRelatedVideos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'crops_related_videos': cropsRelatedVideos,
    }.withoutNulls,
  );

  return firestoreData;
}

class FarmersRelatedVideosRecordDocumentEquality
    implements Equality<FarmersRelatedVideosRecord> {
  const FarmersRelatedVideosRecordDocumentEquality();

  @override
  bool equals(FarmersRelatedVideosRecord? e1, FarmersRelatedVideosRecord? e2) {
    return e1?.cropsRelatedVideos == e2?.cropsRelatedVideos;
  }

  @override
  int hash(FarmersRelatedVideosRecord? e) =>
      const ListEquality().hash([e?.cropsRelatedVideos]);

  @override
  bool isValidKey(Object? o) => o is FarmersRelatedVideosRecord;
}
