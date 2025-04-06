import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "p_name" field.
  String? _pName;
  String get pName => _pName ?? '';
  bool hasPName() => _pName != null;

  // "p_image" field.
  String? _pImage;
  String get pImage => _pImage ?? '';
  bool hasPImage() => _pImage != null;

  // "p_price" field.
  int? _pPrice;
  int get pPrice => _pPrice ?? 0;
  bool hasPPrice() => _pPrice != null;

  // "p_rating" field.
  int? _pRating;
  int get pRating => _pRating ?? 0;
  bool hasPRating() => _pRating != null;

  // "p_description" field.
  String? _pDescription;
  String get pDescription => _pDescription ?? '';
  bool hasPDescription() => _pDescription != null;

  // "p_unit" field.
  String? _pUnit;
  String get pUnit => _pUnit ?? '';
  bool hasPUnit() => _pUnit != null;

  // "available_quantity" field.
  int? _availableQuantity;
  int get availableQuantity => _availableQuantity ?? 0;
  bool hasAvailableQuantity() => _availableQuantity != null;

  // "p_category" field.
  String? _pCategory;
  String get pCategory => _pCategory ?? '';
  bool hasPCategory() => _pCategory != null;

  // "auto_description" field.
  String? _autoDescription;
  String get autoDescription => _autoDescription ?? '';
  bool hasAutoDescription() => _autoDescription != null;

  // "Auto_name" field.
  String? _autoName;
  String get autoName => _autoName ?? '';
  bool hasAutoName() => _autoName != null;

  // "p_id" field.
  String? _pId;
  String get pId => _pId ?? '';
  bool hasPId() => _pId != null;

  // "farmerId" field.
  String? _farmerId;
  String get farmerId => _farmerId ?? '';
  bool hasFarmerId() => _farmerId != null;

  void _initializeFields() {
    _pName = snapshotData['p_name'] as String?;
    _pImage = snapshotData['p_image'] as String?;
    _pPrice = castToType<int>(snapshotData['p_price']);
    _pRating = castToType<int>(snapshotData['p_rating']);
    _pDescription = snapshotData['p_description'] as String?;
    _pUnit = snapshotData['p_unit'] as String?;
    _availableQuantity = castToType<int>(snapshotData['available_quantity']);
    _pCategory = snapshotData['p_category'] as String?;
    _autoDescription = snapshotData['auto_description'] as String?;
    _autoName = snapshotData['Auto_name'] as String?;
    _pId = snapshotData['p_id'] as String?;
    _farmerId = snapshotData['farmerId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? pName,
  String? pImage,
  int? pPrice,
  int? pRating,
  String? pDescription,
  String? pUnit,
  int? availableQuantity,
  String? pCategory,
  String? autoDescription,
  String? autoName,
  String? pId,
  String? farmerId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'p_name': pName,
      'p_image': pImage,
      'p_price': pPrice,
      'p_rating': pRating,
      'p_description': pDescription,
      'p_unit': pUnit,
      'available_quantity': availableQuantity,
      'p_category': pCategory,
      'auto_description': autoDescription,
      'Auto_name': autoName,
      'p_id': pId,
      'farmerId': farmerId,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    return e1?.pName == e2?.pName &&
        e1?.pImage == e2?.pImage &&
        e1?.pPrice == e2?.pPrice &&
        e1?.pRating == e2?.pRating &&
        e1?.pDescription == e2?.pDescription &&
        e1?.pUnit == e2?.pUnit &&
        e1?.availableQuantity == e2?.availableQuantity &&
        e1?.pCategory == e2?.pCategory &&
        e1?.autoDescription == e2?.autoDescription &&
        e1?.autoName == e2?.autoName &&
        e1?.pId == e2?.pId &&
        e1?.farmerId == e2?.farmerId;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.pName,
        e?.pImage,
        e?.pPrice,
        e?.pRating,
        e?.pDescription,
        e?.pUnit,
        e?.availableQuantity,
        e?.pCategory,
        e?.autoDescription,
        e?.autoName,
        e?.pId,
        e?.farmerId
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
