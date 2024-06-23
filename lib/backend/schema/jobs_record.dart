import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobsRecord extends FirestoreRecord {
  JobsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "jobName" field.
  String? _jobName;
  String get jobName => _jobName ?? '';
  bool hasJobName() => _jobName != null;

  // "jobDescription" field.
  String? _jobDescription;
  String get jobDescription => _jobDescription ?? '';
  bool hasJobDescription() => _jobDescription != null;

  // "jobPayment" field.
  double? _jobPayment;
  double get jobPayment => _jobPayment ?? 0.0;
  bool hasJobPayment() => _jobPayment != null;

  // "jobWorkTime" field.
  String? _jobWorkTime;
  String get jobWorkTime => _jobWorkTime ?? '';
  bool hasJobWorkTime() => _jobWorkTime != null;

  // "jobCompany" field.
  DocumentReference? _jobCompany;
  DocumentReference? get jobCompany => _jobCompany;
  bool hasJobCompany() => _jobCompany != null;

  void _initializeFields() {
    _jobName = snapshotData['jobName'] as String?;
    _jobDescription = snapshotData['jobDescription'] as String?;
    _jobPayment = castToType<double>(snapshotData['jobPayment']);
    _jobWorkTime = snapshotData['jobWorkTime'] as String?;
    _jobCompany = snapshotData['jobCompany'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('jobs');

  static Stream<JobsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobsRecord.fromSnapshot(s));

  static Future<JobsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobsRecord.fromSnapshot(s));

  static JobsRecord fromSnapshot(DocumentSnapshot snapshot) => JobsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobsRecordData({
  String? jobName,
  String? jobDescription,
  double? jobPayment,
  String? jobWorkTime,
  DocumentReference? jobCompany,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'jobName': jobName,
      'jobDescription': jobDescription,
      'jobPayment': jobPayment,
      'jobWorkTime': jobWorkTime,
      'jobCompany': jobCompany,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobsRecordDocumentEquality implements Equality<JobsRecord> {
  const JobsRecordDocumentEquality();

  @override
  bool equals(JobsRecord? e1, JobsRecord? e2) {
    return e1?.jobName == e2?.jobName &&
        e1?.jobDescription == e2?.jobDescription &&
        e1?.jobPayment == e2?.jobPayment &&
        e1?.jobWorkTime == e2?.jobWorkTime &&
        e1?.jobCompany == e2?.jobCompany;
  }

  @override
  int hash(JobsRecord? e) => const ListEquality().hash([
        e?.jobName,
        e?.jobDescription,
        e?.jobPayment,
        e?.jobWorkTime,
        e?.jobCompany
      ]);

  @override
  bool isValidKey(Object? o) => o is JobsRecord;
}
