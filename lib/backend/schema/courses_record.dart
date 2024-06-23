import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoursesRecord extends FirestoreRecord {
  CoursesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "courseName" field.
  String? _courseName;
  String get courseName => _courseName ?? '';
  bool hasCourseName() => _courseName != null;

  // "courseCoverImage" field.
  String? _courseCoverImage;
  String get courseCoverImage => _courseCoverImage ?? '';
  bool hasCourseCoverImage() => _courseCoverImage != null;

  // "courseTeacher" field.
  String? _courseTeacher;
  String get courseTeacher => _courseTeacher ?? '';
  bool hasCourseTeacher() => _courseTeacher != null;

  // "courseTrail" field.
  String? _courseTrail;
  String get courseTrail => _courseTrail ?? '';
  bool hasCourseTrail() => _courseTrail != null;

  // "courseTime" field.
  String? _courseTime;
  String get courseTime => _courseTime ?? '';
  bool hasCourseTime() => _courseTime != null;

  // "courseVideoURL" field.
  String? _courseVideoURL;
  String get courseVideoURL => _courseVideoURL ?? '';
  bool hasCourseVideoURL() => _courseVideoURL != null;

  void _initializeFields() {
    _courseName = snapshotData['courseName'] as String?;
    _courseCoverImage = snapshotData['courseCoverImage'] as String?;
    _courseTeacher = snapshotData['courseTeacher'] as String?;
    _courseTrail = snapshotData['courseTrail'] as String?;
    _courseTime = snapshotData['courseTime'] as String?;
    _courseVideoURL = snapshotData['courseVideoURL'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('courses');

  static Stream<CoursesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoursesRecord.fromSnapshot(s));

  static Future<CoursesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoursesRecord.fromSnapshot(s));

  static CoursesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CoursesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoursesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoursesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoursesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoursesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoursesRecordData({
  String? courseName,
  String? courseCoverImage,
  String? courseTeacher,
  String? courseTrail,
  String? courseTime,
  String? courseVideoURL,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'courseName': courseName,
      'courseCoverImage': courseCoverImage,
      'courseTeacher': courseTeacher,
      'courseTrail': courseTrail,
      'courseTime': courseTime,
      'courseVideoURL': courseVideoURL,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoursesRecordDocumentEquality implements Equality<CoursesRecord> {
  const CoursesRecordDocumentEquality();

  @override
  bool equals(CoursesRecord? e1, CoursesRecord? e2) {
    return e1?.courseName == e2?.courseName &&
        e1?.courseCoverImage == e2?.courseCoverImage &&
        e1?.courseTeacher == e2?.courseTeacher &&
        e1?.courseTrail == e2?.courseTrail &&
        e1?.courseTime == e2?.courseTime &&
        e1?.courseVideoURL == e2?.courseVideoURL;
  }

  @override
  int hash(CoursesRecord? e) => const ListEquality().hash([
        e?.courseName,
        e?.courseCoverImage,
        e?.courseTeacher,
        e?.courseTrail,
        e?.courseTime,
        e?.courseVideoURL
      ]);

  @override
  bool isValidKey(Object? o) => o is CoursesRecord;
}
