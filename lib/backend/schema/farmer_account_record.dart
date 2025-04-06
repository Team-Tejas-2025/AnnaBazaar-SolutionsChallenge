import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FarmerAccountRecord extends FirestoreRecord {
  FarmerAccountRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "f_name" field.
  String? _fName;
  String get fName => _fName ?? '';
  bool hasFName() => _fName != null;

  // "f_aadhar" field.
  String? _fAadhar;
  String get fAadhar => _fAadhar ?? '';
  bool hasFAadhar() => _fAadhar != null;

  // "f_aadhar_image" field.
  String? _fAadharImage;
  String get fAadharImage => _fAadharImage ?? '';
  bool hasFAadharImage() => _fAadharImage != null;

  // "f_kissancard" field.
  String? _fKissancard;
  String get fKissancard => _fKissancard ?? '';
  bool hasFKissancard() => _fKissancard != null;

  // "f_location" field.
  LatLng? _fLocation;
  LatLng? get fLocation => _fLocation;
  bool hasFLocation() => _fLocation != null;

  // "f_address" field.
  String? _fAddress;
  String get fAddress => _fAddress ?? '';
  bool hasFAddress() => _fAddress != null;

  // "f_city" field.
  String? _fCity;
  String get fCity => _fCity ?? '';
  bool hasFCity() => _fCity != null;

  // "f_pincode" field.
  String? _fPincode;
  String get fPincode => _fPincode ?? '';
  bool hasFPincode() => _fPincode != null;

  // "f_state" field.
  String? _fState;
  String get fState => _fState ?? '';
  bool hasFState() => _fState != null;

  // "f_kissancard_image" field.
  String? _fKissancardImage;
  String get fKissancardImage => _fKissancardImage ?? '';
  bool hasFKissancardImage() => _fKissancardImage != null;

  // "f_images" field.
  String? _fImages;
  String get fImages => _fImages ?? '';
  bool hasFImages() => _fImages != null;

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

  // "farm_name" field.
  String? _farmName;
  String get farmName => _farmName ?? '';
  bool hasFarmName() => _farmName != null;

  // "farm_description" field.
  String? _farmDescription;
  String get farmDescription => _farmDescription ?? '';
  bool hasFarmDescription() => _farmDescription != null;

  // "farmer_record" field.
  DocumentReference? _farmerRecord;
  DocumentReference? get farmerRecord => _farmerRecord;
  bool hasFarmerRecord() => _farmerRecord != null;

  // "ref" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  bool hasRef() => _ref != null;

  // "Buyer_side" field.
  DocumentReference? _buyerSide;
  DocumentReference? get buyerSide => _buyerSide;
  bool hasBuyerSide() => _buyerSide != null;

  // "Buyer_name" field.
  DocumentReference? _buyerName;
  DocumentReference? get buyerName => _buyerName;
  bool hasBuyerName() => _buyerName != null;

  void _initializeFields() {
    _fName = snapshotData['f_name'] as String?;
    _fAadhar = snapshotData['f_aadhar'] as String?;
    _fAadharImage = snapshotData['f_aadhar_image'] as String?;
    _fKissancard = snapshotData['f_kissancard'] as String?;
    _fLocation = snapshotData['f_location'] as LatLng?;
    _fAddress = snapshotData['f_address'] as String?;
    _fCity = snapshotData['f_city'] as String?;
    _fPincode = snapshotData['f_pincode'] as String?;
    _fState = snapshotData['f_state'] as String?;
    _fKissancardImage = snapshotData['f_kissancard_image'] as String?;
    _fImages = snapshotData['f_images'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _farmName = snapshotData['farm_name'] as String?;
    _farmDescription = snapshotData['farm_description'] as String?;
    _farmerRecord = snapshotData['farmer_record'] as DocumentReference?;
    _ref = snapshotData['ref'] as DocumentReference?;
    _buyerSide = snapshotData['Buyer_side'] as DocumentReference?;
    _buyerName = snapshotData['Buyer_name'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('farmer_account');

  static Stream<FarmerAccountRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FarmerAccountRecord.fromSnapshot(s));

  static Future<FarmerAccountRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FarmerAccountRecord.fromSnapshot(s));

  static FarmerAccountRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FarmerAccountRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FarmerAccountRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FarmerAccountRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FarmerAccountRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FarmerAccountRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFarmerAccountRecordData({
  String? fName,
  String? fAadhar,
  String? fAadharImage,
  String? fKissancard,
  LatLng? fLocation,
  String? fAddress,
  String? fCity,
  String? fPincode,
  String? fState,
  String? fKissancardImage,
  String? fImages,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? farmName,
  String? farmDescription,
  DocumentReference? farmerRecord,
  DocumentReference? ref,
  DocumentReference? buyerSide,
  DocumentReference? buyerName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'f_name': fName,
      'f_aadhar': fAadhar,
      'f_aadhar_image': fAadharImage,
      'f_kissancard': fKissancard,
      'f_location': fLocation,
      'f_address': fAddress,
      'f_city': fCity,
      'f_pincode': fPincode,
      'f_state': fState,
      'f_kissancard_image': fKissancardImage,
      'f_images': fImages,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'farm_name': farmName,
      'farm_description': farmDescription,
      'farmer_record': farmerRecord,
      'ref': ref,
      'Buyer_side': buyerSide,
      'Buyer_name': buyerName,
    }.withoutNulls,
  );

  return firestoreData;
}

class FarmerAccountRecordDocumentEquality
    implements Equality<FarmerAccountRecord> {
  const FarmerAccountRecordDocumentEquality();

  @override
  bool equals(FarmerAccountRecord? e1, FarmerAccountRecord? e2) {
    return e1?.fName == e2?.fName &&
        e1?.fAadhar == e2?.fAadhar &&
        e1?.fAadharImage == e2?.fAadharImage &&
        e1?.fKissancard == e2?.fKissancard &&
        e1?.fLocation == e2?.fLocation &&
        e1?.fAddress == e2?.fAddress &&
        e1?.fCity == e2?.fCity &&
        e1?.fPincode == e2?.fPincode &&
        e1?.fState == e2?.fState &&
        e1?.fKissancardImage == e2?.fKissancardImage &&
        e1?.fImages == e2?.fImages &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.farmName == e2?.farmName &&
        e1?.farmDescription == e2?.farmDescription &&
        e1?.farmerRecord == e2?.farmerRecord &&
        e1?.ref == e2?.ref &&
        e1?.buyerSide == e2?.buyerSide &&
        e1?.buyerName == e2?.buyerName;
  }

  @override
  int hash(FarmerAccountRecord? e) => const ListEquality().hash([
        e?.fName,
        e?.fAadhar,
        e?.fAadharImage,
        e?.fKissancard,
        e?.fLocation,
        e?.fAddress,
        e?.fCity,
        e?.fPincode,
        e?.fState,
        e?.fKissancardImage,
        e?.fImages,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.farmName,
        e?.farmDescription,
        e?.farmerRecord,
        e?.ref,
        e?.buyerSide,
        e?.buyerName
      ]);

  @override
  bool isValidKey(Object? o) => o is FarmerAccountRecord;
}
