// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arm_bd.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetArmBDCollection on Isar {
  IsarCollection<ArmBD> get armBDs => this.collection();
}

const ArmBDSchema = CollectionSchema(
  name: r'ArmBD',
  id: -8924870531787968308,
  properties: {
    r'armName': PropertySchema(
      id: 0,
      name: r'armName',
      type: IsarType.string,
    ),
    r'cert': PropertySchema(
      id: 1,
      name: r'cert',
      type: IsarType.string,
    ),
    r'dateTime': PropertySchema(
      id: 2,
      name: r'dateTime',
      type: IsarType.dateTime,
    ),
    r'persons': PropertySchema(
      id: 3,
      name: r'persons',
      type: IsarType.objectList,
      target: r'PersonBD',
    )
  },
  estimateSize: _armBDEstimateSize,
  serialize: _armBDSerialize,
  deserialize: _armBDDeserialize,
  deserializeProp: _armBDDeserializeProp,
  idName: r'id',
  indexes: {
    r'armName': IndexSchema(
      id: 5592240285855011060,
      name: r'armName',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'armName',
          type: IndexType.hash,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'PersonBD': PersonBDSchema},
  getId: _armBDGetId,
  getLinks: _armBDGetLinks,
  attach: _armBDAttach,
  version: '3.1.0+1',
);

int _armBDEstimateSize(
  ArmBD object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.armName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.cert;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.persons;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[PersonBD]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += PersonBDSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _armBDSerialize(
  ArmBD object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.armName);
  writer.writeString(offsets[1], object.cert);
  writer.writeDateTime(offsets[2], object.dateTime);
  writer.writeObjectList<PersonBD>(
    offsets[3],
    allOffsets,
    PersonBDSchema.serialize,
    object.persons,
  );
}

ArmBD _armBDDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ArmBD();
  object.armName = reader.readStringOrNull(offsets[0]);
  object.cert = reader.readStringOrNull(offsets[1]);
  object.dateTime = reader.readDateTimeOrNull(offsets[2]);
  object.id = id;
  object.persons = reader.readObjectList<PersonBD>(
    offsets[3],
    PersonBDSchema.deserialize,
    allOffsets,
    PersonBD(),
  );
  return object;
}

P _armBDDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readObjectList<PersonBD>(
        offset,
        PersonBDSchema.deserialize,
        allOffsets,
        PersonBD(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _armBDGetId(ArmBD object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _armBDGetLinks(ArmBD object) {
  return [];
}

void _armBDAttach(IsarCollection<dynamic> col, Id id, ArmBD object) {
  object.id = id;
}

extension ArmBDByIndex on IsarCollection<ArmBD> {
  Future<ArmBD?> getByArmName(String? armName) {
    return getByIndex(r'armName', [armName]);
  }

  ArmBD? getByArmNameSync(String? armName) {
    return getByIndexSync(r'armName', [armName]);
  }

  Future<bool> deleteByArmName(String? armName) {
    return deleteByIndex(r'armName', [armName]);
  }

  bool deleteByArmNameSync(String? armName) {
    return deleteByIndexSync(r'armName', [armName]);
  }

  Future<List<ArmBD?>> getAllByArmName(List<String?> armNameValues) {
    final values = armNameValues.map((e) => [e]).toList();
    return getAllByIndex(r'armName', values);
  }

  List<ArmBD?> getAllByArmNameSync(List<String?> armNameValues) {
    final values = armNameValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'armName', values);
  }

  Future<int> deleteAllByArmName(List<String?> armNameValues) {
    final values = armNameValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'armName', values);
  }

  int deleteAllByArmNameSync(List<String?> armNameValues) {
    final values = armNameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'armName', values);
  }

  Future<Id> putByArmName(ArmBD object) {
    return putByIndex(r'armName', object);
  }

  Id putByArmNameSync(ArmBD object, {bool saveLinks = true}) {
    return putByIndexSync(r'armName', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByArmName(List<ArmBD> objects) {
    return putAllByIndex(r'armName', objects);
  }

  List<Id> putAllByArmNameSync(List<ArmBD> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'armName', objects, saveLinks: saveLinks);
  }
}

extension ArmBDQueryWhereSort on QueryBuilder<ArmBD, ArmBD, QWhere> {
  QueryBuilder<ArmBD, ArmBD, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ArmBDQueryWhere on QueryBuilder<ArmBD, ArmBD, QWhereClause> {
  QueryBuilder<ArmBD, ArmBD, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterWhereClause> armNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'armName',
        value: [null],
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterWhereClause> armNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'armName',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterWhereClause> armNameEqualTo(
      String? armName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'armName',
        value: [armName],
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterWhereClause> armNameNotEqualTo(
      String? armName) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'armName',
              lower: [],
              upper: [armName],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'armName',
              lower: [armName],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'armName',
              lower: [armName],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'armName',
              lower: [],
              upper: [armName],
              includeUpper: false,
            ));
      }
    });
  }
}

extension ArmBDQueryFilter on QueryBuilder<ArmBD, ArmBD, QFilterCondition> {
  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> armNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'armName',
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> armNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'armName',
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> armNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'armName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> armNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'armName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> armNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'armName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> armNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'armName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> armNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'armName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> armNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'armName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> armNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'armName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> armNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'armName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> armNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'armName',
        value: '',
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> armNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'armName',
        value: '',
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> certIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cert',
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> certIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cert',
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> certEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cert',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> certGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cert',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> certLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cert',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> certBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cert',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> certStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cert',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> certEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cert',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> certContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cert',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> certMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cert',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> certIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cert',
        value: '',
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> certIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cert',
        value: '',
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> dateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateTime',
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> dateTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateTime',
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> dateTimeEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> dateTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> dateTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> dateTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> personsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'persons',
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> personsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'persons',
      ));
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> personsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'persons',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> personsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'persons',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> personsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'persons',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> personsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'persons',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> personsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'persons',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> personsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'persons',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension ArmBDQueryObject on QueryBuilder<ArmBD, ArmBD, QFilterCondition> {
  QueryBuilder<ArmBD, ArmBD, QAfterFilterCondition> personsElement(
      FilterQuery<PersonBD> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'persons');
    });
  }
}

extension ArmBDQueryLinks on QueryBuilder<ArmBD, ArmBD, QFilterCondition> {}

extension ArmBDQuerySortBy on QueryBuilder<ArmBD, ArmBD, QSortBy> {
  QueryBuilder<ArmBD, ArmBD, QAfterSortBy> sortByArmName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'armName', Sort.asc);
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterSortBy> sortByArmNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'armName', Sort.desc);
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterSortBy> sortByCert() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cert', Sort.asc);
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterSortBy> sortByCertDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cert', Sort.desc);
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterSortBy> sortByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterSortBy> sortByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }
}

extension ArmBDQuerySortThenBy on QueryBuilder<ArmBD, ArmBD, QSortThenBy> {
  QueryBuilder<ArmBD, ArmBD, QAfterSortBy> thenByArmName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'armName', Sort.asc);
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterSortBy> thenByArmNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'armName', Sort.desc);
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterSortBy> thenByCert() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cert', Sort.asc);
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterSortBy> thenByCertDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cert', Sort.desc);
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterSortBy> thenByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterSortBy> thenByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ArmBD, ArmBD, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension ArmBDQueryWhereDistinct on QueryBuilder<ArmBD, ArmBD, QDistinct> {
  QueryBuilder<ArmBD, ArmBD, QDistinct> distinctByArmName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'armName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ArmBD, ArmBD, QDistinct> distinctByCert(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cert', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ArmBD, ArmBD, QDistinct> distinctByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateTime');
    });
  }
}

extension ArmBDQueryProperty on QueryBuilder<ArmBD, ArmBD, QQueryProperty> {
  QueryBuilder<ArmBD, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ArmBD, String?, QQueryOperations> armNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'armName');
    });
  }

  QueryBuilder<ArmBD, String?, QQueryOperations> certProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cert');
    });
  }

  QueryBuilder<ArmBD, DateTime?, QQueryOperations> dateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateTime');
    });
  }

  QueryBuilder<ArmBD, List<PersonBD>?, QQueryOperations> personsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'persons');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const PersonBDSchema = Schema(
  name: r'PersonBD',
  id: -5224556461637370905,
  properties: {
    r'fio': PropertySchema(
      id: 0,
      name: r'fio',
      type: IsarType.string,
    ),
    r'lab': PropertySchema(
      id: 1,
      name: r'lab',
      type: IsarType.string,
    )
  },
  estimateSize: _personBDEstimateSize,
  serialize: _personBDSerialize,
  deserialize: _personBDDeserialize,
  deserializeProp: _personBDDeserializeProp,
);

int _personBDEstimateSize(
  PersonBD object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.fio;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lab;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _personBDSerialize(
  PersonBD object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.fio);
  writer.writeString(offsets[1], object.lab);
}

PersonBD _personBDDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PersonBD();
  object.fio = reader.readStringOrNull(offsets[0]);
  object.lab = reader.readStringOrNull(offsets[1]);
  return object;
}

P _personBDDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension PersonBDQueryFilter
    on QueryBuilder<PersonBD, PersonBD, QFilterCondition> {
  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> fioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fio',
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> fioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fio',
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> fioEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> fioGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> fioLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> fioBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> fioStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> fioEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> fioContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> fioMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fio',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> fioIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fio',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> fioIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fio',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> labIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lab',
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> labIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lab',
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> labEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> labGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> labLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> labBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lab',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> labStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> labEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> labContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> labMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lab',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> labIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lab',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonBD, PersonBD, QAfterFilterCondition> labIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lab',
        value: '',
      ));
    });
  }
}

extension PersonBDQueryObject
    on QueryBuilder<PersonBD, PersonBD, QFilterCondition> {}
