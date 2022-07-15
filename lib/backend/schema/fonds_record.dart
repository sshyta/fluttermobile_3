import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'fonds_record.g.dart';

abstract class FondsRecord implements Built<FondsRecord, FondsRecordBuilder> {
  static Serializer<FondsRecord> get serializer => _$fondsRecordSerializer;

  String? get date;

  String? get descript;

  String? get group;

  String? get name;

  bool? get truee;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FondsRecordBuilder builder) => builder
    ..date = ''
    ..descript = ''
    ..group = ''
    ..name = ''
    ..truee = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fonds');

  static Stream<FondsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FondsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FondsRecord._();
  factory FondsRecord([void Function(FondsRecordBuilder) updates]) =
      _$FondsRecord;

  static FondsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFondsRecordData({
  String? date,
  String? descript,
  String? group,
  String? name,
  bool? truee,
}) =>
    serializers.toFirestore(
        FondsRecord.serializer,
        FondsRecord((f) => f
          ..date = date
          ..descript = descript
          ..group = group
          ..name = name
          ..truee = truee));
