import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _contactoNibsa = prefs.getString('ff_contactoNibsa') ?? _contactoNibsa;
    });
    _safeInit(() {
      _politicaComercialPDF =
          prefs.getString('ff_politicaComercialPDF') ?? _politicaComercialPDF;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _auditors = [];
  List<DocumentReference> get auditors => _auditors;
  set auditors(List<DocumentReference> value) {
    _auditors = value;
  }

  void addToAuditors(DocumentReference value) {
    auditors.add(value);
  }

  void removeFromAuditors(DocumentReference value) {
    auditors.remove(value);
  }

  void removeAtIndexFromAuditors(int index) {
    auditors.removeAt(index);
  }

  void updateAuditorsAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    auditors[index] = updateFn(_auditors[index]);
  }

  void insertAtIndexInAuditors(int index, DocumentReference value) {
    auditors.insert(index, value);
  }

  List<String> _auditorsManual = [
    'Auditor 1',
    'Auditor 2',
    'Auditor 3',
    'No aplica'
  ];
  List<String> get auditorsManual => _auditorsManual;
  set auditorsManual(List<String> value) {
    _auditorsManual = value;
  }

  void addToAuditorsManual(String value) {
    auditorsManual.add(value);
  }

  void removeFromAuditorsManual(String value) {
    auditorsManual.remove(value);
  }

  void removeAtIndexFromAuditorsManual(int index) {
    auditorsManual.removeAt(index);
  }

  void updateAuditorsManualAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    auditorsManual[index] = updateFn(_auditorsManual[index]);
  }

  void insertAtIndexInAuditorsManual(int index, String value) {
    auditorsManual.insert(index, value);
  }

  List<String> _aspmManual = ['ASPM 1', 'ASPM 2', 'ASPM 3', 'No aplica'];
  List<String> get aspmManual => _aspmManual;
  set aspmManual(List<String> value) {
    _aspmManual = value;
  }

  void addToAspmManual(String value) {
    aspmManual.add(value);
  }

  void removeFromAspmManual(String value) {
    aspmManual.remove(value);
  }

  void removeAtIndexFromAspmManual(int index) {
    aspmManual.removeAt(index);
  }

  void updateAspmManualAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    aspmManual[index] = updateFn(_aspmManual[index]);
  }

  void insertAtIndexInAspmManual(int index, String value) {
    aspmManual.insert(index, value);
  }

  List<DocumentReference> _tareasOro = [];
  List<DocumentReference> get tareasOro => _tareasOro;
  set tareasOro(List<DocumentReference> value) {
    _tareasOro = value;
  }

  void addToTareasOro(DocumentReference value) {
    tareasOro.add(value);
  }

  void removeFromTareasOro(DocumentReference value) {
    tareasOro.remove(value);
  }

  void removeAtIndexFromTareasOro(int index) {
    tareasOro.removeAt(index);
  }

  void updateTareasOroAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    tareasOro[index] = updateFn(_tareasOro[index]);
  }

  void insertAtIndexInTareasOro(int index, DocumentReference value) {
    tareasOro.insert(index, value);
  }

  List<DocumentReference> _tareasPlata = [];
  List<DocumentReference> get tareasPlata => _tareasPlata;
  set tareasPlata(List<DocumentReference> value) {
    _tareasPlata = value;
  }

  void addToTareasPlata(DocumentReference value) {
    tareasPlata.add(value);
  }

  void removeFromTareasPlata(DocumentReference value) {
    tareasPlata.remove(value);
  }

  void removeAtIndexFromTareasPlata(int index) {
    tareasPlata.removeAt(index);
  }

  void updateTareasPlataAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    tareasPlata[index] = updateFn(_tareasPlata[index]);
  }

  void insertAtIndexInTareasPlata(int index, DocumentReference value) {
    tareasPlata.insert(index, value);
  }

  List<DocumentReference> _tareasBronce = [];
  List<DocumentReference> get tareasBronce => _tareasBronce;
  set tareasBronce(List<DocumentReference> value) {
    _tareasBronce = value;
  }

  void addToTareasBronce(DocumentReference value) {
    tareasBronce.add(value);
  }

  void removeFromTareasBronce(DocumentReference value) {
    tareasBronce.remove(value);
  }

  void removeAtIndexFromTareasBronce(int index) {
    tareasBronce.removeAt(index);
  }

  void updateTareasBronceAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    tareasBronce[index] = updateFn(_tareasBronce[index]);
  }

  void insertAtIndexInTareasBronce(int index, DocumentReference value) {
    tareasBronce.insert(index, value);
  }

  List<DocumentReference> _tareasTodas = [];
  List<DocumentReference> get tareasTodas => _tareasTodas;
  set tareasTodas(List<DocumentReference> value) {
    _tareasTodas = value;
  }

  void addToTareasTodas(DocumentReference value) {
    tareasTodas.add(value);
  }

  void removeFromTareasTodas(DocumentReference value) {
    tareasTodas.remove(value);
  }

  void removeAtIndexFromTareasTodas(int index) {
    tareasTodas.removeAt(index);
  }

  void updateTareasTodasAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    tareasTodas[index] = updateFn(_tareasTodas[index]);
  }

  void insertAtIndexInTareasTodas(int index, DocumentReference value) {
    tareasTodas.insert(index, value);
  }

  String _contactoNibsa = '';
  String get contactoNibsa => _contactoNibsa;
  set contactoNibsa(String value) {
    _contactoNibsa = value;
    prefs.setString('ff_contactoNibsa', value);
  }

  String _politicaComercialPDF = '';
  String get politicaComercialPDF => _politicaComercialPDF;
  set politicaComercialPDF(String value) {
    _politicaComercialPDF = value;
    prefs.setString('ff_politicaComercialPDF', value);
  }

  List<String> _emailsConcesionarios = [];
  List<String> get emailsConcesionarios => _emailsConcesionarios;
  set emailsConcesionarios(List<String> value) {
    _emailsConcesionarios = value;
  }

  void addToEmailsConcesionarios(String value) {
    emailsConcesionarios.add(value);
  }

  void removeFromEmailsConcesionarios(String value) {
    emailsConcesionarios.remove(value);
  }

  void removeAtIndexFromEmailsConcesionarios(int index) {
    emailsConcesionarios.removeAt(index);
  }

  void updateEmailsConcesionariosAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    emailsConcesionarios[index] = updateFn(_emailsConcesionarios[index]);
  }

  void insertAtIndexInEmailsConcesionarios(int index, String value) {
    emailsConcesionarios.insert(index, value);
  }

  List<String> _emailTest = [
    'guillermo@winc.es',
    'Pablo.Parodi@tuvsud.com',
    'jqueiro@nissan.es',
    'guille@mac.com'
  ];
  List<String> get emailTest => _emailTest;
  set emailTest(List<String> value) {
    _emailTest = value;
  }

  void addToEmailTest(String value) {
    emailTest.add(value);
  }

  void removeFromEmailTest(String value) {
    emailTest.remove(value);
  }

  void removeAtIndexFromEmailTest(int index) {
    emailTest.removeAt(index);
  }

  void updateEmailTestAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    emailTest[index] = updateFn(_emailTest[index]);
  }

  void insertAtIndexInEmailTest(int index, String value) {
    emailTest.insert(index, value);
  }

  /// para usar cuando cambia el email del usuario
  String _emailLogin = '';
  String get emailLogin => _emailLogin;
  set emailLogin(String value) {
    _emailLogin = value;
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
