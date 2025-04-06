import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BulkorderProductRecord extends FirestoreRecord {
  BulkorderProductRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "p_name" field.
  String? _pName;
  String get pName => _pName ?? '';
  bool hasPName() => _pName != null;

  // "p_price" field.
  int? _pPrice;
  int get pPrice => _pPrice ?? 0;
  bool hasPPrice() => _pPrice != null;

  // "p_discount" field.
  String? _pDiscount;
  String get pDiscount => _pDiscount ?? '';
  bool hasPDiscount() => _pDiscount != null;

  // "p_description" field.
  String? _pDescription;
  String get pDescription => _pDescription ?? '';
  bool hasPDescription() => _pDescription != null;

  // "p_rating" field.
  int? _pRating;
  int get pRating => _pRating ?? 0;
  bool hasPRating() => _pRating != null;

  // "p_image" field.
  String? _pImage;
  String get pImage => _pImage ?? '';
  bool hasPImage() => _pImage != null;

  // "min_quantity" field.
  int? _minQuantity;
  int get minQuantity => _minQuantity ?? 0;
  bool hasMinQuantity() => _minQuantity != null;

  // "p_category" field.
  String? _pCategory;
  String get pCategory => _pCategory ?? '';
  bool hasPCategory() => _pCategory != null;

  // "p_availablequantity" field.
  int? _pAvailablequantity;
  int get pAvailablequantity => _pAvailablequantity ?? 0;
  bool hasPAvailablequantity() => _pAvailablequantity != null;

  // "farmerId" field.
  String? _farmerId;
  String get farmerId => _farmerId ?? '';
  bool hasFarmerId() => _farmerId != null;

  void _initializeFields() {
    _pName = snapshotData['p_name'] as String?;
    _pPrice = castToType<int>(snapshotData['p_price']);
    _pDiscount = snapshotData['p_discount'] as String?;
    _pDescription = snapshotData['p_description'] as String?;
    _pRating = castToType<int>(snapshotData['p_rating']);
    _pImage = snapshotData['p_image'] as String?;
    _minQuantity = castToType<int>(snapshotData['min_quantity']);
    _pCategory = snapshotData['p_category'] as String?;
    _pAvailablequantity = castToType<int>(snapshotData['p_availablequantity']);
    _farmerId = snapshotData['farmerId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Bulkorder_product');

  static Stream<BulkorderProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BulkorderProductRecord.fromSnapshot(s));

  static Future<BulkorderProductRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => BulkorderProductRecord.fromSnapshot(s));

  static BulkorderProductRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BulkorderProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BulkorderProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BulkorderProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BulkorderProductRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BulkorderProductRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBulkorderProductRecordData({
  String? pName,
  int? pPrice,
  String? pDiscount,
  String? pDescription,
  int? pRating,
  String? pImage,
  int? minQuantity,
  String? pCategory,
  int? pAvailablequantity,
  String? farmerId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'p_name': pName,
      'p_price': pPrice,
      'p_discount': pDiscount,
      'p_description': pDescription,
      'p_rating': pRating,
      'p_image': pImage,
      'min_quantity': minQuantity,
      'p_category': pCategory,
      'p_availablequantity': pAvailablequantity,
      'farmerId': farmerId,
    }.withoutNulls,
  );

  return firestoreData;
}

class BulkorderProductRecordDocumentEquality
    implements Equality<BulkorderProductRecord> {
  const BulkorderProductRecordDocumentEquality();

  @override
  bool equals(BulkorderProductRecord? e1, BulkorderProductRecord? e2) {
    return e1?.pName == e2?.pName &&
        e1?.pPrice == e2?.pPrice &&
        e1?.pDiscount == e2?.pDiscount &&
        e1?.pDescription == e2?.pDescription &&
        e1?.pRating == e2?.pRating &&
        e1?.pImage == e2?.pImage &&
        e1?.minQuantity == e2?.minQuantity &&
        e1?.pCategory == e2?.pCategory &&
        e1?.pAvailablequantity == e2?.pAvailablequantity &&
        e1?.farmerId == e2?.farmerId;
  }

  @override
  int hash(BulkorderProductRecord? e) => const ListEquality().hash([
        e?.pName,
        e?.pPrice,
        e?.pDiscount,
        e?.pDescription,
        e?.pRating,
        e?.pImage,
        e?.minQuantity,
        e?.pCategory,
        e?.pAvailablequantity,
        e?.farmerId
      ]);

  @override
  bool isValidKey(Object? o) => o is BulkorderProductRecord;
}
