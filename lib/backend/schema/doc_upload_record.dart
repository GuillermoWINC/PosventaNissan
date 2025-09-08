import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocUploadRecord extends FirestoreRecord {
  DocUploadRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "file_url" field.
  String? _fileUrl;
  String get fileUrl => _fileUrl ?? '';
  bool hasFileUrl() => _fileUrl != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "file_type" field.
  String? _fileType;
  String get fileType => _fileType ?? '';
  bool hasFileType() => _fileType != null;

  void _initializeFields() {
    _fileUrl = snapshotData['file_url'] as String?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
    _fileType = snapshotData['file_type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('docUpload');

  static Stream<DocUploadRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DocUploadRecord.fromSnapshot(s));

  static Future<DocUploadRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DocUploadRecord.fromSnapshot(s));

  static DocUploadRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DocUploadRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DocUploadRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DocUploadRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DocUploadRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DocUploadRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDocUploadRecordData({
  String? fileUrl,
  DateTime? updatedAt,
  String? fileType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'file_url': fileUrl,
      'updated_at': updatedAt,
      'file_type': fileType,
    }.withoutNulls,
  );

  return firestoreData;
}

class DocUploadRecordDocumentEquality implements Equality<DocUploadRecord> {
  const DocUploadRecordDocumentEquality();

  @override
  bool equals(DocUploadRecord? e1, DocUploadRecord? e2) {
    return e1?.fileUrl == e2?.fileUrl &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.fileType == e2?.fileType;
  }

  @override
  int hash(DocUploadRecord? e) =>
      const ListEquality().hash([e?.fileUrl, e?.updatedAt, e?.fileType]);

  @override
  bool isValidKey(Object? o) => o is DocUploadRecord;
}
