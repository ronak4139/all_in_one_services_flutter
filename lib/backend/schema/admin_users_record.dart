import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdminUsersRecord extends FirestoreRecord {
  AdminUsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _password = snapshotData['password'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('adminUsers');

  static Stream<AdminUsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdminUsersRecord.fromSnapshot(s));

  static Future<AdminUsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdminUsersRecord.fromSnapshot(s));

  static AdminUsersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdminUsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdminUsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdminUsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdminUsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdminUsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdminUsersRecordData({
  String? email,
  String? password,
  String? uid,
  DateTime? createdTime,
  String? photoUrl,
  String? displayName,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'password': password,
      'uid': uid,
      'created_time': createdTime,
      'photo_url': photoUrl,
      'display_name': displayName,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdminUsersRecordDocumentEquality implements Equality<AdminUsersRecord> {
  const AdminUsersRecordDocumentEquality();

  @override
  bool equals(AdminUsersRecord? e1, AdminUsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.displayName == e2?.displayName &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(AdminUsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.password,
        e?.uid,
        e?.createdTime,
        e?.photoUrl,
        e?.displayName,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is AdminUsersRecord;
}
