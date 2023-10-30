import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserBillsRecord extends FirestoreRecord {
  UserBillsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "itemName" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "itemDescription" field.
  String? _itemDescription;
  String get itemDescription => _itemDescription ?? '';
  bool hasItemDescription() => _itemDescription != null;

  // "itemQuantity" field.
  int? _itemQuantity;
  int get itemQuantity => _itemQuantity ?? 0;
  bool hasItemQuantity() => _itemQuantity != null;

  // "itemPrize" field.
  double? _itemPrize;
  double get itemPrize => _itemPrize ?? 0.0;
  bool hasItemPrize() => _itemPrize != null;

  // "current_time" field.
  DateTime? _currentTime;
  DateTime? get currentTime => _currentTime;
  bool hasCurrentTime() => _currentTime != null;

  void _initializeFields() {
    _itemName = snapshotData['itemName'] as String?;
    _itemDescription = snapshotData['itemDescription'] as String?;
    _itemQuantity = castToType<int>(snapshotData['itemQuantity']);
    _itemPrize = castToType<double>(snapshotData['itemPrize']);
    _currentTime = snapshotData['current_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userBills');

  static Stream<UserBillsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserBillsRecord.fromSnapshot(s));

  static Future<UserBillsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserBillsRecord.fromSnapshot(s));

  static UserBillsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserBillsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserBillsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserBillsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserBillsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserBillsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserBillsRecordData({
  String? itemName,
  String? itemDescription,
  int? itemQuantity,
  double? itemPrize,
  DateTime? currentTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'itemName': itemName,
      'itemDescription': itemDescription,
      'itemQuantity': itemQuantity,
      'itemPrize': itemPrize,
      'current_time': currentTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserBillsRecordDocumentEquality implements Equality<UserBillsRecord> {
  const UserBillsRecordDocumentEquality();

  @override
  bool equals(UserBillsRecord? e1, UserBillsRecord? e2) {
    return e1?.itemName == e2?.itemName &&
        e1?.itemDescription == e2?.itemDescription &&
        e1?.itemQuantity == e2?.itemQuantity &&
        e1?.itemPrize == e2?.itemPrize &&
        e1?.currentTime == e2?.currentTime;
  }

  @override
  int hash(UserBillsRecord? e) => const ListEquality().hash([
        e?.itemName,
        e?.itemDescription,
        e?.itemQuantity,
        e?.itemPrize,
        e?.currentTime
      ]);

  @override
  bool isValidKey(Object? o) => o is UserBillsRecord;
}
