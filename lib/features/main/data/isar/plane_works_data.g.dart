// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plane_works_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPlaneWorksDataCollection on Isar {
  IsarCollection<PlaneWorksData> get planeWorksDatas => this.collection();
}

const PlaneWorksDataSchema = CollectionSchema(
  name: r'PlaneWorksData',
  id: -6479367384919886824,
  properties: {
    r'dateExecution': PropertySchema(
      id: 0,
      name: r'dateExecution',
      type: IsarType.dateTime,
    ),
    r'inBid': PropertySchema(
      id: 1,
      name: r'inBid',
      type: IsarType.bool,
    ),
    r'mainDocument': PropertySchema(
      id: 2,
      name: r'mainDocument',
      type: IsarType.object,
      target: r'MainDocument',
    ),
    r'oi': PropertySchema(
      id: 3,
      name: r'oi',
      type: IsarType.string,
    ),
    r'quarter': PropertySchema(
      id: 4,
      name: r'quarter',
      type: IsarType.long,
    ),
    r'typeWorks': PropertySchema(
      id: 5,
      name: r'typeWorks',
      type: IsarType.object,
      target: r'TypeWork',
    ),
    r'workDone': PropertySchema(
      id: 6,
      name: r'workDone',
      type: IsarType.object,
      target: r'WorkDone',
    ),
    r'year': PropertySchema(
      id: 7,
      name: r'year',
      type: IsarType.long,
    )
  },
  estimateSize: _planeWorksDataEstimateSize,
  serialize: _planeWorksDataSerialize,
  deserialize: _planeWorksDataDeserialize,
  deserializeProp: _planeWorksDataDeserializeProp,
  idName: r'id',
  indexes: {
    r'oi': IndexSchema(
      id: 6604860856539489089,
      name: r'oi',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'oi',
          type: IndexType.hash,
          caseSensitive: false,
        )
      ],
    ),
    r'dateExecution': IndexSchema(
      id: -7770136784057005807,
      name: r'dateExecution',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'dateExecution',
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
  links: {
    r'specificationLinks': LinkSchema(
      id: 1738048353724129254,
      name: r'specificationLinks',
      target: r'SpecificationData',
      single: false,
    ),
    r'bidLink': LinkSchema(
      id: 6549437043705151409,
      name: r'bidLink',
      target: r'BidData',
      single: true,
      linkName: r'planeLinks',
    )
  },
  embeddedSchemas: {
    r'TypeWork': TypeWorkSchema,
    r'MainDocument': MainDocumentSchema,
    r'UsersDeportament': UsersDeportamentSchema,
    r'WorkDone': WorkDoneSchema
  },
  getId: _planeWorksDataGetId,
  getLinks: _planeWorksDataGetLinks,
  attach: _planeWorksDataAttach,
  version: '3.1.0+1',
);

int _planeWorksDataEstimateSize(
  PlaneWorksData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 +
      MainDocumentSchema.estimateSize(
          object.mainDocument, allOffsets[MainDocument]!, allOffsets);
  {
    final value = object.oi;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 +
      TypeWorkSchema.estimateSize(
          object.typeWorks, allOffsets[TypeWork]!, allOffsets);
  bytesCount += 3 +
      WorkDoneSchema.estimateSize(
          object.workDone, allOffsets[WorkDone]!, allOffsets);
  return bytesCount;
}

void _planeWorksDataSerialize(
  PlaneWorksData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.dateExecution);
  writer.writeBool(offsets[1], object.inBid);
  writer.writeObject<MainDocument>(
    offsets[2],
    allOffsets,
    MainDocumentSchema.serialize,
    object.mainDocument,
  );
  writer.writeString(offsets[3], object.oi);
  writer.writeLong(offsets[4], object.quarter);
  writer.writeObject<TypeWork>(
    offsets[5],
    allOffsets,
    TypeWorkSchema.serialize,
    object.typeWorks,
  );
  writer.writeObject<WorkDone>(
    offsets[6],
    allOffsets,
    WorkDoneSchema.serialize,
    object.workDone,
  );
  writer.writeLong(offsets[7], object.year);
}

PlaneWorksData _planeWorksDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PlaneWorksData();
  object.dateExecution = reader.readDateTime(offsets[0]);
  object.id = id;
  object.inBid = reader.readBool(offsets[1]);
  object.mainDocument = reader.readObjectOrNull<MainDocument>(
        offsets[2],
        MainDocumentSchema.deserialize,
        allOffsets,
      ) ??
      MainDocument();
  object.oi = reader.readStringOrNull(offsets[3]);
  object.typeWorks = reader.readObjectOrNull<TypeWork>(
        offsets[5],
        TypeWorkSchema.deserialize,
        allOffsets,
      ) ??
      TypeWork();
  object.workDone = reader.readObjectOrNull<WorkDone>(
        offsets[6],
        WorkDoneSchema.deserialize,
        allOffsets,
      ) ??
      WorkDone();
  return object;
}

P _planeWorksDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readObjectOrNull<MainDocument>(
            offset,
            MainDocumentSchema.deserialize,
            allOffsets,
          ) ??
          MainDocument()) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readObjectOrNull<TypeWork>(
            offset,
            TypeWorkSchema.deserialize,
            allOffsets,
          ) ??
          TypeWork()) as P;
    case 6:
      return (reader.readObjectOrNull<WorkDone>(
            offset,
            WorkDoneSchema.deserialize,
            allOffsets,
          ) ??
          WorkDone()) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _planeWorksDataGetId(PlaneWorksData object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _planeWorksDataGetLinks(PlaneWorksData object) {
  return [object.specificationLinks, object.bidLink];
}

void _planeWorksDataAttach(
    IsarCollection<dynamic> col, Id id, PlaneWorksData object) {
  object.id = id;
  object.specificationLinks.attach(
      col, col.isar.collection<SpecificationData>(), r'specificationLinks', id);
  object.bidLink.attach(col, col.isar.collection<BidData>(), r'bidLink', id);
}

extension PlaneWorksDataQueryWhereSort
    on QueryBuilder<PlaneWorksData, PlaneWorksData, QWhere> {
  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhere> anyDateExecution() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'dateExecution'),
      );
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhere> anyYearQuarter() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'year_quarter'),
      );
    });
  }
}

extension PlaneWorksDataQueryWhere
    on QueryBuilder<PlaneWorksData, PlaneWorksData, QWhereClause> {
  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause> idBetween(
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

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause> oiIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'oi',
        value: [null],
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause>
      oiIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'oi',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause> oiEqualTo(
      String? oi) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'oi',
        value: [oi],
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause> oiNotEqualTo(
      String? oi) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'oi',
              lower: [],
              upper: [oi],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'oi',
              lower: [oi],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'oi',
              lower: [oi],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'oi',
              lower: [],
              upper: [oi],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause>
      dateExecutionEqualTo(DateTime dateExecution) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'dateExecution',
        value: [dateExecution],
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause>
      dateExecutionNotEqualTo(DateTime dateExecution) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dateExecution',
              lower: [],
              upper: [dateExecution],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dateExecution',
              lower: [dateExecution],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dateExecution',
              lower: [dateExecution],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dateExecution',
              lower: [],
              upper: [dateExecution],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause>
      dateExecutionGreaterThan(
    DateTime dateExecution, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dateExecution',
        lower: [dateExecution],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause>
      dateExecutionLessThan(
    DateTime dateExecution, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dateExecution',
        lower: [],
        upper: [dateExecution],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause>
      dateExecutionBetween(
    DateTime lowerDateExecution,
    DateTime upperDateExecution, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dateExecution',
        lower: [lowerDateExecution],
        includeLower: includeLower,
        upper: [upperDateExecution],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause>
      yearEqualToAnyQuarter(int year) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'year_quarter',
        value: [year],
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause>
      yearNotEqualToAnyQuarter(int year) {
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

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause>
      yearGreaterThanAnyQuarter(
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

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause>
      yearLessThanAnyQuarter(
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

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause>
      yearBetweenAnyQuarter(
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

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause>
      yearQuarterEqualTo(int year, int quarter) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'year_quarter',
        value: [year, quarter],
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause>
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

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause>
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

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause>
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

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterWhereClause>
      yearEqualToQuarterBetween(
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

extension PlaneWorksDataQueryFilter
    on QueryBuilder<PlaneWorksData, PlaneWorksData, QFilterCondition> {
  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      dateExecutionEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateExecution',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      dateExecutionGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateExecution',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      dateExecutionLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateExecution',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      dateExecutionBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateExecution',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
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

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
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

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      inBidEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inBid',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      oiIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'oi',
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      oiIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'oi',
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition> oiEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'oi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      oiGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'oi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      oiLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'oi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition> oiBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'oi',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      oiStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'oi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      oiEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'oi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      oiContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'oi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition> oiMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'oi',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      oiIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'oi',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      oiIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'oi',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      quarterEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quarter',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      quarterGreaterThan(
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

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      quarterLessThan(
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

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      quarterBetween(
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

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      yearEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      yearGreaterThan(
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

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      yearLessThan(
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

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      yearBetween(
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

extension PlaneWorksDataQueryObject
    on QueryBuilder<PlaneWorksData, PlaneWorksData, QFilterCondition> {
  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      mainDocument(FilterQuery<MainDocument> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'mainDocument');
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition> typeWorks(
      FilterQuery<TypeWork> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'typeWorks');
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition> workDone(
      FilterQuery<WorkDone> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'workDone');
    });
  }
}

extension PlaneWorksDataQueryLinks
    on QueryBuilder<PlaneWorksData, PlaneWorksData, QFilterCondition> {
  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      specificationLinks(FilterQuery<SpecificationData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'specificationLinks');
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      specificationLinksLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'specificationLinks', length, true, length, true);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      specificationLinksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'specificationLinks', 0, true, 0, true);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      specificationLinksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'specificationLinks', 0, false, 999999, true);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      specificationLinksLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'specificationLinks', 0, true, length, include);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      specificationLinksLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'specificationLinks', length, include, 999999, true);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      specificationLinksLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'specificationLinks', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition> bidLink(
      FilterQuery<BidData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'bidLink');
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterFilterCondition>
      bidLinkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bidLink', 0, true, 0, true);
    });
  }
}

extension PlaneWorksDataQuerySortBy
    on QueryBuilder<PlaneWorksData, PlaneWorksData, QSortBy> {
  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy>
      sortByDateExecution() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateExecution', Sort.asc);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy>
      sortByDateExecutionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateExecution', Sort.desc);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy> sortByInBid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inBid', Sort.asc);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy> sortByInBidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inBid', Sort.desc);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy> sortByOi() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oi', Sort.asc);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy> sortByOiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oi', Sort.desc);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy> sortByQuarter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarter', Sort.asc);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy>
      sortByQuarterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarter', Sort.desc);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy> sortByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy> sortByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension PlaneWorksDataQuerySortThenBy
    on QueryBuilder<PlaneWorksData, PlaneWorksData, QSortThenBy> {
  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy>
      thenByDateExecution() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateExecution', Sort.asc);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy>
      thenByDateExecutionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateExecution', Sort.desc);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy> thenByInBid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inBid', Sort.asc);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy> thenByInBidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inBid', Sort.desc);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy> thenByOi() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oi', Sort.asc);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy> thenByOiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oi', Sort.desc);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy> thenByQuarter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarter', Sort.asc);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy>
      thenByQuarterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarter', Sort.desc);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy> thenByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QAfterSortBy> thenByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension PlaneWorksDataQueryWhereDistinct
    on QueryBuilder<PlaneWorksData, PlaneWorksData, QDistinct> {
  QueryBuilder<PlaneWorksData, PlaneWorksData, QDistinct>
      distinctByDateExecution() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateExecution');
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QDistinct> distinctByInBid() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'inBid');
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QDistinct> distinctByOi(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'oi', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QDistinct> distinctByQuarter() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quarter');
    });
  }

  QueryBuilder<PlaneWorksData, PlaneWorksData, QDistinct> distinctByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'year');
    });
  }
}

extension PlaneWorksDataQueryProperty
    on QueryBuilder<PlaneWorksData, PlaneWorksData, QQueryProperty> {
  QueryBuilder<PlaneWorksData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PlaneWorksData, DateTime, QQueryOperations>
      dateExecutionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateExecution');
    });
  }

  QueryBuilder<PlaneWorksData, bool, QQueryOperations> inBidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'inBid');
    });
  }

  QueryBuilder<PlaneWorksData, MainDocument, QQueryOperations>
      mainDocumentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mainDocument');
    });
  }

  QueryBuilder<PlaneWorksData, String?, QQueryOperations> oiProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'oi');
    });
  }

  QueryBuilder<PlaneWorksData, int, QQueryOperations> quarterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quarter');
    });
  }

  QueryBuilder<PlaneWorksData, TypeWork, QQueryOperations> typeWorksProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'typeWorks');
    });
  }

  QueryBuilder<PlaneWorksData, WorkDone, QQueryOperations> workDoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workDone');
    });
  }

  QueryBuilder<PlaneWorksData, int, QQueryOperations> yearProperty() {
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

const WorkDoneSchema = Schema(
  name: r'WorkDone',
  id: 1492073398756888813,
  properties: {
    r'done': PropertySchema(
      id: 0,
      name: r'done',
      type: IsarType.bool,
    ),
    r'numberDoc': PropertySchema(
      id: 1,
      name: r'numberDoc',
      type: IsarType.string,
    )
  },
  estimateSize: _workDoneEstimateSize,
  serialize: _workDoneSerialize,
  deserialize: _workDoneDeserialize,
  deserializeProp: _workDoneDeserializeProp,
);

int _workDoneEstimateSize(
  WorkDone object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.numberDoc.length * 3;
  return bytesCount;
}

void _workDoneSerialize(
  WorkDone object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.done);
  writer.writeString(offsets[1], object.numberDoc);
}

WorkDone _workDoneDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WorkDone();
  object.done = reader.readBool(offsets[0]);
  object.numberDoc = reader.readString(offsets[1]);
  return object;
}

P _workDoneDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension WorkDoneQueryFilter
    on QueryBuilder<WorkDone, WorkDone, QFilterCondition> {
  QueryBuilder<WorkDone, WorkDone, QAfterFilterCondition> doneEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'done',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkDone, WorkDone, QAfterFilterCondition> numberDocEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numberDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkDone, WorkDone, QAfterFilterCondition> numberDocGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numberDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkDone, WorkDone, QAfterFilterCondition> numberDocLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numberDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkDone, WorkDone, QAfterFilterCondition> numberDocBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numberDoc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkDone, WorkDone, QAfterFilterCondition> numberDocStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'numberDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkDone, WorkDone, QAfterFilterCondition> numberDocEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'numberDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkDone, WorkDone, QAfterFilterCondition> numberDocContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'numberDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkDone, WorkDone, QAfterFilterCondition> numberDocMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'numberDoc',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkDone, WorkDone, QAfterFilterCondition> numberDocIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numberDoc',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkDone, WorkDone, QAfterFilterCondition>
      numberDocIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'numberDoc',
        value: '',
      ));
    });
  }
}

extension WorkDoneQueryObject
    on QueryBuilder<WorkDone, WorkDone, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const TypeWorkSchema = Schema(
  name: r'TypeWork',
  id: 981039678104818367,
  properties: {
    r'abbr': PropertySchema(
      id: 0,
      name: r'abbr',
      type: IsarType.string,
      enumMap: _TypeWorkabbrEnumValueMap,
    ),
    r'nameTypeWorks': PropertySchema(
      id: 1,
      name: r'nameTypeWorks',
      type: IsarType.string,
    ),
    r'note': PropertySchema(
      id: 2,
      name: r'note',
      type: IsarType.string,
    )
  },
  estimateSize: _typeWorkEstimateSize,
  serialize: _typeWorkSerialize,
  deserialize: _typeWorkDeserialize,
  deserializeProp: _typeWorkDeserializeProp,
);

int _typeWorkEstimateSize(
  TypeWork object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.abbr.name.length * 3;
  bytesCount += 3 + object.nameTypeWorks.length * 3;
  bytesCount += 3 + object.note.length * 3;
  return bytesCount;
}

void _typeWorkSerialize(
  TypeWork object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.abbr.name);
  writer.writeString(offsets[1], object.nameTypeWorks);
  writer.writeString(offsets[2], object.note);
}

TypeWork _typeWorkDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TypeWork();
  object.abbr =
      _TypeWorkabbrValueEnumMap[reader.readStringOrNull(offsets[0])] ??
          Abbreviation.v;
  return object;
}

P _typeWorkDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_TypeWorkabbrValueEnumMap[reader.readStringOrNull(offset)] ??
          Abbreviation.v) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _TypeWorkabbrEnumValueMap = {
  r'v': r'Вывод из эксплуатации',
  r'a': r'Аттестация',
  r'pa': r'Переаттестация',
  r'kz': r'Контроль защищённости',
  r'dai': r'Дополнительные аттестационные испытания',
  r'k': r'Контроль эксплуатации',
  r'sp': r'Специальная проверка',
  r'si': r'Специальные исследования',
};
const _TypeWorkabbrValueEnumMap = {
  r'Вывод из эксплуатации': Abbreviation.v,
  r'Аттестация': Abbreviation.a,
  r'Переаттестация': Abbreviation.pa,
  r'Контроль защищённости': Abbreviation.kz,
  r'Дополнительные аттестационные испытания': Abbreviation.dai,
  r'Контроль эксплуатации': Abbreviation.k,
  r'Специальная проверка': Abbreviation.sp,
  r'Специальные исследования': Abbreviation.si,
};

extension TypeWorkQueryFilter
    on QueryBuilder<TypeWork, TypeWork, QFilterCondition> {
  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> abbrEqualTo(
    Abbreviation value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'abbr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> abbrGreaterThan(
    Abbreviation value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'abbr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> abbrLessThan(
    Abbreviation value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'abbr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> abbrBetween(
    Abbreviation lower,
    Abbreviation upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'abbr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> abbrStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'abbr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> abbrEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'abbr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> abbrContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'abbr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> abbrMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'abbr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> abbrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'abbr',
        value: '',
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> abbrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'abbr',
        value: '',
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> nameTypeWorksEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameTypeWorks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition>
      nameTypeWorksGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nameTypeWorks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> nameTypeWorksLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nameTypeWorks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> nameTypeWorksBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nameTypeWorks',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition>
      nameTypeWorksStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nameTypeWorks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> nameTypeWorksEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nameTypeWorks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> nameTypeWorksContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nameTypeWorks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> nameTypeWorksMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nameTypeWorks',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition>
      nameTypeWorksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameTypeWorks',
        value: '',
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition>
      nameTypeWorksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nameTypeWorks',
        value: '',
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> noteEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> noteGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> noteLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> noteBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'note',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> noteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> noteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> noteContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> noteMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'note',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> noteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'note',
        value: '',
      ));
    });
  }

  QueryBuilder<TypeWork, TypeWork, QAfterFilterCondition> noteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'note',
        value: '',
      ));
    });
  }
}

extension TypeWorkQueryObject
    on QueryBuilder<TypeWork, TypeWork, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const MainDocumentSchema = Schema(
  name: r'MainDocument',
  id: -7417175851519050012,
  properties: {
    r'note': PropertySchema(
      id: 0,
      name: r'note',
      type: IsarType.string,
    ),
    r'numberDoc': PropertySchema(
      id: 1,
      name: r'numberDoc',
      type: IsarType.string,
    ),
    r'typeDoc': PropertySchema(
      id: 2,
      name: r'typeDoc',
      type: IsarType.string,
      enumMap: _MainDocumenttypeDocEnumValueMap,
    ),
    r'usersDeportament': PropertySchema(
      id: 3,
      name: r'usersDeportament',
      type: IsarType.object,
      target: r'UsersDeportament',
    )
  },
  estimateSize: _mainDocumentEstimateSize,
  serialize: _mainDocumentSerialize,
  deserialize: _mainDocumentDeserialize,
  deserializeProp: _mainDocumentDeserializeProp,
);

int _mainDocumentEstimateSize(
  MainDocument object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.note;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.numberDoc.length * 3;
  bytesCount += 3 + object.typeDoc.name.length * 3;
  {
    final value = object.usersDeportament;
    if (value != null) {
      bytesCount += 3 +
          UsersDeportamentSchema.estimateSize(
              value, allOffsets[UsersDeportament]!, allOffsets);
    }
  }
  return bytesCount;
}

void _mainDocumentSerialize(
  MainDocument object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.note);
  writer.writeString(offsets[1], object.numberDoc);
  writer.writeString(offsets[2], object.typeDoc.name);
  writer.writeObject<UsersDeportament>(
    offsets[3],
    allOffsets,
    UsersDeportamentSchema.serialize,
    object.usersDeportament,
  );
}

MainDocument _mainDocumentDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MainDocument();
  object.note = reader.readStringOrNull(offsets[0]);
  object.numberDoc = reader.readString(offsets[1]);
  object.typeDoc =
      _MainDocumenttypeDocValueEnumMap[reader.readStringOrNull(offsets[2])] ??
          TypeDocs.plan;
  object.usersDeportament = reader.readObjectOrNull<UsersDeportament>(
    offsets[3],
    UsersDeportamentSchema.deserialize,
    allOffsets,
  );
  return object;
}

P _mainDocumentDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (_MainDocumenttypeDocValueEnumMap[
              reader.readStringOrNull(offset)] ??
          TypeDocs.plan) as P;
    case 3:
      return (reader.readObjectOrNull<UsersDeportament>(
        offset,
        UsersDeportamentSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _MainDocumenttypeDocEnumValueMap = {
  r'plan': r'Пран работ',
  r'memo': r'Служебная записка',
};
const _MainDocumenttypeDocValueEnumMap = {
  r'Пран работ': TypeDocs.plan,
  r'Служебная записка': TypeDocs.memo,
};

extension MainDocumentQueryFilter
    on QueryBuilder<MainDocument, MainDocument, QFilterCondition> {
  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition> noteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'note',
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      noteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'note',
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition> noteEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      noteGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition> noteLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition> noteBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'note',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      noteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition> noteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition> noteContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition> noteMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'note',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      noteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'note',
        value: '',
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      noteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'note',
        value: '',
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      numberDocEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numberDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      numberDocGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numberDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      numberDocLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numberDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      numberDocBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numberDoc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      numberDocStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'numberDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      numberDocEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'numberDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      numberDocContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'numberDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      numberDocMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'numberDoc',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      numberDocIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numberDoc',
        value: '',
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      numberDocIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'numberDoc',
        value: '',
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      typeDocEqualTo(
    TypeDocs value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'typeDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      typeDocGreaterThan(
    TypeDocs value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'typeDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      typeDocLessThan(
    TypeDocs value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'typeDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      typeDocBetween(
    TypeDocs lower,
    TypeDocs upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'typeDoc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      typeDocStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'typeDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      typeDocEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'typeDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      typeDocContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'typeDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      typeDocMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'typeDoc',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      typeDocIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'typeDoc',
        value: '',
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      typeDocIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'typeDoc',
        value: '',
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      usersDeportamentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usersDeportament',
      ));
    });
  }

  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      usersDeportamentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usersDeportament',
      ));
    });
  }
}

extension MainDocumentQueryObject
    on QueryBuilder<MainDocument, MainDocument, QFilterCondition> {
  QueryBuilder<MainDocument, MainDocument, QAfterFilterCondition>
      usersDeportament(FilterQuery<UsersDeportament> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'usersDeportament');
    });
  }
}
