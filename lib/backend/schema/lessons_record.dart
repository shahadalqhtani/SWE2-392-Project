import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class LessonsRecord extends FirestoreRecord {
  LessonsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nameLessons" field.
  String? _nameLessons;
  String get nameLessons => _nameLessons ?? '';
  bool hasNameLessons() => _nameLessons != null;

  // "imgLessons" field.
  String? _imgLessons;
  String get imgLessons => _imgLessons ?? '';
  bool hasImgLessons() => _imgLessons != null;

  // "names" field.
  DocumentReference? _names;
  DocumentReference? get names => _names;
  bool hasNames() => _names != null;

  // "vido" field.
  String? _vido;
  String get vido => _vido ?? '';
  bool hasVido() => _vido != null;

  // "namess" field.
  String? _namess;
  String get namess => _namess ?? '';
  bool hasNamess() => _namess != null;

  // "ddddddddd" field.
  String? _ddddddddd;
  String get ddddddddd => _ddddddddd ?? '';
  bool hasDdddddddd() => _ddddddddd != null;

  void _initializeFields() {
    _nameLessons = snapshotData['nameLessons'] as String?;
    _imgLessons = snapshotData['imgLessons'] as String?;
    _names = snapshotData['names'] as DocumentReference?;
    _vido = snapshotData['vido'] as String?;
    _namess = snapshotData['namess'] as String?;
    _ddddddddd = snapshotData['ddddddddd'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Lessons');

  static Stream<LessonsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LessonsRecord.fromSnapshot(s));

  static Future<LessonsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LessonsRecord.fromSnapshot(s));

  static LessonsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LessonsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LessonsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LessonsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LessonsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LessonsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLessonsRecordData({
  String? nameLessons,
  String? imgLessons,
  DocumentReference? names,
  String? vido,
  String? namess,
  String? ddddddddd,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nameLessons': nameLessons,
      'imgLessons': imgLessons,
      'names': names,
      'vido': vido,
      'namess': namess,
      'ddddddddd': ddddddddd,
    }.withoutNulls,
  );

  return firestoreData;
}

class LessonsRecordDocumentEquality implements Equality<LessonsRecord> {
  const LessonsRecordDocumentEquality();

  @override
  bool equals(LessonsRecord? e1, LessonsRecord? e2) {
    return e1?.nameLessons == e2?.nameLessons &&
        e1?.imgLessons == e2?.imgLessons &&
        e1?.names == e2?.names &&
        e1?.vido == e2?.vido &&
        e1?.namess == e2?.namess &&
        e1?.ddddddddd == e2?.ddddddddd;
  }

  @override
  int hash(LessonsRecord? e) => const ListEquality().hash([
        e?.nameLessons,
        e?.imgLessons,
        e?.names,
        e?.vido,
        e?.namess,
        e?.ddddddddd
      ]);

  @override
  bool isValidKey(Object? o) => o is LessonsRecord;
}
