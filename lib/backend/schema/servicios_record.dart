import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiciosRecord extends FirestoreRecord {
  ServiciosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreServicio" field.
  String? _nombreServicio;
  String get nombreServicio => _nombreServicio ?? '';
  bool hasNombreServicio() => _nombreServicio != null;

  // "descripcionServicio" field.
  String? _descripcionServicio;
  String get descripcionServicio => _descripcionServicio ?? '';
  bool hasDescripcionServicio() => _descripcionServicio != null;

  // "costo" field.
  double? _costo;
  double get costo => _costo ?? 0.0;
  bool hasCosto() => _costo != null;

  // "tipoServicio" field.
  String? _tipoServicio;
  String get tipoServicio => _tipoServicio ?? '';
  bool hasTipoServicio() => _tipoServicio != null;

  void _initializeFields() {
    _nombreServicio = snapshotData['nombreServicio'] as String?;
    _descripcionServicio = snapshotData['descripcionServicio'] as String?;
    _costo = castToType<double>(snapshotData['costo']);
    _tipoServicio = snapshotData['tipoServicio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Servicios');

  static Stream<ServiciosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServiciosRecord.fromSnapshot(s));

  static Future<ServiciosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServiciosRecord.fromSnapshot(s));

  static ServiciosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServiciosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServiciosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServiciosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServiciosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServiciosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServiciosRecordData({
  String? nombreServicio,
  String? descripcionServicio,
  double? costo,
  String? tipoServicio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreServicio': nombreServicio,
      'descripcionServicio': descripcionServicio,
      'costo': costo,
      'tipoServicio': tipoServicio,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServiciosRecordDocumentEquality implements Equality<ServiciosRecord> {
  const ServiciosRecordDocumentEquality();

  @override
  bool equals(ServiciosRecord? e1, ServiciosRecord? e2) {
    return e1?.nombreServicio == e2?.nombreServicio &&
        e1?.descripcionServicio == e2?.descripcionServicio &&
        e1?.costo == e2?.costo &&
        e1?.tipoServicio == e2?.tipoServicio;
  }

  @override
  int hash(ServiciosRecord? e) => const ListEquality().hash(
      [e?.nombreServicio, e?.descripcionServicio, e?.costo, e?.tipoServicio]);

  @override
  bool isValidKey(Object? o) => o is ServiciosRecord;
}
