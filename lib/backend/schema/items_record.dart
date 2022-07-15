import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'items_record.g.dart';

abstract class ItemsRecord implements Built<ItemsRecord, ItemsRecordBuilder> {
  static Serializer<ItemsRecord> get serializer => _$itemsRecordSerializer;

  String? get name;

  String? get type;

  String? get url;

  String? get date;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ItemsRecordBuilder builder) => builder
    ..name = ''
    ..type = ''
    ..url = ''
    ..date = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('items');

  static Stream<ItemsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ItemsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ItemsRecord._();
  factory ItemsRecord([void Function(ItemsRecordBuilder) updates]) =
      _$ItemsRecord;

  static ItemsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createItemsRecordData({
  String? name,
  String? type,
  String? url,
  String? date,
}) =>
    serializers.toFirestore(
        ItemsRecord.serializer,
        ItemsRecord((i) => i
          ..name = name
          ..type = type
          ..url = url
          ..date = date));
