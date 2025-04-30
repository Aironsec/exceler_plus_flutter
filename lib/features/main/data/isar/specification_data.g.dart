// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specification_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSpecificationDataCollection on Isar {
  IsarCollection<SpecificationData> get specificationDatas => this.collection();
}

const SpecificationDataSchema = CollectionSchema(
  name: r'SpecificationData',
  id: 3370070900921414315,
  properties: {
    r'count': PropertySchema(
      id: 0,
      name: r'count',
      type: IsarType.int,
    ),
    r'findNameService': PropertySchema(
      id: 1,
      name: r'findNameService',
      type: IsarType.stringList,
    ),
    r'nameService': PropertySchema(
      id: 2,
      name: r'nameService',
      type: IsarType.string,
    ),
    r'priceWithNDS': PropertySchema(
      id: 3,
      name: r'priceWithNDS',
      type: IsarType.string,
    ),
    r'priceWithOutNDS': PropertySchema(
      id: 4,
      name: r'priceWithOutNDS',
      type: IsarType.float,
    )
  },
  estimateSize: _specificationDataEstimateSize,
  serialize: _specificationDataSerialize,
  deserialize: _specificationDataDeserialize,
  deserializeProp: _specificationDataDeserializeProp,
  idName: r'id',
  indexes: {
    r'nameService': IndexSchema(
      id: -1996101539004758723,
      name: r'nameService',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'nameService',
          type: IndexType.hash,
          caseSensitive: false,
        )
      ],
    ),
    r'findNameService': IndexSchema(
      id: -6813022618238909403,
      name: r'findNameService',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'findNameService',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {
    r'planeLinks': LinkSchema(
      id: -6157721805685534419,
      name: r'planeLinks',
      target: r'PlaneWorksData',
      single: false,
      linkName: r'specificationLinks',
    )
  },
  embeddedSchemas: {},
  getId: _specificationDataGetId,
  getLinks: _specificationDataGetLinks,
  attach: _specificationDataAttach,
  version: '3.1.0+1',
);

int _specificationDataEstimateSize(
  SpecificationData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.findNameService.length * 3;
  {
    for (var i = 0; i < object.findNameService.length; i++) {
      final value = object.findNameService[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.nameService.length * 3;
  bytesCount += 3 + object.priceWithNDS.length * 3;
  return bytesCount;
}

void _specificationDataSerialize(
  SpecificationData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeInt(offsets[0], object.count);
  writer.writeStringList(offsets[1], object.findNameService);
  writer.writeString(offsets[2], object.nameService);
  writer.writeString(offsets[3], object.priceWithNDS);
  writer.writeFloat(offsets[4], object.priceWithOutNDS);
}

SpecificationData _specificationDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SpecificationData();
  object.count = reader.readInt(offsets[0]);
  object.id = id;
  object.nameService = reader.readString(offsets[2]);
  object.priceWithOutNDS = reader.readFloat(offsets[4]);
  return object;
}

P _specificationDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readInt(offset)) as P;
    case 1:
      return (reader.readStringList(offset) ?? []) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readFloat(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _specificationDataGetId(SpecificationData object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _specificationDataGetLinks(
    SpecificationData object) {
  return [object.planeLinks];
}

void _specificationDataAttach(
    IsarCollection<dynamic> col, Id id, SpecificationData object) {
  object.id = id;
  object.planeLinks
      .attach(col, col.isar.collection<PlaneWorksData>(), r'planeLinks', id);
}

extension SpecificationDataByIndex on IsarCollection<SpecificationData> {
  Future<SpecificationData?> getByNameService(String nameService) {
    return getByIndex(r'nameService', [nameService]);
  }

  SpecificationData? getByNameServiceSync(String nameService) {
    return getByIndexSync(r'nameService', [nameService]);
  }

  Future<bool> deleteByNameService(String nameService) {
    return deleteByIndex(r'nameService', [nameService]);
  }

  bool deleteByNameServiceSync(String nameService) {
    return deleteByIndexSync(r'nameService', [nameService]);
  }

  Future<List<SpecificationData?>> getAllByNameService(
      List<String> nameServiceValues) {
    final values = nameServiceValues.map((e) => [e]).toList();
    return getAllByIndex(r'nameService', values);
  }

  List<SpecificationData?> getAllByNameServiceSync(
      List<String> nameServiceValues) {
    final values = nameServiceValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'nameService', values);
  }

  Future<int> deleteAllByNameService(List<String> nameServiceValues) {
    final values = nameServiceValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'nameService', values);
  }

  int deleteAllByNameServiceSync(List<String> nameServiceValues) {
    final values = nameServiceValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'nameService', values);
  }

  Future<Id> putByNameService(SpecificationData object) {
    return putByIndex(r'nameService', object);
  }

  Id putByNameServiceSync(SpecificationData object, {bool saveLinks = true}) {
    return putByIndexSync(r'nameService', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByNameService(List<SpecificationData> objects) {
    return putAllByIndex(r'nameService', objects);
  }

  List<Id> putAllByNameServiceSync(List<SpecificationData> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'nameService', objects, saveLinks: saveLinks);
  }
}

extension SpecificationDataQueryWhereSort
    on QueryBuilder<SpecificationData, SpecificationData, QWhere> {
  QueryBuilder<SpecificationData, SpecificationData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterWhere>
      anyFindNameServiceElement() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'findNameService'),
      );
    });
  }
}

extension SpecificationDataQueryWhere
    on QueryBuilder<SpecificationData, SpecificationData, QWhereClause> {
  QueryBuilder<SpecificationData, SpecificationData, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<SpecificationData, SpecificationData, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterWhereClause>
      idBetween(
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

  QueryBuilder<SpecificationData, SpecificationData, QAfterWhereClause>
      nameServiceEqualTo(String nameService) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'nameService',
        value: [nameService],
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterWhereClause>
      nameServiceNotEqualTo(String nameService) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'nameService',
              lower: [],
              upper: [nameService],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'nameService',
              lower: [nameService],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'nameService',
              lower: [nameService],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'nameService',
              lower: [],
              upper: [nameService],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterWhereClause>
      findNameServiceElementEqualTo(String findNameServiceElement) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'findNameService',
        value: [findNameServiceElement],
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterWhereClause>
      findNameServiceElementNotEqualTo(String findNameServiceElement) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'findNameService',
              lower: [],
              upper: [findNameServiceElement],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'findNameService',
              lower: [findNameServiceElement],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'findNameService',
              lower: [findNameServiceElement],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'findNameService',
              lower: [],
              upper: [findNameServiceElement],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterWhereClause>
      findNameServiceElementGreaterThan(
    String findNameServiceElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'findNameService',
        lower: [findNameServiceElement],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterWhereClause>
      findNameServiceElementLessThan(
    String findNameServiceElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'findNameService',
        lower: [],
        upper: [findNameServiceElement],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterWhereClause>
      findNameServiceElementBetween(
    String lowerFindNameServiceElement,
    String upperFindNameServiceElement, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'findNameService',
        lower: [lowerFindNameServiceElement],
        includeLower: includeLower,
        upper: [upperFindNameServiceElement],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterWhereClause>
      findNameServiceElementStartsWith(String FindNameServiceElementPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'findNameService',
        lower: [FindNameServiceElementPrefix],
        upper: ['$FindNameServiceElementPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterWhereClause>
      findNameServiceElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'findNameService',
        value: [''],
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterWhereClause>
      findNameServiceElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'findNameService',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'findNameService',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'findNameService',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'findNameService',
              upper: [''],
            ));
      }
    });
  }
}

extension SpecificationDataQueryFilter
    on QueryBuilder<SpecificationData, SpecificationData, QFilterCondition> {
  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      countEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      countGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      countLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      countBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'count',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      findNameServiceElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'findNameService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      findNameServiceElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'findNameService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      findNameServiceElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'findNameService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      findNameServiceElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'findNameService',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      findNameServiceElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'findNameService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      findNameServiceElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'findNameService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      findNameServiceElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'findNameService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      findNameServiceElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'findNameService',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      findNameServiceElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'findNameService',
        value: '',
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      findNameServiceElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'findNameService',
        value: '',
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      findNameServiceLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'findNameService',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      findNameServiceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'findNameService',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      findNameServiceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'findNameService',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      findNameServiceLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'findNameService',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      findNameServiceLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'findNameService',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      findNameServiceLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'findNameService',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
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

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
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

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      nameServiceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      nameServiceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nameService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      nameServiceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nameService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      nameServiceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nameService',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      nameServiceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nameService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      nameServiceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nameService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      nameServiceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nameService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      nameServiceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nameService',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      nameServiceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameService',
        value: '',
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      nameServiceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nameService',
        value: '',
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      priceWithNDSEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceWithNDS',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      priceWithNDSGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'priceWithNDS',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      priceWithNDSLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'priceWithNDS',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      priceWithNDSBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'priceWithNDS',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      priceWithNDSStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'priceWithNDS',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      priceWithNDSEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'priceWithNDS',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      priceWithNDSContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'priceWithNDS',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      priceWithNDSMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'priceWithNDS',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      priceWithNDSIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceWithNDS',
        value: '',
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      priceWithNDSIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'priceWithNDS',
        value: '',
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      priceWithOutNDSEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceWithOutNDS',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      priceWithOutNDSGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'priceWithOutNDS',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      priceWithOutNDSLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'priceWithOutNDS',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      priceWithOutNDSBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'priceWithOutNDS',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension SpecificationDataQueryObject
    on QueryBuilder<SpecificationData, SpecificationData, QFilterCondition> {}

extension SpecificationDataQueryLinks
    on QueryBuilder<SpecificationData, SpecificationData, QFilterCondition> {
  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      planeLinks(FilterQuery<PlaneWorksData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'planeLinks');
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      planeLinksLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'planeLinks', length, true, length, true);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      planeLinksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'planeLinks', 0, true, 0, true);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      planeLinksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'planeLinks', 0, false, 999999, true);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      planeLinksLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'planeLinks', 0, true, length, include);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      planeLinksLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'planeLinks', length, include, 999999, true);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterFilterCondition>
      planeLinksLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'planeLinks', lower, includeLower, upper, includeUpper);
    });
  }
}

extension SpecificationDataQuerySortBy
    on QueryBuilder<SpecificationData, SpecificationData, QSortBy> {
  QueryBuilder<SpecificationData, SpecificationData, QAfterSortBy>
      sortByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.asc);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterSortBy>
      sortByCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.desc);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterSortBy>
      sortByNameService() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameService', Sort.asc);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterSortBy>
      sortByNameServiceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameService', Sort.desc);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterSortBy>
      sortByPriceWithNDS() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceWithNDS', Sort.asc);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterSortBy>
      sortByPriceWithNDSDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceWithNDS', Sort.desc);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterSortBy>
      sortByPriceWithOutNDS() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceWithOutNDS', Sort.asc);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterSortBy>
      sortByPriceWithOutNDSDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceWithOutNDS', Sort.desc);
    });
  }
}

extension SpecificationDataQuerySortThenBy
    on QueryBuilder<SpecificationData, SpecificationData, QSortThenBy> {
  QueryBuilder<SpecificationData, SpecificationData, QAfterSortBy>
      thenByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.asc);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterSortBy>
      thenByCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.desc);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterSortBy>
      thenByNameService() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameService', Sort.asc);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterSortBy>
      thenByNameServiceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameService', Sort.desc);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterSortBy>
      thenByPriceWithNDS() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceWithNDS', Sort.asc);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterSortBy>
      thenByPriceWithNDSDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceWithNDS', Sort.desc);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterSortBy>
      thenByPriceWithOutNDS() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceWithOutNDS', Sort.asc);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QAfterSortBy>
      thenByPriceWithOutNDSDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceWithOutNDS', Sort.desc);
    });
  }
}

extension SpecificationDataQueryWhereDistinct
    on QueryBuilder<SpecificationData, SpecificationData, QDistinct> {
  QueryBuilder<SpecificationData, SpecificationData, QDistinct>
      distinctByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'count');
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QDistinct>
      distinctByFindNameService() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'findNameService');
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QDistinct>
      distinctByNameService({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nameService', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QDistinct>
      distinctByPriceWithNDS({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'priceWithNDS', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SpecificationData, SpecificationData, QDistinct>
      distinctByPriceWithOutNDS() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'priceWithOutNDS');
    });
  }
}

extension SpecificationDataQueryProperty
    on QueryBuilder<SpecificationData, SpecificationData, QQueryProperty> {
  QueryBuilder<SpecificationData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SpecificationData, int, QQueryOperations> countProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'count');
    });
  }

  QueryBuilder<SpecificationData, List<String>, QQueryOperations>
      findNameServiceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'findNameService');
    });
  }

  QueryBuilder<SpecificationData, String, QQueryOperations>
      nameServiceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nameService');
    });
  }

  QueryBuilder<SpecificationData, String, QQueryOperations>
      priceWithNDSProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priceWithNDS');
    });
  }

  QueryBuilder<SpecificationData, double, QQueryOperations>
      priceWithOutNDSProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priceWithOutNDS');
    });
  }
}
