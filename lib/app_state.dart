import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
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

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _sum = await secureStorage.getDouble('ff_sum') ?? _sum;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  int _counterPrice = 0;
  int get counterPrice => _counterPrice;
  set counterPrice(int value) {
    _counterPrice = value;
  }

  double _quantityInput = 0.0;
  double get quantityInput => _quantityInput;
  set quantityInput(double value) {
    _quantityInput = value;
  }

  String _notesInput = '';
  String get notesInput => _notesInput;
  set notesInput(String value) {
    _notesInput = value;
  }

  bool _isAutoFillEnabled = false;
  bool get isAutoFillEnabled => _isAutoFillEnabled;
  set isAutoFillEnabled(bool value) {
    _isAutoFillEnabled = value;
  }

  String _uploadedImagePath = '';
  String get uploadedImagePath => _uploadedImagePath;
  set uploadedImagePath(String value) {
    _uploadedImagePath = value;
  }

  String _base64Image = '';
  String get base64Image => _base64Image;
  set base64Image(String value) {
    _base64Image = value;
  }

  String _city = '';
  String get city => _city;
  set city(String value) {
    _city = value;
  }

  String _State = '';
  String get State => _State;
  set State(String value) {
    _State = value;
  }

  String _Pincode = '';
  String get Pincode => _Pincode;
  set Pincode(String value) {
    _Pincode = value;
  }

  String _District = '';
  String get District => _District;
  set District(String value) {
    _District = value;
  }

  String _Locality = '';
  String get Locality => _Locality;
  set Locality(String value) {
    _Locality = value;
  }

  String _longaddress = '';
  String get longaddress => _longaddress;
  set longaddress(String value) {
    _longaddress = value;
  }

  int _quantity = 0;
  int get quantity => _quantity;
  set quantity(int value) {
    _quantity = value;
  }

  double _sum = 0.0;
  double get sum => _sum;
  set sum(double value) {
    _sum = value;
    secureStorage.setDouble('ff_sum', value);
  }

  void deleteSum() {
    secureStorage.delete(key: 'ff_sum');
  }
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

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
