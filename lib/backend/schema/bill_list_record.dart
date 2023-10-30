import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BillListRecord extends FirestoreRecord {
  BillListRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "notif_id" field.
  DocumentReference? _notifId;
  DocumentReference? get notifId => _notifId;
  bool hasNotifId() => _notifId != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _notifId = snapshotData['notif_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('billList');

  static Stream<BillListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BillListRecord.fromSnapshot(s));

  static Future<BillListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BillListRecord.fromSnapshot(s));

  static BillListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BillListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BillListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BillListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BillListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BillListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBillListRecordData({
  String? title,
  String? description,
  DateTime? createdTime,
  DocumentReference? notifId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'created_time': createdTime,
      'notif_id': notifId,
    }.withoutNulls,
  );

  return firestoreData;
}

class BillListRecordDocumentEquality implements Equality<BillListRecord> {
  const BillListRecordDocumentEquality();

  @override
  bool equals(BillListRecord? e1, BillListRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.createdTime == e2?.createdTime &&
        e1?.notifId == e2?.notifId;
  }

  @override
  int hash(BillListRecord? e) => const ListEquality()
      .hash([e?.title, e?.description, e?.createdTime, e?.notifId]);

  @override
  bool isValidKey(Object? o) => o is BillListRecord;
}
