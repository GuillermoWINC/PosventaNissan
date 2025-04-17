import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssignmentsRecord extends FirestoreRecord {
  AssignmentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "task_name" field.
  String? _taskName;
  String get taskName => _taskName ?? '';
  bool hasTaskName() => _taskName != null;

  // "task_description" field.
  String? _taskDescription;
  String get taskDescription => _taskDescription ?? '';
  bool hasTaskDescription() => _taskDescription != null;

  // "task_category" field.
  String? _taskCategory;
  String get taskCategory => _taskCategory ?? '';
  bool hasTaskCategory() => _taskCategory != null;

  // "task_type" field.
  List<String>? _taskType;
  List<String> get taskType => _taskType ?? const [];
  bool hasTaskType() => _taskType != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  // "order_estatus" field.
  int? _orderEstatus;
  int get orderEstatus => _orderEstatus ?? 0;
  bool hasOrderEstatus() => _orderEstatus != null;

  // "reset" field.
  int? _reset;
  int get reset => _reset ?? 0;
  bool hasReset() => _reset != null;

  void _initializeFields() {
    _taskName = snapshotData['task_name'] as String?;
    _taskDescription = snapshotData['task_description'] as String?;
    _taskCategory = snapshotData['task_category'] as String?;
    _taskType = getDataList(snapshotData['task_type']);
    _uid = snapshotData['uid'] as String?;
    _order = castToType<int>(snapshotData['order']);
    _orderEstatus = castToType<int>(snapshotData['order_estatus']);
    _reset = castToType<int>(snapshotData['reset']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('assignments');

  static Stream<AssignmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssignmentsRecord.fromSnapshot(s));

  static Future<AssignmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssignmentsRecord.fromSnapshot(s));

  static AssignmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssignmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssignmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssignmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssignmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssignmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssignmentsRecordData({
  String? taskName,
  String? taskDescription,
  String? taskCategory,
  String? uid,
  int? order,
  int? orderEstatus,
  int? reset,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'task_name': taskName,
      'task_description': taskDescription,
      'task_category': taskCategory,
      'uid': uid,
      'order': order,
      'order_estatus': orderEstatus,
      'reset': reset,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssignmentsRecordDocumentEquality implements Equality<AssignmentsRecord> {
  const AssignmentsRecordDocumentEquality();

  @override
  bool equals(AssignmentsRecord? e1, AssignmentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.taskName == e2?.taskName &&
        e1?.taskDescription == e2?.taskDescription &&
        e1?.taskCategory == e2?.taskCategory &&
        listEquality.equals(e1?.taskType, e2?.taskType) &&
        e1?.uid == e2?.uid &&
        e1?.order == e2?.order &&
        e1?.orderEstatus == e2?.orderEstatus &&
        e1?.reset == e2?.reset;
  }

  @override
  int hash(AssignmentsRecord? e) => const ListEquality().hash([
        e?.taskName,
        e?.taskDescription,
        e?.taskCategory,
        e?.taskType,
        e?.uid,
        e?.order,
        e?.orderEstatus,
        e?.reset
      ]);

  @override
  bool isValidKey(Object? o) => o is AssignmentsRecord;
}
