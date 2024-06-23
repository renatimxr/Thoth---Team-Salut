import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideosRecord extends FirestoreRecord {
  VideosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "videoTitle" field.
  String? _videoTitle;
  String get videoTitle => _videoTitle ?? '';
  bool hasVideoTitle() => _videoTitle != null;

  // "videoURL" field.
  String? _videoURL;
  String get videoURL => _videoURL ?? '';
  bool hasVideoURL() => _videoURL != null;

  void _initializeFields() {
    _videoTitle = snapshotData['videoTitle'] as String?;
    _videoURL = snapshotData['videoURL'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videos');

  static Stream<VideosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VideosRecord.fromSnapshot(s));

  static Future<VideosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VideosRecord.fromSnapshot(s));

  static VideosRecord fromSnapshot(DocumentSnapshot snapshot) => VideosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VideosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VideosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VideosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VideosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVideosRecordData({
  String? videoTitle,
  String? videoURL,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'videoTitle': videoTitle,
      'videoURL': videoURL,
    }.withoutNulls,
  );

  return firestoreData;
}

class VideosRecordDocumentEquality implements Equality<VideosRecord> {
  const VideosRecordDocumentEquality();

  @override
  bool equals(VideosRecord? e1, VideosRecord? e2) {
    return e1?.videoTitle == e2?.videoTitle && e1?.videoURL == e2?.videoURL;
  }

  @override
  int hash(VideosRecord? e) =>
      const ListEquality().hash([e?.videoTitle, e?.videoURL]);

  @override
  bool isValidKey(Object? o) => o is VideosRecord;
}
