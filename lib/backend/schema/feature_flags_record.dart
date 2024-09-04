import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FeatureFlagsRecord extends FirestoreRecord {
  FeatureFlagsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "alert_page" field.
  bool? _alertPage;
  bool get alertPage => _alertPage ?? false;
  bool hasAlertPage() => _alertPage != null;

  // "firebaseID" field.
  String? _firebaseID;
  String get firebaseID => _firebaseID ?? '';
  bool hasFirebaseID() => _firebaseID != null;

  void _initializeFields() {
    _alertPage = snapshotData['alert_page'] as bool?;
    _firebaseID = snapshotData['firebaseID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feature_flags');

  static Stream<FeatureFlagsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeatureFlagsRecord.fromSnapshot(s));

  static Future<FeatureFlagsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FeatureFlagsRecord.fromSnapshot(s));

  static FeatureFlagsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FeatureFlagsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeatureFlagsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeatureFlagsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeatureFlagsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeatureFlagsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeatureFlagsRecordData({
  bool? alertPage,
  String? firebaseID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'alert_page': alertPage,
      'firebaseID': firebaseID,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeatureFlagsRecordDocumentEquality
    implements Equality<FeatureFlagsRecord> {
  const FeatureFlagsRecordDocumentEquality();

  @override
  bool equals(FeatureFlagsRecord? e1, FeatureFlagsRecord? e2) {
    return e1?.alertPage == e2?.alertPage && e1?.firebaseID == e2?.firebaseID;
  }

  @override
  int hash(FeatureFlagsRecord? e) =>
      const ListEquality().hash([e?.alertPage, e?.firebaseID]);

  @override
  bool isValidKey(Object? o) => o is FeatureFlagsRecord;
}
