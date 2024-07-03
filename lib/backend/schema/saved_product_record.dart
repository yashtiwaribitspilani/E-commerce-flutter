import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SavedProductRecord extends FirestoreRecord {
  SavedProductRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "noOfReview" field.
  int? _noOfReview;
  int get noOfReview => _noOfReview ?? 0;
  bool hasNoOfReview() => _noOfReview != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "useref" field.
  DocumentReference? _useref;
  DocumentReference? get useref => _useref;
  bool hasUseref() => _useref != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _image = snapshotData['image'] as String?;
    _id = castToType<int>(snapshotData['id']);
    _rating = castToType<double>(snapshotData['rating']);
    _noOfReview = castToType<int>(snapshotData['noOfReview']);
    _category = snapshotData['category'] as String?;
    _useref = snapshotData['useref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('savedProduct');

  static Stream<SavedProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SavedProductRecord.fromSnapshot(s));

  static Future<SavedProductRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SavedProductRecord.fromSnapshot(s));

  static SavedProductRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SavedProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SavedProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SavedProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SavedProductRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SavedProductRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSavedProductRecordData({
  String? name,
  double? price,
  String? image,
  int? id,
  double? rating,
  int? noOfReview,
  String? category,
  DocumentReference? useref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'image': image,
      'id': id,
      'rating': rating,
      'noOfReview': noOfReview,
      'category': category,
      'useref': useref,
    }.withoutNulls,
  );

  return firestoreData;
}

class SavedProductRecordDocumentEquality
    implements Equality<SavedProductRecord> {
  const SavedProductRecordDocumentEquality();

  @override
  bool equals(SavedProductRecord? e1, SavedProductRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.image == e2?.image &&
        e1?.id == e2?.id &&
        e1?.rating == e2?.rating &&
        e1?.noOfReview == e2?.noOfReview &&
        e1?.category == e2?.category &&
        e1?.useref == e2?.useref;
  }

  @override
  int hash(SavedProductRecord? e) => const ListEquality().hash([
        e?.name,
        e?.price,
        e?.image,
        e?.id,
        e?.rating,
        e?.noOfReview,
        e?.category,
        e?.useref
      ]);

  @override
  bool isValidKey(Object? o) => o is SavedProductRecord;
}
