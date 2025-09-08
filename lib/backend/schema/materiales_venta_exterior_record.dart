import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MaterialesVentaExteriorRecord extends FirestoreRecord {
  MaterialesVentaExteriorRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "fechaSubida" field.
  DateTime? _fechaSubida;
  DateTime? get fechaSubida => _fechaSubida;
  bool hasFechaSubida() => _fechaSubida != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "urlMaterial" field.
  String? _urlMaterial;
  String get urlMaterial => _urlMaterial ?? '';
  bool hasUrlMaterial() => _urlMaterial != null;

  // "urlDescarga" field.
  String? _urlDescarga;
  String get urlDescarga => _urlDescarga ?? '';
  bool hasUrlDescarga() => _urlDescarga != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _fechaSubida = snapshotData['fechaSubida'] as DateTime?;
    _descripcion = snapshotData['descripcion'] as String?;
    _urlMaterial = snapshotData['urlMaterial'] as String?;
    _urlDescarga = snapshotData['urlDescarga'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('materialesVentaExterior');

  static Stream<MaterialesVentaExteriorRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => MaterialesVentaExteriorRecord.fromSnapshot(s));

  static Future<MaterialesVentaExteriorRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => MaterialesVentaExteriorRecord.fromSnapshot(s));

  static MaterialesVentaExteriorRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      MaterialesVentaExteriorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MaterialesVentaExteriorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MaterialesVentaExteriorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MaterialesVentaExteriorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MaterialesVentaExteriorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMaterialesVentaExteriorRecordData({
  String? titulo,
  DateTime? fechaSubida,
  String? descripcion,
  String? urlMaterial,
  String? urlDescarga,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'fechaSubida': fechaSubida,
      'descripcion': descripcion,
      'urlMaterial': urlMaterial,
      'urlDescarga': urlDescarga,
    }.withoutNulls,
  );

  return firestoreData;
}

class MaterialesVentaExteriorRecordDocumentEquality
    implements Equality<MaterialesVentaExteriorRecord> {
  const MaterialesVentaExteriorRecordDocumentEquality();

  @override
  bool equals(
      MaterialesVentaExteriorRecord? e1, MaterialesVentaExteriorRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.fechaSubida == e2?.fechaSubida &&
        e1?.descripcion == e2?.descripcion &&
        e1?.urlMaterial == e2?.urlMaterial &&
        e1?.urlDescarga == e2?.urlDescarga;
  }

  @override
  int hash(MaterialesVentaExteriorRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.fechaSubida,
        e?.descripcion,
        e?.urlMaterial,
        e?.urlDescarga
      ]);

  @override
  bool isValidKey(Object? o) => o is MaterialesVentaExteriorRecord;
}
