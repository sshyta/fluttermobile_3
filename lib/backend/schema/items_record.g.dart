// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItemsRecord> _$itemsRecordSerializer = new _$ItemsRecordSerializer();

class _$ItemsRecordSerializer implements StructuredSerializer<ItemsRecord> {
  @override
  final Iterable<Type> types = const [ItemsRecord, _$ItemsRecord];
  @override
  final String wireName = 'ItemsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ItemsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  ItemsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$ItemsRecord extends ItemsRecord {
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? url;
  @override
  final String? date;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ItemsRecord([void Function(ItemsRecordBuilder)? updates]) =>
      (new ItemsRecordBuilder()..update(updates)).build();

  _$ItemsRecord._({this.name, this.type, this.url, this.date, this.ffRef})
      : super._();

  @override
  ItemsRecord rebuild(void Function(ItemsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsRecordBuilder toBuilder() => new ItemsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsRecord &&
        name == other.name &&
        type == other.type &&
        url == other.url &&
        date == other.date &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, name.hashCode), type.hashCode), url.hashCode),
            date.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ItemsRecord')
          ..add('name', name)
          ..add('type', type)
          ..add('url', url)
          ..add('date', date)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ItemsRecordBuilder implements Builder<ItemsRecord, ItemsRecordBuilder> {
  _$ItemsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ItemsRecordBuilder() {
    ItemsRecord._initializeBuilder(this);
  }

  ItemsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _url = $v.url;
      _date = $v.date;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemsRecord;
  }

  @override
  void update(void Function(ItemsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ItemsRecord build() {
    final _$result = _$v ??
        new _$ItemsRecord._(
            name: name, type: type, url: url, date: date, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
