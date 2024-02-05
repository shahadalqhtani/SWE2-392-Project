import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class GameRecord extends FirestoreRecord {
  GameRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "QUTEE" field.
  String? _qutee;
  String get qutee => _qutee ?? '';
  bool hasQutee() => _qutee != null;

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

  // "anss" field.
  String? _anss;
  String get anss => _anss ?? '';
  bool hasAnss() => _anss != null;

  void _initializeFields() {
    _qutee = snapshotData['QUTEE'] as String?;
    _oo1 = snapshotData['oo1'] as String?;
    _oo2 = snapshotData['oo2'] as String?;
    _oo3 = snapshotData['oo3'] as String?;
    _anss = snapshotData['anss'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('GAME');

  static Stream<GameRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GameRecord.fromSnapshot(s));

  static Future<GameRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GameRecord.fromSnapshot(s));

  static GameRecord fromSnapshot(DocumentSnapshot snapshot) => GameRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GameRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GameRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GameRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GameRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGameRecordData({
  String? qutee,
  String? oo1,
  String? oo2,
  String? oo3,
  String? anss,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'QUTEE': qutee,
      'oo1': oo1,
      'oo2': oo2,
      'oo3': oo3,
      'anss': anss,
    }.withoutNulls,
  );

  return firestoreData;
}

class GameRecordDocumentEquality implements Equality<GameRecord> {
  const GameRecordDocumentEquality();

  @override
  bool equals(GameRecord? e1, GameRecord? e2) {
    return e1?.qutee == e2?.qutee &&
        e1?.oo1 == e2?.oo1 &&
        e1?.oo2 == e2?.oo2 &&
        e1?.oo3 == e2?.oo3 &&
        e1?.anss == e2?.anss;
  }

  @override
  int hash(GameRecord? e) =>
      const ListEquality().hash([e?.qutee, e?.oo1, e?.oo2, e?.oo3, e?.anss]);

  @override
  bool isValidKey(Object? o) => o is GameRecord;
}
