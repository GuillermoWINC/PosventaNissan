import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDoneRecord extends FirestoreRecord {
  UserDoneRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "taskID" field.
  String? _taskID;
  String get taskID => _taskID ?? '';
  bool hasTaskID() => _taskID != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "task_done" field.
  bool? _taskDone;
  bool get taskDone => _taskDone ?? false;
  bool hasTaskDone() => _taskDone != null;

  // "checkDR" field.
  bool? _checkDR;
  bool get checkDR => _checkDR ?? false;
  bool hasCheckDR() => _checkDR != null;

  // "auditResult" field.
  String? _auditResult;
  String get auditResult => _auditResult ?? '';
  bool hasAuditResult() => _auditResult != null;

  // "auditor" field.
  DocumentReference? _auditor;
  DocumentReference? get auditor => _auditor;
  bool hasAuditor() => _auditor != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "taskRef" field.
  DocumentReference? _taskRef;
  DocumentReference? get taskRef => _taskRef;
  bool hasTaskRef() => _taskRef != null;

  // "modificationDate" field.
  DateTime? _modificationDate;
  DateTime? get modificationDate => _modificationDate;
  bool hasModificationDate() => _modificationDate != null;

  // "doc1file" field.
  String? _doc1file;
  String get doc1file => _doc1file ?? '';
  bool hasDoc1file() => _doc1file != null;

  // "doc2file" field.
  String? _doc2file;
  String get doc2file => _doc2file ?? '';
  bool hasDoc2file() => _doc2file != null;

  // "doc3file" field.
  String? _doc3file;
  String get doc3file => _doc3file ?? '';
  bool hasDoc3file() => _doc3file != null;

  // "telephone" field.
  String? _telephone;
  String get telephone => _telephone ?? '';
  bool hasTelephone() => _telephone != null;

  // "whatsapp" field.
  String? _whatsapp;
  String get whatsapp => _whatsapp ?? '';
  bool hasWhatsapp() => _whatsapp != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _userID = snapshotData['userID'] as String?;
    _taskID = snapshotData['taskID'] as String?;
    _url = snapshotData['url'] as String?;
    _taskDone = snapshotData['task_done'] as bool?;
    _checkDR = snapshotData['checkDR'] as bool?;
    _auditResult = snapshotData['auditResult'] as String?;
    _auditor = snapshotData['auditor'] as DocumentReference?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _taskRef = snapshotData['taskRef'] as DocumentReference?;
    _modificationDate = snapshotData['modificationDate'] as DateTime?;
    _doc1file = snapshotData['doc1file'] as String?;
    _doc2file = snapshotData['doc2file'] as String?;
    _doc3file = snapshotData['doc3file'] as String?;
    _telephone = snapshotData['telephone'] as String?;
    _whatsapp = snapshotData['whatsapp'] as String?;
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userDone');

  static Stream<UserDoneRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserDoneRecord.fromSnapshot(s));

  static Future<UserDoneRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserDoneRecord.fromSnapshot(s));

  static UserDoneRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserDoneRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserDoneRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserDoneRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserDoneRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserDoneRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserDoneRecordData({
  String? userID,
  String? taskID,
  String? url,
  bool? taskDone,
  bool? checkDR,
  String? auditResult,
  DocumentReference? auditor,
  DocumentReference? userRef,
  DocumentReference? taskRef,
  DateTime? modificationDate,
  String? doc1file,
  String? doc2file,
  String? doc3file,
  String? telephone,
  String? whatsapp,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'taskID': taskID,
      'url': url,
      'task_done': taskDone,
      'checkDR': checkDR,
      'auditResult': auditResult,
      'auditor': auditor,
      'userRef': userRef,
      'taskRef': taskRef,
      'modificationDate': modificationDate,
      'doc1file': doc1file,
      'doc2file': doc2file,
      'doc3file': doc3file,
      'telephone': telephone,
      'whatsapp': whatsapp,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserDoneRecordDocumentEquality implements Equality<UserDoneRecord> {
  const UserDoneRecordDocumentEquality();

  @override
  bool equals(UserDoneRecord? e1, UserDoneRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.taskID == e2?.taskID &&
        e1?.url == e2?.url &&
        e1?.taskDone == e2?.taskDone &&
        e1?.checkDR == e2?.checkDR &&
        e1?.auditResult == e2?.auditResult &&
        e1?.auditor == e2?.auditor &&
        e1?.userRef == e2?.userRef &&
        e1?.taskRef == e2?.taskRef &&
        e1?.modificationDate == e2?.modificationDate &&
        e1?.doc1file == e2?.doc1file &&
        e1?.doc2file == e2?.doc2file &&
        e1?.doc3file == e2?.doc3file &&
        e1?.telephone == e2?.telephone &&
        e1?.whatsapp == e2?.whatsapp &&
        e1?.email == e2?.email;
  }

  @override
  int hash(UserDoneRecord? e) => const ListEquality().hash([
        e?.userID,
        e?.taskID,
        e?.url,
        e?.taskDone,
        e?.checkDR,
        e?.auditResult,
        e?.auditor,
        e?.userRef,
        e?.taskRef,
        e?.modificationDate,
        e?.doc1file,
        e?.doc2file,
        e?.doc3file,
        e?.telephone,
        e?.whatsapp,
        e?.email
      ]);

  @override
  bool isValidKey(Object? o) => o is UserDoneRecord;
}
