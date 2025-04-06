import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BuyerAccountRecord extends FirestoreRecord {
  BuyerAccountRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "buyer_name" field.
  String? _buyerName;
  String get buyerName => _buyerName ?? '';
  bool hasBuyerName() => _buyerName != null;

  // "buyer_images" field.
  String? _buyerImages;
  String get buyerImages => _buyerImages ?? '';
  bool hasBuyerImages() => _buyerImages != null;

  // "buyer_email" field.
  String? _buyerEmail;
  String get buyerEmail => _buyerEmail ?? '';
  bool hasBuyerEmail() => _buyerEmail != null;

  // "buyer_phone_number" field.
  String? _buyerPhoneNumber;
  String get buyerPhoneNumber => _buyerPhoneNumber ?? '';
  bool hasBuyerPhoneNumber() => _buyerPhoneNumber != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _buyerName = snapshotData['buyer_name'] as String?;
    _buyerImages = snapshotData['buyer_images'] as String?;
    _buyerEmail = snapshotData['buyer_email'] as String?;
    _buyerPhoneNumber = snapshotData['buyer_phone_number'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('buyer_account');

  static Stream<BuyerAccountRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BuyerAccountRecord.fromSnapshot(s));

  static Future<BuyerAccountRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BuyerAccountRecord.fromSnapshot(s));

  static BuyerAccountRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BuyerAccountRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BuyerAccountRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BuyerAccountRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BuyerAccountRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BuyerAccountRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBuyerAccountRecordData({
  String? buyerName,
  String? buyerImages,
  String? buyerEmail,
  String? buyerPhoneNumber,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'buyer_name': buyerName,
      'buyer_images': buyerImages,
      'buyer_email': buyerEmail,
      'buyer_phone_number': buyerPhoneNumber,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class BuyerAccountRecordDocumentEquality
    implements Equality<BuyerAccountRecord> {
  const BuyerAccountRecordDocumentEquality();

  @override
  bool equals(BuyerAccountRecord? e1, BuyerAccountRecord? e2) {
    return e1?.buyerName == e2?.buyerName &&
        e1?.buyerImages == e2?.buyerImages &&
        e1?.buyerEmail == e2?.buyerEmail &&
        e1?.buyerPhoneNumber == e2?.buyerPhoneNumber &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(BuyerAccountRecord? e) => const ListEquality().hash([
        e?.buyerName,
        e?.buyerImages,
        e?.buyerEmail,
        e?.buyerPhoneNumber,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is BuyerAccountRecord;
}
