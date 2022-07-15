// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GroupsRecord> _$groupsRecordSerializer =
    new _$GroupsRecordSerializer();

class _$GroupsRecordSerializer implements StructuredSerializer<GroupsRecord> {
  @override
  final Iterable<Type> types = const [GroupsRecord, _$GroupsRecord];
  @override
  final String wireName = 'GroupsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, GroupsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.like;
    if (value != null) {
      result
        ..add('like')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  GroupsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GroupsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'like':
          result.like = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$GroupsRecord extends GroupsRecord {
  @override
  final String? date;
  @override
  final String? description;
  @override
  final String? name;
  @override
  final String? title;
  @override
  final bool? like;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GroupsRecord([void Function(GroupsRecordBuilder)? updates]) =>
      (new GroupsRecordBuilder()..update(updates)).build();

  _$GroupsRecord._(
      {this.date,
      this.description,
      this.name,
      this.title,
      this.like,
      this.ffRef})
      : super._();

  @override
  GroupsRecord rebuild(void Function(GroupsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupsRecordBuilder toBuilder() => new GroupsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupsRecord &&
        date == other.date &&
        description == other.description &&
        name == other.name &&
        title == other.title &&
        like == other.like &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, date.hashCode), description.hashCode),
                    name.hashCode),
                title.hashCode),
            like.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GroupsRecord')
          ..add('date', date)
          ..add('description', description)
          ..add('name', name)
          ..add('title', title)
          ..add('like', like)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GroupsRecordBuilder
    implements Builder<GroupsRecord, GroupsRecordBuilder> {
  _$GroupsRecord? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _like;
  bool? get like => _$this._like;
  set like(bool? like) => _$this._like = like;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GroupsRecordBuilder() {
    GroupsRecord._initializeBuilder(this);
  }

  GroupsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _description = $v.description;
      _name = $v.name;
      _title = $v.title;
      _like = $v.like;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupsRecord;
  }

  @override
  void update(void Function(GroupsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GroupsRecord build() {
    final _$result = _$v ??
        new _$GroupsRecord._(
            date: date,
            description: description,
            name: name,
            title: title,
            like: like,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
