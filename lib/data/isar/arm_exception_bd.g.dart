// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arm_exception_bd.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetArmExceptionBDCollection on Isar {
  IsarCollection<ArmExceptionBD> get armExceptionBDs => this.collection();
}

const ArmExceptionBDSchema = CollectionSchema(
  name: r'ArmExceptionBD',
  id: -190800012238254232,
  properties: {
    r'armName': PropertySchema(
      id: 0,
      name: r'armName',
      type: IsarType.string,
    )
  },
  estimateSize: _armExceptionBDEstimateSize,
  serialize: _armExceptionBDSerialize,
  deserialize: _armExceptionBDDeserialize,
  deserializeProp: _armExceptionBDDeserializeProp,
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
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _armExceptionBDGetId,
  getLinks: _armExceptionBDGetLinks,
  attach: _armExceptionBDAttach,
  version: '3.1.0+1',
);

int _armExceptionBDEstimateSize(
  ArmExceptionBD object,
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
  return bytesCount;
}

void _armExceptionBDSerialize(
  ArmExceptionBD object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.armName);
}

ArmExceptionBD _armExceptionBDDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ArmExceptionBD();
  object.armName = reader.readStringOrNull(offsets[0]);
  object.id = id;
  return object;
}

P _armExceptionBDDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _armExceptionBDGetId(ArmExceptionBD object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _armExceptionBDGetLinks(ArmExceptionBD object) {
  return [];
}

void _armExceptionBDAttach(
    IsarCollection<dynamic> col, Id id, ArmExceptionBD object) {
  object.id = id;
}

extension ArmExceptionBDByIndex on IsarCollection<ArmExceptionBD> {
  Future<ArmExceptionBD?> getByArmName(String? armName) {
    return getByIndex(r'armName', [armName]);
  }

  ArmExceptionBD? getByArmNameSync(String? armName) {
    return getByIndexSync(r'armName', [armName]);
  }

  Future<bool> deleteByArmName(String? armName) {
    return deleteByIndex(r'armName', [armName]);
  }

  bool deleteByArmNameSync(String? armName) {
    return deleteByIndexSync(r'armName', [armName]);
  }

  Future<List<ArmExceptionBD?>> getAllByArmName(List<String?> armNameValues) {
    final values = armNameValues.map((e) => [e]).toList();
    return getAllByIndex(r'armName', values);
  }

  List<ArmExceptionBD?> getAllByArmNameSync(List<String?> armNameValues) {
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

  Future<Id> putByArmName(ArmExceptionBD object) {
    return putByIndex(r'armName', object);
  }

  Id putByArmNameSync(ArmExceptionBD object, {bool saveLinks = true}) {
    return putByIndexSync(r'armName', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByArmName(List<ArmExceptionBD> objects) {
    return putAllByIndex(r'armName', objects);
  }

  List<Id> putAllByArmNameSync(List<ArmExceptionBD> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'armName', objects, saveLinks: saveLinks);
  }
}

extension ArmExceptionBDQueryWhereSort
    on QueryBuilder<ArmExceptionBD, ArmExceptionBD, QWhere> {
  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ArmExceptionBDQueryWhere
    on QueryBuilder<ArmExceptionBD, ArmExceptionBD, QWhereClause> {
  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterWhereClause> idBetween(
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

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterWhereClause>
      armNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'armName',
        value: [null],
      ));
    });
  }

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterWhereClause>
      armNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'armName',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterWhereClause>
      armNameEqualTo(String? armName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'armName',
        value: [armName],
      ));
    });
  }

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterWhereClause>
      armNameNotEqualTo(String? armName) {
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

extension ArmExceptionBDQueryFilter
    on QueryBuilder<ArmExceptionBD, ArmExceptionBD, QFilterCondition> {
  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterFilterCondition>
      armNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'armName',
      ));
    });
  }

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterFilterCondition>
      armNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'armName',
      ));
    });
  }

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterFilterCondition>
      armNameEqualTo(
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

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterFilterCondition>
      armNameGreaterThan(
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

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterFilterCondition>
      armNameLessThan(
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

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterFilterCondition>
      armNameBetween(
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

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterFilterCondition>
      armNameStartsWith(
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

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterFilterCondition>
      armNameEndsWith(
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

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterFilterCondition>
      armNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'armName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterFilterCondition>
      armNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'armName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterFilterCondition>
      armNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'armName',
        value: '',
      ));
    });
  }

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterFilterCondition>
      armNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'armName',
        value: '',
      ));
    });
  }

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterFilterCondition> idBetween(
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
}

extension ArmExceptionBDQueryObject
    on QueryBuilder<ArmExceptionBD, ArmExceptionBD, QFilterCondition> {}

extension ArmExceptionBDQueryLinks
    on QueryBuilder<ArmExceptionBD, ArmExceptionBD, QFilterCondition> {}

extension ArmExceptionBDQuerySortBy
    on QueryBuilder<ArmExceptionBD, ArmExceptionBD, QSortBy> {
  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterSortBy> sortByArmName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'armName', Sort.asc);
    });
  }

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterSortBy>
      sortByArmNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'armName', Sort.desc);
    });
  }
}

extension ArmExceptionBDQuerySortThenBy
    on QueryBuilder<ArmExceptionBD, ArmExceptionBD, QSortThenBy> {
  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterSortBy> thenByArmName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'armName', Sort.asc);
    });
  }

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterSortBy>
      thenByArmNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'armName', Sort.desc);
    });
  }

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension ArmExceptionBDQueryWhereDistinct
    on QueryBuilder<ArmExceptionBD, ArmExceptionBD, QDistinct> {
  QueryBuilder<ArmExceptionBD, ArmExceptionBD, QDistinct> distinctByArmName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'armName', caseSensitive: caseSensitive);
    });
  }
}

extension ArmExceptionBDQueryProperty
    on QueryBuilder<ArmExceptionBD, ArmExceptionBD, QQueryProperty> {
  QueryBuilder<ArmExceptionBD, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ArmExceptionBD, String?, QQueryOperations> armNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'armName');
    });
  }
}
