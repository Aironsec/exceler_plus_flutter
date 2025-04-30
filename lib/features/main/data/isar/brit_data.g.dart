// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brit_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBritDataCollection on Isar {
  IsarCollection<BritData> get britDatas => this.collection();
}

const BritDataSchema = CollectionSchema(
  name: r'BritData',
  id: 6038298976439958053,
  properties: {
    r'date': PropertySchema(
      id: 0,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'quarter': PropertySchema(
      id: 1,
      name: r'quarter',
      type: IsarType.long,
    ),
    r'typeWorks': PropertySchema(
      id: 2,
      name: r'typeWorks',
      type: IsarType.objectList,
      target: r'TypeWorks',
    ),
    r'usersDeportament': PropertySchema(
      id: 3,
      name: r'usersDeportament',
      type: IsarType.object,
      target: r'UsersDeportament',
    ),
    r'year': PropertySchema(
      id: 4,
      name: r'year',
      type: IsarType.long,
    )
  },
  estimateSize: _britDataEstimateSize,
  serialize: _britDataSerialize,
  deserialize: _britDataDeserialize,
  deserializeProp: _britDataDeserializeProp,
  idName: r'id',
  indexes: {
    r'date': IndexSchema(
      id: -7552997827385218417,
      name: r'date',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'date',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'year_quarter': IndexSchema(
      id: -6792169155393134821,
      name: r'year_quarter',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'year',
          type: IndexType.value,
          caseSensitive: false,
        ),
        IndexPropertySchema(
          name: r'quarter',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {
    r'UsersDeportament': UsersDeportamentSchema,
    r'TypeWorks': TypeWorksSchema,
    r'TypeWork': TypeWorkSchema
  },
  getId: _britDataGetId,
  getLinks: _britDataGetLinks,
  attach: _britDataAttach,
  version: '3.1.0+1',
);

int _britDataEstimateSize(
  BritData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.typeWorks.length * 3;
  {
    final offsets = allOffsets[TypeWorks]!;
    for (var i = 0; i < object.typeWorks.length; i++) {
      final value = object.typeWorks[i];
      bytesCount += TypeWorksSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 +
      UsersDeportamentSchema.estimateSize(
          object.usersDeportament, allOffsets[UsersDeportament]!, allOffsets);
  return bytesCount;
}

void _britDataSerialize(
  BritData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.date);
  writer.writeLong(offsets[1], object.quarter);
  writer.writeObjectList<TypeWorks>(
    offsets[2],
    allOffsets,
    TypeWorksSchema.serialize,
    object.typeWorks,
  );
  writer.writeObject<UsersDeportament>(
    offsets[3],
    allOffsets,
    UsersDeportamentSchema.serialize,
    object.usersDeportament,
  );
  writer.writeLong(offsets[4], object.year);
}

BritData _britDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BritData();
  object.date = reader.readDateTime(offsets[0]);
  object.id = id;
  object.typeWorks = reader.readObjectList<TypeWorks>(
        offsets[2],
        TypeWorksSchema.deserialize,
        allOffsets,
        TypeWorks(),
      ) ??
      [];
  object.usersDeportament = reader.readObjectOrNull<UsersDeportament>(
        offsets[3],
        UsersDeportamentSchema.deserialize,
        allOffsets,
      ) ??
      UsersDeportament();
  return object;
}

P _britDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readObjectList<TypeWorks>(
            offset,
            TypeWorksSchema.deserialize,
            allOffsets,
            TypeWorks(),
          ) ??
          []) as P;
    case 3:
      return (reader.readObjectOrNull<UsersDeportament>(
            offset,
            UsersDeportamentSchema.deserialize,
            allOffsets,
          ) ??
          UsersDeportament()) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _britDataGetId(BritData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _britDataGetLinks(BritData object) {
  return [];
}

void _britDataAttach(IsarCollection<dynamic> col, Id id, BritData object) {
  object.id = id;
}

extension BritDataQueryWhereSort on QueryBuilder<BritData, BritData, QWhere> {
  QueryBuilder<BritData, BritData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<BritData, BritData, QAfterWhere> anyDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'date'),
      );
    });
  }

  QueryBuilder<BritData, BritData, QAfterWhere> anyYearQuarter() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'year_quarter'),
      );
    });
  }
}

extension BritDataQueryWhere on QueryBuilder<BritData, BritData, QWhereClause> {
  QueryBuilder<BritData, BritData, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<BritData, BritData, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<BritData, BritData, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<BritData, BritData, QAfterWhereClause> idBetween(
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

  QueryBuilder<BritData, BritData, QAfterWhereClause> dateEqualTo(
      DateTime date) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'date',
        value: [date],
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterWhereClause> dateNotEqualTo(
      DateTime date) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'date',
              lower: [],
              upper: [date],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'date',
              lower: [date],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'date',
              lower: [date],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'date',
              lower: [],
              upper: [date],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<BritData, BritData, QAfterWhereClause> dateGreaterThan(
    DateTime date, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'date',
        lower: [date],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterWhereClause> dateLessThan(
    DateTime date, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'date',
        lower: [],
        upper: [date],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterWhereClause> dateBetween(
    DateTime lowerDate,
    DateTime upperDate, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'date',
        lower: [lowerDate],
        includeLower: includeLower,
        upper: [upperDate],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterWhereClause> yearEqualToAnyQuarter(
      int year) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'year_quarter',
        value: [year],
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterWhereClause> yearNotEqualToAnyQuarter(
      int year) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'year_quarter',
              lower: [],
              upper: [year],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'year_quarter',
              lower: [year],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'year_quarter',
              lower: [year],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'year_quarter',
              lower: [],
              upper: [year],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<BritData, BritData, QAfterWhereClause> yearGreaterThanAnyQuarter(
    int year, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'year_quarter',
        lower: [year],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterWhereClause> yearLessThanAnyQuarter(
    int year, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'year_quarter',
        lower: [],
        upper: [year],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterWhereClause> yearBetweenAnyQuarter(
    int lowerYear,
    int upperYear, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'year_quarter',
        lower: [lowerYear],
        includeLower: includeLower,
        upper: [upperYear],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterWhereClause> yearQuarterEqualTo(
      int year, int quarter) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'year_quarter',
        value: [year, quarter],
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterWhereClause>
      yearEqualToQuarterNotEqualTo(int year, int quarter) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'year_quarter',
              lower: [year],
              upper: [year, quarter],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'year_quarter',
              lower: [year, quarter],
              includeLower: false,
              upper: [year],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'year_quarter',
              lower: [year, quarter],
              includeLower: false,
              upper: [year],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'year_quarter',
              lower: [year],
              upper: [year, quarter],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<BritData, BritData, QAfterWhereClause>
      yearEqualToQuarterGreaterThan(
    int year,
    int quarter, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'year_quarter',
        lower: [year, quarter],
        includeLower: include,
        upper: [year],
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterWhereClause>
      yearEqualToQuarterLessThan(
    int year,
    int quarter, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'year_quarter',
        lower: [year],
        upper: [year, quarter],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterWhereClause> yearEqualToQuarterBetween(
    int year,
    int lowerQuarter,
    int upperQuarter, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'year_quarter',
        lower: [year, lowerQuarter],
        includeLower: includeLower,
        upper: [year, upperQuarter],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension BritDataQueryFilter
    on QueryBuilder<BritData, BritData, QFilterCondition> {
  QueryBuilder<BritData, BritData, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterFilterCondition> dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterFilterCondition> dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterFilterCondition> idGreaterThan(
    Id value, {
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

  QueryBuilder<BritData, BritData, QAfterFilterCondition> idLessThan(
    Id value, {
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

  QueryBuilder<BritData, BritData, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<BritData, BritData, QAfterFilterCondition> quarterEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quarter',
        value: value,
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterFilterCondition> quarterGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quarter',
        value: value,
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterFilterCondition> quarterLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quarter',
        value: value,
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterFilterCondition> quarterBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quarter',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterFilterCondition>
      typeWorksLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'typeWorks',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<BritData, BritData, QAfterFilterCondition> typeWorksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'typeWorks',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<BritData, BritData, QAfterFilterCondition>
      typeWorksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'typeWorks',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<BritData, BritData, QAfterFilterCondition>
      typeWorksLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'typeWorks',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<BritData, BritData, QAfterFilterCondition>
      typeWorksLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'typeWorks',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<BritData, BritData, QAfterFilterCondition>
      typeWorksLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'typeWorks',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<BritData, BritData, QAfterFilterCondition> yearEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterFilterCondition> yearGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterFilterCondition> yearLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<BritData, BritData, QAfterFilterCondition> yearBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'year',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension BritDataQueryObject
    on QueryBuilder<BritData, BritData, QFilterCondition> {
  QueryBuilder<BritData, BritData, QAfterFilterCondition> typeWorksElement(
      FilterQuery<TypeWorks> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'typeWorks');
    });
  }

  QueryBuilder<BritData, BritData, QAfterFilterCondition> usersDeportament(
      FilterQuery<UsersDeportament> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'usersDeportament');
    });
  }
}

extension BritDataQueryLinks
    on QueryBuilder<BritData, BritData, QFilterCondition> {}

extension BritDataQuerySortBy on QueryBuilder<BritData, BritData, QSortBy> {
  QueryBuilder<BritData, BritData, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<BritData, BritData, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<BritData, BritData, QAfterSortBy> sortByQuarter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarter', Sort.asc);
    });
  }

  QueryBuilder<BritData, BritData, QAfterSortBy> sortByQuarterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarter', Sort.desc);
    });
  }

  QueryBuilder<BritData, BritData, QAfterSortBy> sortByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<BritData, BritData, QAfterSortBy> sortByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension BritDataQuerySortThenBy
    on QueryBuilder<BritData, BritData, QSortThenBy> {
  QueryBuilder<BritData, BritData, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<BritData, BritData, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<BritData, BritData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<BritData, BritData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<BritData, BritData, QAfterSortBy> thenByQuarter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarter', Sort.asc);
    });
  }

  QueryBuilder<BritData, BritData, QAfterSortBy> thenByQuarterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarter', Sort.desc);
    });
  }

  QueryBuilder<BritData, BritData, QAfterSortBy> thenByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<BritData, BritData, QAfterSortBy> thenByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension BritDataQueryWhereDistinct
    on QueryBuilder<BritData, BritData, QDistinct> {
  QueryBuilder<BritData, BritData, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<BritData, BritData, QDistinct> distinctByQuarter() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quarter');
    });
  }

  QueryBuilder<BritData, BritData, QDistinct> distinctByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'year');
    });
  }
}

extension BritDataQueryProperty
    on QueryBuilder<BritData, BritData, QQueryProperty> {
  QueryBuilder<BritData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<BritData, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<BritData, int, QQueryOperations> quarterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quarter');
    });
  }

  QueryBuilder<BritData, List<TypeWorks>, QQueryOperations>
      typeWorksProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'typeWorks');
    });
  }

  QueryBuilder<BritData, UsersDeportament, QQueryOperations>
      usersDeportamentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usersDeportament');
    });
  }

  QueryBuilder<BritData, int, QQueryOperations> yearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'year');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const TypeWorksSchema = Schema(
  name: r'TypeWorks',
  id: 5244282767485078127,
  properties: {
    r'factCount': PropertySchema(
      id: 0,
      name: r'factCount',
      type: IsarType.long,
    ),
    r'likelyCount': PropertySchema(
      id: 1,
      name: r'likelyCount',
      type: IsarType.long,
    ),
    r'typeWork': PropertySchema(
      id: 2,
      name: r'typeWork',
      type: IsarType.object,
      target: r'TypeWork',
    )
  },
  estimateSize: _typeWorksEstimateSize,
  serialize: _typeWorksSerialize,
  deserialize: _typeWorksDeserialize,
  deserializeProp: _typeWorksDeserializeProp,
);

int _typeWorksEstimateSize(
  TypeWorks object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 +
      TypeWorkSchema.estimateSize(
          object.typeWork, allOffsets[TypeWork]!, allOffsets);
  return bytesCount;
}

void _typeWorksSerialize(
  TypeWorks object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.factCount);
  writer.writeLong(offsets[1], object.likelyCount);
  writer.writeObject<TypeWork>(
    offsets[2],
    allOffsets,
    TypeWorkSchema.serialize,
    object.typeWork,
  );
}

TypeWorks _typeWorksDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TypeWorks();
  object.factCount = reader.readLong(offsets[0]);
  object.likelyCount = reader.readLong(offsets[1]);
  object.typeWork = reader.readObjectOrNull<TypeWork>(
        offsets[2],
        TypeWorkSchema.deserialize,
        allOffsets,
      ) ??
      TypeWork();
  return object;
}

P _typeWorksDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readObjectOrNull<TypeWork>(
            offset,
            TypeWorkSchema.deserialize,
            allOffsets,
          ) ??
          TypeWork()) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension TypeWorksQueryFilter
    on QueryBuilder<TypeWorks, TypeWorks, QFilterCondition> {
  QueryBuilder<TypeWorks, TypeWorks, QAfterFilterCondition> factCountEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'factCount',
        value: value,
      ));
    });
  }

  QueryBuilder<TypeWorks, TypeWorks, QAfterFilterCondition>
      factCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'factCount',
        value: value,
      ));
    });
  }

  QueryBuilder<TypeWorks, TypeWorks, QAfterFilterCondition> factCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'factCount',
        value: value,
      ));
    });
  }

  QueryBuilder<TypeWorks, TypeWorks, QAfterFilterCondition> factCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'factCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TypeWorks, TypeWorks, QAfterFilterCondition> likelyCountEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'likelyCount',
        value: value,
      ));
    });
  }

  QueryBuilder<TypeWorks, TypeWorks, QAfterFilterCondition>
      likelyCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'likelyCount',
        value: value,
      ));
    });
  }

  QueryBuilder<TypeWorks, TypeWorks, QAfterFilterCondition> likelyCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'likelyCount',
        value: value,
      ));
    });
  }

  QueryBuilder<TypeWorks, TypeWorks, QAfterFilterCondition> likelyCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'likelyCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TypeWorksQueryObject
    on QueryBuilder<TypeWorks, TypeWorks, QFilterCondition> {
  QueryBuilder<TypeWorks, TypeWorks, QAfterFilterCondition> typeWork(
      FilterQuery<TypeWork> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'typeWork');
    });
  }
}
