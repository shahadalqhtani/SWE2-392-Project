import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<DocumentReference> _cou = [];
  List<DocumentReference> get cou => _cou;
  set cou(List<DocumentReference> value) {
    _cou = value;
  }

  void addToCou(DocumentReference value) {
    _cou.add(value);
  }

  void removeFromCou(DocumentReference value) {
    _cou.remove(value);
  }

  void removeAtIndexFromCou(int index) {
    _cou.removeAt(index);
  }

  void updateCouAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _cou[index] = updateFn(_cou[index]);
  }

  void insertAtIndexInCou(int index, DocumentReference value) {
    _cou.insert(index, value);
  }

  DocumentReference? _data;
  DocumentReference? get data => _data;
  set data(DocumentReference? value) {
    _data = value;
  }

  bool _sar = false;
  bool get sar => _sar;
  set sar(bool value) {
    _sar = value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
