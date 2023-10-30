import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserComplainRecord extends FirestoreRecord {
  UserComplainRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "pincode" field.
  double? _pincode;
  double get pincode => _pincode ?? 0.0;
  bool hasPincode() => _pincode != null;

  // "complain" field.
  String? _complain;
  String get complain => _complain ?? '';
  bool hasComplain() => _complain != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _phone = snapshotData['phone'] as String?;
    _address = snapshotData['address'] as String?;
    _city = snapshotData['city'] as String?;
    _pincode = castToType<double>(snapshotData['pincode']);
    _complain = snapshotData['complain'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userComplain');

  static Stream<UserComplainRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserComplainRecord.fromSnapshot(s));

  static Future<UserComplainRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserComplainRecord.fromSnapshot(s));

  static UserComplainRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserComplainRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserComplainRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserComplainRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserComplainRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserComplainRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserComplainRecordData({
  String? name,
  String? phone,
  String? address,
  String? city,
  double? pincode,
  String? complain,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'phone': phone,
      'address': address,
      'city': city,
      'pincode': pincode,
      'complain': complain,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserComplainRecordDocumentEquality
    implements Equality<UserComplainRecord> {
  const UserComplainRecordDocumentEquality();

  @override
  bool equals(UserComplainRecord? e1, UserComplainRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.phone == e2?.phone &&
        e1?.address == e2?.address &&
        e1?.city == e2?.city &&
        e1?.pincode == e2?.pincode &&
        e1?.complain == e2?.complain;
  }

  @override
  int hash(UserComplainRecord? e) => const ListEquality()
      .hash([e?.name, e?.phone, e?.address, e?.city, e?.pincode, e?.complain]);

  @override
  bool isValidKey(Object? o) => o is UserComplainRecord;
}
