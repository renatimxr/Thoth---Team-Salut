import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrailsRecord extends FirestoreRecord {
  TrailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "trailName" field.
  String? _trailName;
  String get trailName => _trailName ?? '';
  bool hasTrailName() => _trailName != null;

  // "trailCourses" field.
  DocumentReference? _trailCourses;
  DocumentReference? get trailCourses => _trailCourses;
  bool hasTrailCourses() => _trailCourses != null;

  // "trailCost" field.
  double? _trailCost;
  double get trailCost => _trailCost ?? 0.0;
  bool hasTrailCost() => _trailCost != null;

  void _initializeFields() {
    _trailName = snapshotData['trailName'] as String?;
    _trailCourses = snapshotData['trailCourses'] as DocumentReference?;
    _trailCost = castToType<double>(snapshotData['trailCost']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('trails');

  static Stream<TrailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrailsRecord.fromSnapshot(s));

  static Future<TrailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrailsRecord.fromSnapshot(s));

  static TrailsRecord fromSnapshot(DocumentSnapshot snapshot) => TrailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrailsRecordData({
  String? trailName,
  DocumentReference? trailCourses,
  double? trailCost,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'trailName': trailName,
      'trailCourses': trailCourses,
      'trailCost': trailCost,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrailsRecordDocumentEquality implements Equality<TrailsRecord> {
  const TrailsRecordDocumentEquality();

  @override
  bool equals(TrailsRecord? e1, TrailsRecord? e2) {
    return e1?.trailName == e2?.trailName &&
        e1?.trailCourses == e2?.trailCourses &&
        e1?.trailCost == e2?.trailCost;
  }

  @override
  int hash(TrailsRecord? e) =>
      const ListEquality().hash([e?.trailName, e?.trailCourses, e?.trailCost]);

  @override
  bool isValidKey(Object? o) => o is TrailsRecord;
}
