import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'groups_record.g.dart';

abstract class GroupsRecord
    implements Built<GroupsRecord, GroupsRecordBuilder> {
  static Serializer<GroupsRecord> get serializer => _$groupsRecordSerializer;

  String? get date;

  String? get description;

  String? get name;

  String? get title;

  bool? get like;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GroupsRecordBuilder builder) => builder
    ..date = ''
    ..description = ''
    ..name = ''
    ..title = ''
    ..like = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('groups');

  static Stream<GroupsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GroupsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GroupsRecord._();
  factory GroupsRecord([void Function(GroupsRecordBuilder) updates]) =
      _$GroupsRecord;

  static GroupsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGroupsRecordData({
  String? date,
  String? description,
  String? name,
  String? title,
  bool? like,
}) =>
    serializers.toFirestore(
        GroupsRecord.serializer,
        GroupsRecord((g) => g
          ..date = date
          ..description = description
          ..name = name
          ..title = title
          ..like = like));
