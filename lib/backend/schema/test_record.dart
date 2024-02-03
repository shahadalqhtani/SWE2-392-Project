import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class TestRecord extends FirestoreRecord {
  TestRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "QUTEE" field.
  String? _qutee;
  String get qutee => _qutee ?? '';
  bool hasQutee() => _qutee != null;

  // "subj" field.
  DocumentReference? _subj;
  DocumentReference? get subj => _subj;
  bool hasSubj() => _subj != null;

  // "subjj" field.
  String? _subjj;
  String get subjj => _subjj ?? '';
  bool hasSubjj() => _subjj != null;

  // "anss" field.
  String? _anss;
  String get anss => _anss ?? '';
  bool hasAnss() => _anss != null;

  // "oo1" field.
  String? _oo1;
  String get oo1 => _oo1 ?? '';
  bool hasOo1() => _oo1 != null;

  // "oo2" field.
  String? _oo2;
  String get oo2 => _oo2 ?? '';
  bool hasOo2() => _oo2 != null;

  // "oo3" field.
  String? _oo3;
  String get oo3 => _oo3 ?? '';
  bool hasOo3() => _oo3 != null;

  void _initializeFields() {
    _qutee = snapshotData['QUTEE'] as String?;
    _subj = snapshotData['subj'] as DocumentReference?;
    _subjj = snapshotData['subjj'] as String?;
    _anss = snapshotData['anss'] as String?;
    _oo1 = snapshotData['oo1'] as String?;
    _oo2 = snapshotData['oo2'] as String?;
    _oo3 = snapshotData['oo3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TEST');

  static Stream<TestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TestRecord.fromSnapshot(s));

  static Future<TestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TestRecord.fromSnapshot(s));

  static TestRecord fromSnapshot(DocumentSnapshot snapshot) => TestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTestRecordData({
  String? qutee,
  DocumentReference? subj,
  String? subjj,
  String? anss,
  String? oo1,
  String? oo2,
  String? oo3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'QUTEE': qutee,
      'subj': subj,
      'subjj': subjj,
      'anss': anss,
      'oo1': oo1,
      'oo2': oo2,
      'oo3': oo3,
    }.withoutNulls,
  );

  return firestoreData;
}

class TestRecordDocumentEquality implements Equality<TestRecord> {
  const TestRecordDocumentEquality();

  @override
  bool equals(TestRecord? e1, TestRecord? e2) {
    return e1?.qutee == e2?.qutee &&
        e1?.subj == e2?.subj &&
        e1?.subjj == e2?.subjj &&
        e1?.anss == e2?.anss &&
        e1?.oo1 == e2?.oo1 &&
        e1?.oo2 == e2?.oo2 &&
        e1?.oo3 == e2?.oo3;
  }

  @override
  int hash(TestRecord? e) => const ListEquality()
      .hash([e?.qutee, e?.subj, e?.subjj, e?.anss, e?.oo1, e?.oo2, e?.oo3]);

  @override
  bool isValidKey(Object? o) => o is TestRecord;
}
