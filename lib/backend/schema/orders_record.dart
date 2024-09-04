import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "order_amount" field.
  double? _orderAmount;
  double get orderAmount => _orderAmount ?? 0.0;
  bool hasOrderAmount() => _orderAmount != null;

  // "customer_name" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  bool hasCustomerName() => _customerName != null;

  // "customer_contact" field.
  String? _customerContact;
  String get customerContact => _customerContact ?? '';
  bool hasCustomerContact() => _customerContact != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "account" field.
  String? _account;
  String get account => _account ?? '';
  bool hasAccount() => _account != null;

  void _initializeFields() {
    _orderAmount = castToType<double>(snapshotData['order_amount']);
    _customerName = snapshotData['customer_name'] as String?;
    _customerContact = snapshotData['customer_contact'] as String?;
    _type = snapshotData['type'] as String?;
    _status = snapshotData['status'] as String?;
    _account = snapshotData['account'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  double? orderAmount,
  String? customerName,
  String? customerContact,
  String? type,
  String? status,
  String? account,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'order_amount': orderAmount,
      'customer_name': customerName,
      'customer_contact': customerContact,
      'type': type,
      'status': status,
      'account': account,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    return e1?.orderAmount == e2?.orderAmount &&
        e1?.customerName == e2?.customerName &&
        e1?.customerContact == e2?.customerContact &&
        e1?.type == e2?.type &&
        e1?.status == e2?.status &&
        e1?.account == e2?.account;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.orderAmount,
        e?.customerName,
        e?.customerContact,
        e?.type,
        e?.status,
        e?.account
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
