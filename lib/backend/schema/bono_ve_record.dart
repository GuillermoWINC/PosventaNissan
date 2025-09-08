import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BonoVeRecord extends FirestoreRecord {
  BonoVeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "dealer_ref" field.
  DocumentReference? _dealerRef;
  DocumentReference? get dealerRef => _dealerRef;
  bool hasDealerRef() => _dealerRef != null;

  // "aspm_ref" field.
  DocumentReference? _aspmRef;
  DocumentReference? get aspmRef => _aspmRef;
  bool hasAspmRef() => _aspmRef != null;

  // "objetivo" field.
  int? _objetivo;
  int get objetivo => _objetivo ?? 0;
  bool hasObjetivo() => _objetivo != null;

  // "venta_pnc_obj" field.
  int? _ventaPncObj;
  int get ventaPncObj => _ventaPncObj ?? 0;
  bool hasVentaPncObj() => _ventaPncObj != null;

  // "venta_pnc_competitivo" field.
  int? _ventaPncCompetitivo;
  int get ventaPncCompetitivo => _ventaPncCompetitivo ?? 0;
  bool hasVentaPncCompetitivo() => _ventaPncCompetitivo != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "periodo_q" field.
  String? _periodoQ;
  String get periodoQ => _periodoQ ?? '';
  bool hasPeriodoQ() => _periodoQ != null;

  void _initializeFields() {
    _dealerRef = snapshotData['dealer_ref'] as DocumentReference?;
    _aspmRef = snapshotData['aspm_ref'] as DocumentReference?;
    _objetivo = castToType<int>(snapshotData['objetivo']);
    _ventaPncObj = castToType<int>(snapshotData['venta_pnc_obj']);
    _ventaPncCompetitivo =
        castToType<int>(snapshotData['venta_pnc_competitivo']);
    _fecha = snapshotData['fecha'] as DateTime?;
    _periodoQ = snapshotData['periodo_q'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bono_ve');

  static Stream<BonoVeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BonoVeRecord.fromSnapshot(s));

  static Future<BonoVeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BonoVeRecord.fromSnapshot(s));

  static BonoVeRecord fromSnapshot(DocumentSnapshot snapshot) => BonoVeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BonoVeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BonoVeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BonoVeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BonoVeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBonoVeRecordData({
  DocumentReference? dealerRef,
  DocumentReference? aspmRef,
  int? objetivo,
  int? ventaPncObj,
  int? ventaPncCompetitivo,
  DateTime? fecha,
  String? periodoQ,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dealer_ref': dealerRef,
      'aspm_ref': aspmRef,
      'objetivo': objetivo,
      'venta_pnc_obj': ventaPncObj,
      'venta_pnc_competitivo': ventaPncCompetitivo,
      'fecha': fecha,
      'periodo_q': periodoQ,
    }.withoutNulls,
  );

  return firestoreData;
}

class BonoVeRecordDocumentEquality implements Equality<BonoVeRecord> {
  const BonoVeRecordDocumentEquality();

  @override
  bool equals(BonoVeRecord? e1, BonoVeRecord? e2) {
    return e1?.dealerRef == e2?.dealerRef &&
        e1?.aspmRef == e2?.aspmRef &&
        e1?.objetivo == e2?.objetivo &&
        e1?.ventaPncObj == e2?.ventaPncObj &&
        e1?.ventaPncCompetitivo == e2?.ventaPncCompetitivo &&
        e1?.fecha == e2?.fecha &&
        e1?.periodoQ == e2?.periodoQ;
  }

  @override
  int hash(BonoVeRecord? e) => const ListEquality().hash([
        e?.dealerRef,
        e?.aspmRef,
        e?.objetivo,
        e?.ventaPncObj,
        e?.ventaPncCompetitivo,
        e?.fecha,
        e?.periodoQ
      ]);

  @override
  bool isValidKey(Object? o) => o is BonoVeRecord;
}
