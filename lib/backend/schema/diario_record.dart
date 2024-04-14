import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class DiarioRecord extends FirestoreRecord {
  DiarioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Cuerpo" field.
  String? _cuerpo;
  String get cuerpo => _cuerpo ?? '';
  bool hasCuerpo() => _cuerpo != null;

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _cuerpo = snapshotData['Cuerpo'] as String?;
    _fecha = snapshotData['Fecha'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Diario')
          : FirebaseFirestore.instance.collectionGroup('Diario');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Diario').doc(id);

  static Stream<DiarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DiarioRecord.fromSnapshot(s));

  static Future<DiarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DiarioRecord.fromSnapshot(s));

  static DiarioRecord fromSnapshot(DocumentSnapshot snapshot) => DiarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DiarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DiarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DiarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DiarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDiarioRecordData({
  String? cuerpo,
  DateTime? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Cuerpo': cuerpo,
      'Fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class DiarioRecordDocumentEquality implements Equality<DiarioRecord> {
  const DiarioRecordDocumentEquality();

  @override
  bool equals(DiarioRecord? e1, DiarioRecord? e2) {
    return e1?.cuerpo == e2?.cuerpo && e1?.fecha == e2?.fecha;
  }

  @override
  int hash(DiarioRecord? e) => const ListEquality().hash([e?.cuerpo, e?.fecha]);

  @override
  bool isValidKey(Object? o) => o is DiarioRecord;
}
