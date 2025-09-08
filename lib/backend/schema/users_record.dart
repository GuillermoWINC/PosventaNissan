import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  // "assigned_users" field.
  List<DocumentReference>? _assignedUsers;
  List<DocumentReference> get assignedUsers => _assignedUsers ?? const [];
  bool hasAssignedUsers() => _assignedUsers != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "auditor" field.
  DocumentReference? _auditor;
  DocumentReference? get auditor => _auditor;
  bool hasAuditor() => _auditor != null;

  // "aspm" field.
  DocumentReference? _aspm;
  DocumentReference? get aspm => _aspm;
  bool hasAspm() => _aspm != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "group" field.
  String? _group;
  String get group => _group ?? '';
  bool hasGroup() => _group != null;

  // "dealer_code" field.
  String? _dealerCode;
  String get dealerCode => _dealerCode ?? '';
  bool hasDealerCode() => _dealerCode != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _title = snapshotData['title'] as String?;
    _company = snapshotData['company'] as String?;
    _assignedUsers = getDataList(snapshotData['assigned_users']);
    _category = snapshotData['category'] as String?;
    _auditor = snapshotData['auditor'] as DocumentReference?;
    _aspm = snapshotData['aspm'] as DocumentReference?;
    _uid = snapshotData['uid'] as String?;
    _group = snapshotData['group'] as String?;
    _dealerCode = snapshotData['dealer_code'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? role,
  String? title,
  String? company,
  String? category,
  DocumentReference? auditor,
  DocumentReference? aspm,
  String? uid,
  String? group,
  String? dealerCode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'role': role,
      'title': title,
      'company': company,
      'category': category,
      'auditor': auditor,
      'aspm': aspm,
      'uid': uid,
      'group': group,
      'dealer_code': dealerCode,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.role == e2?.role &&
        e1?.title == e2?.title &&
        e1?.company == e2?.company &&
        listEquality.equals(e1?.assignedUsers, e2?.assignedUsers) &&
        e1?.category == e2?.category &&
        e1?.auditor == e2?.auditor &&
        e1?.aspm == e2?.aspm &&
        e1?.uid == e2?.uid &&
        e1?.group == e2?.group &&
        e1?.dealerCode == e2?.dealerCode;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.role,
        e?.title,
        e?.company,
        e?.assignedUsers,
        e?.category,
        e?.auditor,
        e?.aspm,
        e?.uid,
        e?.group,
        e?.dealerCode
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
