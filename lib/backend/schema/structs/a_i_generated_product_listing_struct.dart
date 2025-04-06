// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AIGeneratedProductListingStruct extends FFFirebaseStruct {
  AIGeneratedProductListingStruct({
    /// The generated name of the product
    String? productName,

    /// The category of the product (Fruits, Vegetables, or Grains)
    String? category,

    /// A brief description of the product (Max 300 characters)
    ///
    String? description,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _productName = productName,
        _category = category,
        _description = description,
        super(firestoreUtilData);

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;

  bool hasProductName() => _productName != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  static AIGeneratedProductListingStruct fromMap(Map<String, dynamic> data) =>
      AIGeneratedProductListingStruct(
        productName: data['product_name'] as String?,
        category: data['category'] as String?,
        description: data['description'] as String?,
      );

  static AIGeneratedProductListingStruct? maybeFromMap(dynamic data) => data
          is Map
      ? AIGeneratedProductListingStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'product_name': _productName,
        'category': _category,
        'description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product_name': serializeParam(
          _productName,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static AIGeneratedProductListingStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AIGeneratedProductListingStruct(
        productName: deserializeParam(
          data['product_name'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AIGeneratedProductListingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AIGeneratedProductListingStruct &&
        productName == other.productName &&
        category == other.category &&
        description == other.description;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([productName, category, description]);
}

AIGeneratedProductListingStruct createAIGeneratedProductListingStruct({
  String? productName,
  String? category,
  String? description,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AIGeneratedProductListingStruct(
      productName: productName,
      category: category,
      description: description,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AIGeneratedProductListingStruct? updateAIGeneratedProductListingStruct(
  AIGeneratedProductListingStruct? aIGeneratedProductListing, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    aIGeneratedProductListing
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAIGeneratedProductListingStructData(
  Map<String, dynamic> firestoreData,
  AIGeneratedProductListingStruct? aIGeneratedProductListing,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (aIGeneratedProductListing == null) {
    return;
  }
  if (aIGeneratedProductListing.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      aIGeneratedProductListing.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final aIGeneratedProductListingData =
      getAIGeneratedProductListingFirestoreData(
          aIGeneratedProductListing, forFieldValue);
  final nestedData =
      aIGeneratedProductListingData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      aIGeneratedProductListing.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAIGeneratedProductListingFirestoreData(
  AIGeneratedProductListingStruct? aIGeneratedProductListing, [
  bool forFieldValue = false,
]) {
  if (aIGeneratedProductListing == null) {
    return {};
  }
  final firestoreData = mapToFirestore(aIGeneratedProductListing.toMap());

  // Add any Firestore field values
  aIGeneratedProductListing.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAIGeneratedProductListingListFirestoreData(
  List<AIGeneratedProductListingStruct>? aIGeneratedProductListings,
) =>
    aIGeneratedProductListings
        ?.map((e) => getAIGeneratedProductListingFirestoreData(e, true))
        .toList() ??
    [];
