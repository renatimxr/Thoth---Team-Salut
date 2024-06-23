import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EbooksRecord extends FirestoreRecord {
  EbooksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "bookTitle" field.
  String? _bookTitle;
  String get bookTitle => _bookTitle ?? '';
  bool hasBookTitle() => _bookTitle != null;

  // "bookURL" field.
  String? _bookURL;
  String get bookURL => _bookURL ?? '';
  bool hasBookURL() => _bookURL != null;

  void _initializeFields() {
    _bookTitle = snapshotData['bookTitle'] as String?;
    _bookURL = snapshotData['bookURL'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ebooks');

  static Stream<EbooksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EbooksRecord.fromSnapshot(s));

  static Future<EbooksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EbooksRecord.fromSnapshot(s));

  static EbooksRecord fromSnapshot(DocumentSnapshot snapshot) => EbooksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EbooksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EbooksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EbooksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EbooksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEbooksRecordData({
  String? bookTitle,
  String? bookURL,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bookTitle': bookTitle,
      'bookURL': bookURL,
    }.withoutNulls,
  );

  return firestoreData;
}

class EbooksRecordDocumentEquality implements Equality<EbooksRecord> {
  const EbooksRecordDocumentEquality();

  @override
  bool equals(EbooksRecord? e1, EbooksRecord? e2) {
    return e1?.bookTitle == e2?.bookTitle && e1?.bookURL == e2?.bookURL;
  }

  @override
  int hash(EbooksRecord? e) =>
      const ListEquality().hash([e?.bookTitle, e?.bookURL]);

  @override
  bool isValidKey(Object? o) => o is EbooksRecord;
}
