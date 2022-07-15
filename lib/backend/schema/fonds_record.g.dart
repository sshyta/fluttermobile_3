// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fonds_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FondsRecord> _$fondsRecordSerializer = new _$FondsRecordSerializer();

class _$FondsRecordSerializer implements StructuredSerializer<FondsRecord> {
  @override
  final Iterable<Type> types = const [FondsRecord, _$FondsRecord];
  @override
  final String wireName = 'FondsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FondsRecord object,
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
    value = object.descript;
    if (value != null) {
      result
        ..add('descript')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.group;
    if (value != null) {
      result
        ..add('group')
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
    value = object.truee;
    if (value != null) {
      result
        ..add('truee')
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
  FondsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FondsRecordBuilder();

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
        case 'descript':
          result.descript = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'group':
          result.group = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'truee':
          result.truee = serializers.deserialize(value,
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

class _$FondsRecord extends FondsRecord {
  @override
  final String? date;
  @override
  final String? descript;
  @override
  final String? group;
  @override
  final String? name;
  @override
  final bool? truee;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FondsRecord([void Function(FondsRecordBuilder)? updates]) =>
      (new FondsRecordBuilder()..update(updates)).build();

  _$FondsRecord._(
      {this.date, this.descript, this.group, this.name, this.truee, this.ffRef})
      : super._();

  @override
  FondsRecord rebuild(void Function(FondsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FondsRecordBuilder toBuilder() => new FondsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FondsRecord &&
        date == other.date &&
        descript == other.descript &&
        group == other.group &&
        name == other.name &&
        truee == other.truee &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, date.hashCode), descript.hashCode),
                    group.hashCode),
                name.hashCode),
            truee.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FondsRecord')
          ..add('date', date)
          ..add('descript', descript)
          ..add('group', group)
          ..add('name', name)
          ..add('truee', truee)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FondsRecordBuilder implements Builder<FondsRecord, FondsRecordBuilder> {
  _$FondsRecord? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _descript;
  String? get descript => _$this._descript;
  set descript(String? descript) => _$this._descript = descript;

  String? _group;
  String? get group => _$this._group;
  set group(String? group) => _$this._group = group;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _truee;
  bool? get truee => _$this._truee;
  set truee(bool? truee) => _$this._truee = truee;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FondsRecordBuilder() {
    FondsRecord._initializeBuilder(this);
  }

  FondsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _descript = $v.descript;
      _group = $v.group;
      _name = $v.name;
      _truee = $v.truee;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FondsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FondsRecord;
  }

  @override
  void update(void Function(FondsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FondsRecord build() {
    final _$result = _$v ??
        new _$FondsRecord._(
            date: date,
            descript: descript,
            group: group,
            name: name,
            truee: truee,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
