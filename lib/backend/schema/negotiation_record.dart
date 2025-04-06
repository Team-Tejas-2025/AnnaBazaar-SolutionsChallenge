import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NegotiationRecord extends FirestoreRecord {
  NegotiationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "buyerId" field.
  String? _buyerId;
  String get buyerId => _buyerId ?? '';
  bool hasBuyerId() => _buyerId != null;

  // "counterPrice" field.
  int? _counterPrice;
  int get counterPrice => _counterPrice ?? 0;
  bool hasCounterPrice() => _counterPrice != null;

  // "farmerId" field.
  String? _farmerId;
  String get farmerId => _farmerId ?? '';
  bool hasFarmerId() => _farmerId != null;

  // "offeredPrice" field.
  int? _offeredPrice;
  int get offeredPrice => _offeredPrice ?? 0;
  bool hasOfferedPrice() => _offeredPrice != null;

  // "productId" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "additionalNotes" field.
  String? _additionalNotes;
  String get additionalNotes => _additionalNotes ?? '';
  bool hasAdditionalNotes() => _additionalNotes != null;

  // "initialprice" field.
  int? _initialprice;
  int get initialprice => _initialprice ?? 0;
  bool hasInitialprice() => _initialprice != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _buyerId = snapshotData['buyerId'] as String?;
    _counterPrice = castToType<int>(snapshotData['counterPrice']);
    _farmerId = snapshotData['farmerId'] as String?;
    _offeredPrice = castToType<int>(snapshotData['offeredPrice']);
    _productId = snapshotData['productId'] as String?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _status = snapshotData['status'] as String?;
    _additionalNotes = snapshotData['additionalNotes'] as String?;
    _initialprice = castToType<int>(snapshotData['initialprice']);
    _img = snapshotData['img'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('negotiation');

  static Stream<NegotiationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NegotiationRecord.fromSnapshot(s));

  static Future<NegotiationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NegotiationRecord.fromSnapshot(s));

  static NegotiationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NegotiationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NegotiationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NegotiationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NegotiationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NegotiationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNegotiationRecordData({
  String? buyerId,
  int? counterPrice,
  String? farmerId,
  int? offeredPrice,
  String? productId,
  int? quantity,
  String? status,
  String? additionalNotes,
  int? initialprice,
  String? img,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'buyerId': buyerId,
      'counterPrice': counterPrice,
      'farmerId': farmerId,
      'offeredPrice': offeredPrice,
      'productId': productId,
      'quantity': quantity,
      'status': status,
      'additionalNotes': additionalNotes,
      'initialprice': initialprice,
      'img': img,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class NegotiationRecordDocumentEquality implements Equality<NegotiationRecord> {
  const NegotiationRecordDocumentEquality();

  @override
  bool equals(NegotiationRecord? e1, NegotiationRecord? e2) {
    return e1?.buyerId == e2?.buyerId &&
        e1?.counterPrice == e2?.counterPrice &&
        e1?.farmerId == e2?.farmerId &&
        e1?.offeredPrice == e2?.offeredPrice &&
        e1?.productId == e2?.productId &&
        e1?.quantity == e2?.quantity &&
        e1?.status == e2?.status &&
        e1?.additionalNotes == e2?.additionalNotes &&
        e1?.initialprice == e2?.initialprice &&
        e1?.img == e2?.img &&
        e1?.name == e2?.name;
  }

  @override
  int hash(NegotiationRecord? e) => const ListEquality().hash([
        e?.buyerId,
        e?.counterPrice,
        e?.farmerId,
        e?.offeredPrice,
        e?.productId,
        e?.quantity,
        e?.status,
        e?.additionalNotes,
        e?.initialprice,
        e?.img,
        e?.name
      ]);

  @override
  bool isValidKey(Object? o) => o is NegotiationRecord;
}
