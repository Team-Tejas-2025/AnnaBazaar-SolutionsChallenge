import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StoreDataRecord extends FirestoreRecord {
  StoreDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _image = snapshotData['Image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('store_data');

  static Stream<StoreDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StoreDataRecord.fromSnapshot(s));

  static Future<StoreDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StoreDataRecord.fromSnapshot(s));

  static StoreDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StoreDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StoreDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StoreDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StoreDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StoreDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStoreDataRecordData({
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class StoreDataRecordDocumentEquality implements Equality<StoreDataRecord> {
  const StoreDataRecordDocumentEquality();

  @override
  bool equals(StoreDataRecord? e1, StoreDataRecord? e2) {
    return e1?.image == e2?.image;
  }

  @override
  int hash(StoreDataRecord? e) => const ListEquality().hash([e?.image]);

  @override
  bool isValidKey(Object? o) => o is StoreDataRecord;
}
