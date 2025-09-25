import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SettingsRecord extends FirestoreRecord {
  SettingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "politicaComercial" field.
  String? _politicaComercial;
  String get politicaComercial => _politicaComercial ?? '';
  bool hasPoliticaComercial() => _politicaComercial != null;

  // "contactoNissan" field.
  String? _contactoNissan;
  String get contactoNissan => _contactoNissan ?? '';
  bool hasContactoNissan() => _contactoNissan != null;

  // "rankingConcurso" field.
  String? _rankingConcurso;
  String get rankingConcurso => _rankingConcurso ?? '';
  bool hasRankingConcurso() => _rankingConcurso != null;

  void _initializeFields() {
    _politicaComercial = snapshotData['politicaComercial'] as String?;
    _contactoNissan = snapshotData['contactoNissan'] as String?;
    _rankingConcurso = snapshotData['rankingConcurso'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('settings');

  static Stream<SettingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SettingsRecord.fromSnapshot(s));

  static Future<SettingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SettingsRecord.fromSnapshot(s));

  static SettingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SettingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SettingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SettingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SettingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SettingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSettingsRecordData({
  String? politicaComercial,
  String? contactoNissan,
  String? rankingConcurso,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'politicaComercial': politicaComercial,
      'contactoNissan': contactoNissan,
      'rankingConcurso': rankingConcurso,
    }.withoutNulls,
  );

  return firestoreData;
}

class SettingsRecordDocumentEquality implements Equality<SettingsRecord> {
  const SettingsRecordDocumentEquality();

  @override
  bool equals(SettingsRecord? e1, SettingsRecord? e2) {
    return e1?.politicaComercial == e2?.politicaComercial &&
        e1?.contactoNissan == e2?.contactoNissan &&
        e1?.rankingConcurso == e2?.rankingConcurso;
  }

  @override
  int hash(SettingsRecord? e) => const ListEquality()
      .hash([e?.politicaComercial, e?.contactoNissan, e?.rankingConcurso]);

  @override
  bool isValidKey(Object? o) => o is SettingsRecord;
}
