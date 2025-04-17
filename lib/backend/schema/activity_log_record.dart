import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActivityLogRecord extends FirestoreRecord {
  ActivityLogRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "action" field.
  String? _action;
  String get action => _action ?? '';
  bool hasAction() => _action != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "auditor" field.
  String? _auditor;
  String get auditor => _auditor ?? '';
  bool hasAuditor() => _auditor != null;

  // "aspm" field.
  String? _aspm;
  String get aspm => _aspm ?? '';
  bool hasAspm() => _aspm != null;

  void _initializeFields() {
    _userID = snapshotData['userID'] as String?;
    _action = snapshotData['action'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _details = snapshotData['details'] as String?;
    _auditor = snapshotData['auditor'] as String?;
    _aspm = snapshotData['aspm'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('activityLog');

  static Stream<ActivityLogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActivityLogRecord.fromSnapshot(s));

  static Future<ActivityLogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActivityLogRecord.fromSnapshot(s));

  static ActivityLogRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActivityLogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActivityLogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActivityLogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActivityLogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActivityLogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActivityLogRecordData({
  String? userID,
  String? action,
  DateTime? timestamp,
  String? details,
  String? auditor,
  String? aspm,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'action': action,
      'timestamp': timestamp,
      'details': details,
      'auditor': auditor,
      'aspm': aspm,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActivityLogRecordDocumentEquality implements Equality<ActivityLogRecord> {
  const ActivityLogRecordDocumentEquality();

  @override
  bool equals(ActivityLogRecord? e1, ActivityLogRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.action == e2?.action &&
        e1?.timestamp == e2?.timestamp &&
        e1?.details == e2?.details &&
        e1?.auditor == e2?.auditor &&
        e1?.aspm == e2?.aspm;
  }

  @override
  int hash(ActivityLogRecord? e) => const ListEquality().hash(
      [e?.userID, e?.action, e?.timestamp, e?.details, e?.auditor, e?.aspm]);

  @override
  bool isValidKey(Object? o) => o is ActivityLogRecord;
}
