import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompaniesRecord extends FirestoreRecord {
  CompaniesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "companyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "companyLogo" field.
  String? _companyLogo;
  String get companyLogo => _companyLogo ?? '';
  bool hasCompanyLogo() => _companyLogo != null;

  // "companyDescription" field.
  String? _companyDescription;
  String get companyDescription => _companyDescription ?? '';
  bool hasCompanyDescription() => _companyDescription != null;

  void _initializeFields() {
    _companyName = snapshotData['companyName'] as String?;
    _companyLogo = snapshotData['companyLogo'] as String?;
    _companyDescription = snapshotData['companyDescription'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('companies');

  static Stream<CompaniesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompaniesRecord.fromSnapshot(s));

  static Future<CompaniesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompaniesRecord.fromSnapshot(s));

  static CompaniesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompaniesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompaniesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompaniesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompaniesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompaniesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompaniesRecordData({
  String? companyName,
  String? companyLogo,
  String? companyDescription,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'companyName': companyName,
      'companyLogo': companyLogo,
      'companyDescription': companyDescription,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompaniesRecordDocumentEquality implements Equality<CompaniesRecord> {
  const CompaniesRecordDocumentEquality();

  @override
  bool equals(CompaniesRecord? e1, CompaniesRecord? e2) {
    return e1?.companyName == e2?.companyName &&
        e1?.companyLogo == e2?.companyLogo &&
        e1?.companyDescription == e2?.companyDescription;
  }

  @override
  int hash(CompaniesRecord? e) => const ListEquality()
      .hash([e?.companyName, e?.companyLogo, e?.companyDescription]);

  @override
  bool isValidKey(Object? o) => o is CompaniesRecord;
}
