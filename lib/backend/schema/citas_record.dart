import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CitasRecord extends FirestoreRecord {
  CitasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  DocumentReference? _id;
  DocumentReference? get id => _id;
  bool hasId() => _id != null;

  // "Cliente" field.
  String? _cliente;
  String get cliente => _cliente ?? '';
  bool hasCliente() => _cliente != null;

  // "Servicio" field.
  String? _servicio;
  String get servicio => _servicio ?? '';
  bool hasServicio() => _servicio != null;

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  void _initializeFields() {
    _id = snapshotData['id'] as DocumentReference?;
    _cliente = snapshotData['Cliente'] as String?;
    _servicio = snapshotData['Servicio'] as String?;
    _fecha = snapshotData['Fecha'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('citas');

  static Stream<CitasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CitasRecord.fromSnapshot(s));

  static Future<CitasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CitasRecord.fromSnapshot(s));

  static CitasRecord fromSnapshot(DocumentSnapshot snapshot) => CitasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CitasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CitasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CitasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CitasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCitasRecordData({
  DocumentReference? id,
  String? cliente,
  String? servicio,
  DateTime? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'Cliente': cliente,
      'Servicio': servicio,
      'Fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class CitasRecordDocumentEquality implements Equality<CitasRecord> {
  const CitasRecordDocumentEquality();

  @override
  bool equals(CitasRecord? e1, CitasRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.cliente == e2?.cliente &&
        e1?.servicio == e2?.servicio &&
        e1?.fecha == e2?.fecha;
  }

  @override
  int hash(CitasRecord? e) =>
      const ListEquality().hash([e?.id, e?.cliente, e?.servicio, e?.fecha]);

  @override
  bool isValidKey(Object? o) => o is CitasRecord;
}
