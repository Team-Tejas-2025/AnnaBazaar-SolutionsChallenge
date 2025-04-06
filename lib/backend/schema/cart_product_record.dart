import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartProductRecord extends FirestoreRecord {
  CartProductRecord._(
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

  // "available_quantity" field.
  int? _availableQuantity;
  int get availableQuantity => _availableQuantity ?? 0;
  bool hasAvailableQuantity() => _availableQuantity != null;

  // "p_category" field.
  String? _pCategory;
  String get pCategory => _pCategory ?? '';
  bool hasPCategory() => _pCategory != null;

  // "p_unit" field.
  String? _pUnit;
  String get pUnit => _pUnit ?? '';
  bool hasPUnit() => _pUnit != null;

  // "quantityCounter" field.
  int? _quantityCounter;
  int get quantityCounter => _quantityCounter ?? 0;
  bool hasQuantityCounter() => _quantityCounter != null;

  // "final_price" field.
  double? _finalPrice;
  double get finalPrice => _finalPrice ?? 0.0;
  bool hasFinalPrice() => _finalPrice != null;

  void _initializeFields() {
    _pName = snapshotData['p_name'] as String?;
    _pImage = snapshotData['p_image'] as String?;
    _pPrice = castToType<int>(snapshotData['p_price']);
    _pRating = castToType<int>(snapshotData['p_rating']);
    _pDescription = snapshotData['p_description'] as String?;
    _availableQuantity = castToType<int>(snapshotData['available_quantity']);
    _pCategory = snapshotData['p_category'] as String?;
    _pUnit = snapshotData['p_unit'] as String?;
    _quantityCounter = castToType<int>(snapshotData['quantityCounter']);
    _finalPrice = castToType<double>(snapshotData['final_price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart_product');

  static Stream<CartProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartProductRecord.fromSnapshot(s));

  static Future<CartProductRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartProductRecord.fromSnapshot(s));

  static CartProductRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CartProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartProductRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartProductRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartProductRecordData({
  String? pName,
  String? pImage,
  int? pPrice,
  int? pRating,
  String? pDescription,
  int? availableQuantity,
  String? pCategory,
  String? pUnit,
  int? quantityCounter,
  double? finalPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'p_name': pName,
      'p_image': pImage,
      'p_price': pPrice,
      'p_rating': pRating,
      'p_description': pDescription,
      'available_quantity': availableQuantity,
      'p_category': pCategory,
      'p_unit': pUnit,
      'quantityCounter': quantityCounter,
      'final_price': finalPrice,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartProductRecordDocumentEquality implements Equality<CartProductRecord> {
  const CartProductRecordDocumentEquality();

  @override
  bool equals(CartProductRecord? e1, CartProductRecord? e2) {
    return e1?.pName == e2?.pName &&
        e1?.pImage == e2?.pImage &&
        e1?.pPrice == e2?.pPrice &&
        e1?.pRating == e2?.pRating &&
        e1?.pDescription == e2?.pDescription &&
        e1?.availableQuantity == e2?.availableQuantity &&
        e1?.pCategory == e2?.pCategory &&
        e1?.pUnit == e2?.pUnit &&
        e1?.quantityCounter == e2?.quantityCounter &&
        e1?.finalPrice == e2?.finalPrice;
  }

  @override
  int hash(CartProductRecord? e) => const ListEquality().hash([
        e?.pName,
        e?.pImage,
        e?.pPrice,
        e?.pRating,
        e?.pDescription,
        e?.availableQuantity,
        e?.pCategory,
        e?.pUnit,
        e?.quantityCounter,
        e?.finalPrice
      ]);

  @override
  bool isValidKey(Object? o) => o is CartProductRecord;
}
