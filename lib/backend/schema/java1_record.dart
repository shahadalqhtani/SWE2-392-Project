import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class Java1Record extends FirestoreRecord {
  Java1Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "lessons" field.
  List<String>? _lessons;
  List<String> get lessons => _lessons ?? const [];
  bool hasLessons() => _lessons != null;

  // "index" field.
  List<int>? _index;
  List<int> get index => _index ?? const [];
  bool hasIndex() => _index != null;

  void _initializeFields() {
    _lessons = getDataList(snapshotData['lessons']);
    _index = getDataList(snapshotData['index']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('java1');

  static Stream<Java1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Java1Record.fromSnapshot(s));

  static Future<Java1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Java1Record.fromSnapshot(s));

  static Java1Record fromSnapshot(DocumentSnapshot snapshot) => Java1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Java1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Java1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Java1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Java1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJava1RecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class Java1RecordDocumentEquality implements Equality<Java1Record> {
  const Java1RecordDocumentEquality();

  @override
  bool equals(Java1Record? e1, Java1Record? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.lessons, e2?.lessons) &&
        listEquality.equals(e1?.index, e2?.index);
  }

  @override
  int hash(Java1Record? e) => const ListEquality().hash([e?.lessons, e?.index]);

  @override
  bool isValidKey(Object? o) => o is Java1Record;
}
