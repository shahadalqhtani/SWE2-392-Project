import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AssignmentsRecord extends FirestoreRecord {
  AssignmentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Assignments" field.
  String? _assignments;
  String get assignments => _assignments ?? '';
  bool hasAssignments() => _assignments != null;

  // "Assignimg" field.
  String? _assignimg;
  String get assignimg => _assignimg ?? '';
  bool hasAssignimg() => _assignimg != null;

  // "subbbjects" field.
  DocumentReference? _subbbjects;
  DocumentReference? get subbbjects => _subbbjects;
  bool hasSubbbjects() => _subbbjects != null;

  // "subjnam" field.
  String? _subjnam;
  String get subjnam => _subjnam ?? '';
  bool hasSubjnam() => _subjnam != null;

  void _initializeFields() {
    _assignments = snapshotData['Assignments'] as String?;
    _assignimg = snapshotData['Assignimg'] as String?;
    _subbbjects = snapshotData['subbbjects'] as DocumentReference?;
    _subjnam = snapshotData['subjnam'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Assignments');

  static Stream<AssignmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssignmentsRecord.fromSnapshot(s));

  static Future<AssignmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssignmentsRecord.fromSnapshot(s));

  static AssignmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssignmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssignmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssignmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssignmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssignmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssignmentsRecordData({
  String? assignments,
  String? assignimg,
  DocumentReference? subbbjects,
  String? subjnam,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Assignments': assignments,
      'Assignimg': assignimg,
      'subbbjects': subbbjects,
      'subjnam': subjnam,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssignmentsRecordDocumentEquality implements Equality<AssignmentsRecord> {
  const AssignmentsRecordDocumentEquality();

  @override
  bool equals(AssignmentsRecord? e1, AssignmentsRecord? e2) {
    return e1?.assignments == e2?.assignments &&
        e1?.assignimg == e2?.assignimg &&
        e1?.subbbjects == e2?.subbbjects &&
        e1?.subjnam == e2?.subjnam;
  }

  @override
  int hash(AssignmentsRecord? e) => const ListEquality()
      .hash([e?.assignments, e?.assignimg, e?.subbbjects, e?.subjnam]);

  @override
  bool isValidKey(Object? o) => o is AssignmentsRecord;
}
