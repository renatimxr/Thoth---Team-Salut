import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArticlesRecord extends FirestoreRecord {
  ArticlesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "articleTitle" field.
  String? _articleTitle;
  String get articleTitle => _articleTitle ?? '';
  bool hasArticleTitle() => _articleTitle != null;

  // "articleDate" field.
  DateTime? _articleDate;
  DateTime? get articleDate => _articleDate;
  bool hasArticleDate() => _articleDate != null;

  // "articleCoverImage" field.
  String? _articleCoverImage;
  String get articleCoverImage => _articleCoverImage ?? '';
  bool hasArticleCoverImage() => _articleCoverImage != null;

  // "articleCategory" field.
  String? _articleCategory;
  String get articleCategory => _articleCategory ?? '';
  bool hasArticleCategory() => _articleCategory != null;

  // "articleText" field.
  String? _articleText;
  String get articleText => _articleText ?? '';
  bool hasArticleText() => _articleText != null;

  void _initializeFields() {
    _articleTitle = snapshotData['articleTitle'] as String?;
    _articleDate = snapshotData['articleDate'] as DateTime?;
    _articleCoverImage = snapshotData['articleCoverImage'] as String?;
    _articleCategory = snapshotData['articleCategory'] as String?;
    _articleText = snapshotData['articleText'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('articles');

  static Stream<ArticlesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArticlesRecord.fromSnapshot(s));

  static Future<ArticlesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArticlesRecord.fromSnapshot(s));

  static ArticlesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArticlesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArticlesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArticlesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArticlesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArticlesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArticlesRecordData({
  String? articleTitle,
  DateTime? articleDate,
  String? articleCoverImage,
  String? articleCategory,
  String? articleText,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'articleTitle': articleTitle,
      'articleDate': articleDate,
      'articleCoverImage': articleCoverImage,
      'articleCategory': articleCategory,
      'articleText': articleText,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArticlesRecordDocumentEquality implements Equality<ArticlesRecord> {
  const ArticlesRecordDocumentEquality();

  @override
  bool equals(ArticlesRecord? e1, ArticlesRecord? e2) {
    return e1?.articleTitle == e2?.articleTitle &&
        e1?.articleDate == e2?.articleDate &&
        e1?.articleCoverImage == e2?.articleCoverImage &&
        e1?.articleCategory == e2?.articleCategory &&
        e1?.articleText == e2?.articleText;
  }

  @override
  int hash(ArticlesRecord? e) => const ListEquality().hash([
        e?.articleTitle,
        e?.articleDate,
        e?.articleCoverImage,
        e?.articleCategory,
        e?.articleText
      ]);

  @override
  bool isValidKey(Object? o) => o is ArticlesRecord;
}
