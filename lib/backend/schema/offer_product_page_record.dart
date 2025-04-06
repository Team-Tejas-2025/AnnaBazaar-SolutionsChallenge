import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OfferProductPageRecord extends FirestoreRecord {
  OfferProductPageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "offer_image" field.
  String? _offerImage;
  String get offerImage => _offerImage ?? '';
  bool hasOfferImage() => _offerImage != null;

  void _initializeFields() {
    _offerImage = snapshotData['offer_image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('offer_product_page');

  static Stream<OfferProductPageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OfferProductPageRecord.fromSnapshot(s));

  static Future<OfferProductPageRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => OfferProductPageRecord.fromSnapshot(s));

  static OfferProductPageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OfferProductPageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OfferProductPageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OfferProductPageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OfferProductPageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OfferProductPageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOfferProductPageRecordData({
  String? offerImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'offer_image': offerImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class OfferProductPageRecordDocumentEquality
    implements Equality<OfferProductPageRecord> {
  const OfferProductPageRecordDocumentEquality();

  @override
  bool equals(OfferProductPageRecord? e1, OfferProductPageRecord? e2) {
    return e1?.offerImage == e2?.offerImage;
  }

  @override
  int hash(OfferProductPageRecord? e) =>
      const ListEquality().hash([e?.offerImage]);

  @override
  bool isValidKey(Object? o) => o is OfferProductPageRecord;
}
