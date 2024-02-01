import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class SubjectsRecord extends FirestoreRecord {
  SubjectsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "names" field.
  String? _names;
  String get names => _names ?? '';
  bool hasNames() => _names != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "imgees" field.
  String? _imgees;
  String get imgees => _imgees ?? '';
  bool hasImgees() => _imgees != null;

  void _initializeFields() {
    _names = snapshotData['names'] as String?;
    _description = snapshotData['description'] as String?;
    _imgees = snapshotData['imgees'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Subjects');

  static Stream<SubjectsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubjectsRecord.fromSnapshot(s));

  static Future<SubjectsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SubjectsRecord.fromSnapshot(s));

  static SubjectsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubjectsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubjectsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubjectsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubjectsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubjectsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubjectsRecordData({
  String? names,
  String? description,
  String? imgees,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'names': names,
      'description': description,
      'imgees': imgees,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubjectsRecordDocumentEquality implements Equality<SubjectsRecord> {
  const SubjectsRecordDocumentEquality();

  @override
  bool equals(SubjectsRecord? e1, SubjectsRecord? e2) {
    return e1?.names == e2?.names &&
        e1?.description == e2?.description &&
        e1?.imgees == e2?.imgees;
  }

  @override
  int hash(SubjectsRecord? e) =>
      const ListEquality().hash([e?.names, e?.description, e?.imgees]);

  @override
  bool isValidKey(Object? o) => o is SubjectsRecord;
}
