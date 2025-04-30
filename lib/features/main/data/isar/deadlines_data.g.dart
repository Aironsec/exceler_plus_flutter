// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deadlines_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDeadlinesDataCollection on Isar {
  IsarCollection<DeadlinesData> get deadlinesDatas => this.collection();
}

const DeadlinesDataSchema = CollectionSchema(
  name: r'DeadlinesData',
  id: 83874329351619695,
  properties: {
    r'attestat': PropertySchema(
      id: 0,
      name: r'attestat',
      type: IsarType.string,
    ),
    r'date': PropertySchema(
      id: 1,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'k1': PropertySchema(
      id: 2,
      name: r'k1',
      type: IsarType.dateTime,
    ),
    r'k2': PropertySchema(
      id: 3,
      name: r'k2',
      type: IsarType.dateTime,
    ),
    r'k3': PropertySchema(
      id: 4,
      name: r'k3',
      type: IsarType.dateTime,
    ),
    r'k4': PropertySchema(
      id: 5,
      name: r'k4',
      type: IsarType.dateTime,
    ),
    r'kz': PropertySchema(
      id: 6,
      name: r'kz',
      type: IsarType.dateTime,
    ),
    r'oi': PropertySchema(
      id: 7,
      name: r'oi',
      type: IsarType.string,
    ),
    r'pa': PropertySchema(
      id: 8,
      name: r'pa',
      type: IsarType.dateTime,
    ),
    r'quarter': PropertySchema(
      id: 9,
      name: r'quarter',
      type: IsarType.long,
    ),
    r'usersDeportament': PropertySchema(
      id: 10,
      name: r'usersDeportament',
      type: IsarType.objectList,
      target: r'UsersDeportament',
    ),
    r'year': PropertySchema(
      id: 11,
      name: r'year',
      type: IsarType.long,
    )
  },
  estimateSize: _deadlinesDataEstimateSize,
  serialize: _deadlinesDataSerialize,
  deserialize: _deadlinesDataDeserialize,
  deserializeProp: _deadlinesDataDeserializeProp,
  idName: r'id',
  indexes: {
    r'oi': IndexSchema(
      id: 6604860856539489089,
      name: r'oi',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'oi',
          type: IndexType.hash,
          caseSensitive: false,
        )
      ],
    ),
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
    r'attestat': IndexSchema(
      id: -7440415350430046633,
      name: r'attestat',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'attestat',
          type: IndexType.hash,
          caseSensitive: false,
        )
      ],
    ),
    r'quarter_date_oi': IndexSchema(
      id: 9222994988861169605,
      name: r'quarter_date_oi',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'quarter',
          type: IndexType.value,
          caseSensitive: false,
        ),
        IndexPropertySchema(
          name: r'date',
          type: IndexType.value,
          caseSensitive: false,
        ),
        IndexPropertySchema(
          name: r'oi',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'UsersDeportament': UsersDeportamentSchema},
  getId: _deadlinesDataGetId,
  getLinks: _deadlinesDataGetLinks,
  attach: _deadlinesDataAttach,
  version: '3.1.0+1',
);

int _deadlinesDataEstimateSize(
  DeadlinesData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.attestat.length * 3;
  bytesCount += 3 + object.oi.length * 3;
  {
    final list = object.usersDeportament;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[UsersDeportament]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              UsersDeportamentSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _deadlinesDataSerialize(
  DeadlinesData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.attestat);
  writer.writeDateTime(offsets[1], object.date);
  writer.writeDateTime(offsets[2], object.k1);
  writer.writeDateTime(offsets[3], object.k2);
  writer.writeDateTime(offsets[4], object.k3);
  writer.writeDateTime(offsets[5], object.k4);
  writer.writeDateTime(offsets[6], object.kz);
  writer.writeString(offsets[7], object.oi);
  writer.writeDateTime(offsets[8], object.pa);
  writer.writeLong(offsets[9], object.quarter);
  writer.writeObjectList<UsersDeportament>(
    offsets[10],
    allOffsets,
    UsersDeportamentSchema.serialize,
    object.usersDeportament,
  );
  writer.writeLong(offsets[11], object.year);
}

DeadlinesData _deadlinesDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DeadlinesData();
  object.attestat = reader.readString(offsets[0]);
  object.date = reader.readDateTime(offsets[1]);
  object.id = id;
  object.oi = reader.readString(offsets[7]);
  object.usersDeportament = reader.readObjectList<UsersDeportament>(
    offsets[10],
    UsersDeportamentSchema.deserialize,
    allOffsets,
    UsersDeportament(),
  );
  return object;
}

P _deadlinesDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readDateTime(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readDateTime(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readObjectList<UsersDeportament>(
        offset,
        UsersDeportamentSchema.deserialize,
        allOffsets,
        UsersDeportament(),
      )) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _deadlinesDataGetId(DeadlinesData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _deadlinesDataGetLinks(DeadlinesData object) {
  return [];
}

void _deadlinesDataAttach(
    IsarCollection<dynamic> col, Id id, DeadlinesData object) {
  object.id = id;
}

extension DeadlinesDataByIndex on IsarCollection<DeadlinesData> {
  Future<DeadlinesData?> getByOi(String oi) {
    return getByIndex(r'oi', [oi]);
  }

  DeadlinesData? getByOiSync(String oi) {
    return getByIndexSync(r'oi', [oi]);
  }

  Future<bool> deleteByOi(String oi) {
    return deleteByIndex(r'oi', [oi]);
  }

  bool deleteByOiSync(String oi) {
    return deleteByIndexSync(r'oi', [oi]);
  }

  Future<List<DeadlinesData?>> getAllByOi(List<String> oiValues) {
    final values = oiValues.map((e) => [e]).toList();
    return getAllByIndex(r'oi', values);
  }

  List<DeadlinesData?> getAllByOiSync(List<String> oiValues) {
    final values = oiValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'oi', values);
  }

  Future<int> deleteAllByOi(List<String> oiValues) {
    final values = oiValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'oi', values);
  }

  int deleteAllByOiSync(List<String> oiValues) {
    final values = oiValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'oi', values);
  }

  Future<Id> putByOi(DeadlinesData object) {
    return putByIndex(r'oi', object);
  }

  Id putByOiSync(DeadlinesData object, {bool saveLinks = true}) {
    return putByIndexSync(r'oi', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByOi(List<DeadlinesData> objects) {
    return putAllByIndex(r'oi', objects);
  }

  List<Id> putAllByOiSync(List<DeadlinesData> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'oi', objects, saveLinks: saveLinks);
  }

  Future<DeadlinesData?> getByAttestat(String attestat) {
    return getByIndex(r'attestat', [attestat]);
  }

  DeadlinesData? getByAttestatSync(String attestat) {
    return getByIndexSync(r'attestat', [attestat]);
  }

  Future<bool> deleteByAttestat(String attestat) {
    return deleteByIndex(r'attestat', [attestat]);
  }

  bool deleteByAttestatSync(String attestat) {
    return deleteByIndexSync(r'attestat', [attestat]);
  }

  Future<List<DeadlinesData?>> getAllByAttestat(List<String> attestatValues) {
    final values = attestatValues.map((e) => [e]).toList();
    return getAllByIndex(r'attestat', values);
  }

  List<DeadlinesData?> getAllByAttestatSync(List<String> attestatValues) {
    final values = attestatValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'attestat', values);
  }

  Future<int> deleteAllByAttestat(List<String> attestatValues) {
    final values = attestatValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'attestat', values);
  }

  int deleteAllByAttestatSync(List<String> attestatValues) {
    final values = attestatValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'attestat', values);
  }

  Future<Id> putByAttestat(DeadlinesData object) {
    return putByIndex(r'attestat', object);
  }

  Id putByAttestatSync(DeadlinesData object, {bool saveLinks = true}) {
    return putByIndexSync(r'attestat', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByAttestat(List<DeadlinesData> objects) {
    return putAllByIndex(r'attestat', objects);
  }

  List<Id> putAllByAttestatSync(List<DeadlinesData> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'attestat', objects, saveLinks: saveLinks);
  }
}

extension DeadlinesDataQueryWhereSort
    on QueryBuilder<DeadlinesData, DeadlinesData, QWhere> {
  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhere> anyDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'date'),
      );
    });
  }
}

extension DeadlinesDataQueryWhere
    on QueryBuilder<DeadlinesData, DeadlinesData, QWhereClause> {
  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause> idBetween(
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause> oiEqualTo(
      String oi) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'oi',
        value: [oi],
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause> oiNotEqualTo(
      String oi) {
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause> dateEqualTo(
      DateTime date) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'date',
        value: [date],
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause> dateNotEqualTo(
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause> dateGreaterThan(
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause> dateLessThan(
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause> dateBetween(
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause> attestatEqualTo(
      String attestat) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'attestat',
        value: [attestat],
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause>
      attestatNotEqualTo(String attestat) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'attestat',
              lower: [],
              upper: [attestat],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'attestat',
              lower: [attestat],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'attestat',
              lower: [attestat],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'attestat',
              lower: [],
              upper: [attestat],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause>
      quarterEqualToAnyDateOi(int quarter) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'quarter_date_oi',
        value: [quarter],
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause>
      quarterNotEqualToAnyDateOi(int quarter) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'quarter_date_oi',
              lower: [],
              upper: [quarter],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'quarter_date_oi',
              lower: [quarter],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'quarter_date_oi',
              lower: [quarter],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'quarter_date_oi',
              lower: [],
              upper: [quarter],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause>
      quarterGreaterThanAnyDateOi(
    int quarter, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'quarter_date_oi',
        lower: [quarter],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause>
      quarterLessThanAnyDateOi(
    int quarter, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'quarter_date_oi',
        lower: [],
        upper: [quarter],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause>
      quarterBetweenAnyDateOi(
    int lowerQuarter,
    int upperQuarter, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'quarter_date_oi',
        lower: [lowerQuarter],
        includeLower: includeLower,
        upper: [upperQuarter],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause>
      quarterDateEqualToAnyOi(int quarter, DateTime date) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'quarter_date_oi',
        value: [quarter, date],
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause>
      quarterEqualToDateNotEqualToAnyOi(int quarter, DateTime date) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'quarter_date_oi',
              lower: [quarter],
              upper: [quarter, date],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'quarter_date_oi',
              lower: [quarter, date],
              includeLower: false,
              upper: [quarter],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'quarter_date_oi',
              lower: [quarter, date],
              includeLower: false,
              upper: [quarter],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'quarter_date_oi',
              lower: [quarter],
              upper: [quarter, date],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause>
      quarterEqualToDateGreaterThanAnyOi(
    int quarter,
    DateTime date, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'quarter_date_oi',
        lower: [quarter, date],
        includeLower: include,
        upper: [quarter],
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause>
      quarterEqualToDateLessThanAnyOi(
    int quarter,
    DateTime date, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'quarter_date_oi',
        lower: [quarter],
        upper: [quarter, date],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause>
      quarterEqualToDateBetweenAnyOi(
    int quarter,
    DateTime lowerDate,
    DateTime upperDate, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'quarter_date_oi',
        lower: [quarter, lowerDate],
        includeLower: includeLower,
        upper: [quarter, upperDate],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause>
      quarterDateOiEqualTo(int quarter, DateTime date, String oi) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'quarter_date_oi',
        value: [quarter, date, oi],
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterWhereClause>
      quarterDateEqualToOiNotEqualTo(int quarter, DateTime date, String oi) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'quarter_date_oi',
              lower: [quarter, date],
              upper: [quarter, date, oi],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'quarter_date_oi',
              lower: [quarter, date, oi],
              includeLower: false,
              upper: [quarter, date],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'quarter_date_oi',
              lower: [quarter, date, oi],
              includeLower: false,
              upper: [quarter, date],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'quarter_date_oi',
              lower: [quarter, date],
              upper: [quarter, date, oi],
              includeUpper: false,
            ));
      }
    });
  }
}

extension DeadlinesDataQueryFilter
    on QueryBuilder<DeadlinesData, DeadlinesData, QFilterCondition> {
  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      attestatEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attestat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      attestatGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attestat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      attestatLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attestat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      attestatBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attestat',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      attestatStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'attestat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      attestatEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'attestat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      attestatContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'attestat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      attestatMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'attestat',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      attestatIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attestat',
        value: '',
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      attestatIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'attestat',
        value: '',
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      dateGreaterThan(
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      dateLessThan(
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> dateBetween(
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> idBetween(
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> k1EqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'k1',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      k1GreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'k1',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> k1LessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'k1',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> k1Between(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'k1',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> k2EqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'k2',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      k2GreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'k2',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> k2LessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'k2',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> k2Between(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'k2',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> k3EqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'k3',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      k3GreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'k3',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> k3LessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'k3',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> k3Between(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'k3',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> k4EqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'k4',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      k4GreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'k4',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> k4LessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'k4',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> k4Between(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'k4',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> kzEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kz',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      kzGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kz',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> kzLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kz',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> kzBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kz',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> oiEqualTo(
    String value, {
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      oiGreaterThan(
    String value, {
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> oiLessThan(
    String value, {
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> oiBetween(
    String lower,
    String upper, {
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> oiEndsWith(
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> oiContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'oi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> oiMatches(
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      oiIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'oi',
        value: '',
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      oiIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'oi',
        value: '',
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> paEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pa',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      paGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pa',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> paLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pa',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> paBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pa',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      quarterEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quarter',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      usersDeportamentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usersDeportament',
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      usersDeportamentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usersDeportament',
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      usersDeportamentLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'usersDeportament',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      usersDeportamentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'usersDeportament',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      usersDeportamentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'usersDeportament',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      usersDeportamentLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'usersDeportament',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      usersDeportamentLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'usersDeportament',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      usersDeportamentLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'usersDeportament',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> yearEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
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

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition> yearBetween(
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

extension DeadlinesDataQueryObject
    on QueryBuilder<DeadlinesData, DeadlinesData, QFilterCondition> {
  QueryBuilder<DeadlinesData, DeadlinesData, QAfterFilterCondition>
      usersDeportamentElement(FilterQuery<UsersDeportament> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'usersDeportament');
    });
  }
}

extension DeadlinesDataQueryLinks
    on QueryBuilder<DeadlinesData, DeadlinesData, QFilterCondition> {}

extension DeadlinesDataQuerySortBy
    on QueryBuilder<DeadlinesData, DeadlinesData, QSortBy> {
  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByAttestat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attestat', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy>
      sortByAttestatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attestat', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByK1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'k1', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByK1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'k1', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByK2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'k2', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByK2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'k2', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByK3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'k3', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByK3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'k3', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByK4() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'k4', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByK4Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'k4', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByKz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kz', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByKzDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kz', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByOi() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oi', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByOiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oi', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByPa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pa', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByPaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pa', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByQuarter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarter', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByQuarterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarter', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> sortByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension DeadlinesDataQuerySortThenBy
    on QueryBuilder<DeadlinesData, DeadlinesData, QSortThenBy> {
  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByAttestat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attestat', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy>
      thenByAttestatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attestat', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByK1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'k1', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByK1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'k1', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByK2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'k2', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByK2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'k2', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByK3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'k3', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByK3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'k3', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByK4() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'k4', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByK4Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'k4', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByKz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kz', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByKzDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kz', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByOi() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oi', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByOiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oi', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByPa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pa', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByPaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pa', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByQuarter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarter', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByQuarterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarter', Sort.desc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QAfterSortBy> thenByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension DeadlinesDataQueryWhereDistinct
    on QueryBuilder<DeadlinesData, DeadlinesData, QDistinct> {
  QueryBuilder<DeadlinesData, DeadlinesData, QDistinct> distinctByAttestat(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attestat', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QDistinct> distinctByK1() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'k1');
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QDistinct> distinctByK2() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'k2');
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QDistinct> distinctByK3() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'k3');
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QDistinct> distinctByK4() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'k4');
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QDistinct> distinctByKz() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kz');
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QDistinct> distinctByOi(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'oi', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QDistinct> distinctByPa() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pa');
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QDistinct> distinctByQuarter() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quarter');
    });
  }

  QueryBuilder<DeadlinesData, DeadlinesData, QDistinct> distinctByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'year');
    });
  }
}

extension DeadlinesDataQueryProperty
    on QueryBuilder<DeadlinesData, DeadlinesData, QQueryProperty> {
  QueryBuilder<DeadlinesData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DeadlinesData, String, QQueryOperations> attestatProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attestat');
    });
  }

  QueryBuilder<DeadlinesData, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<DeadlinesData, DateTime, QQueryOperations> k1Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'k1');
    });
  }

  QueryBuilder<DeadlinesData, DateTime, QQueryOperations> k2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'k2');
    });
  }

  QueryBuilder<DeadlinesData, DateTime, QQueryOperations> k3Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'k3');
    });
  }

  QueryBuilder<DeadlinesData, DateTime, QQueryOperations> k4Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'k4');
    });
  }

  QueryBuilder<DeadlinesData, DateTime, QQueryOperations> kzProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kz');
    });
  }

  QueryBuilder<DeadlinesData, String, QQueryOperations> oiProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'oi');
    });
  }

  QueryBuilder<DeadlinesData, DateTime, QQueryOperations> paProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pa');
    });
  }

  QueryBuilder<DeadlinesData, int, QQueryOperations> quarterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quarter');
    });
  }

  QueryBuilder<DeadlinesData, List<UsersDeportament>?, QQueryOperations>
      usersDeportamentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usersDeportament');
    });
  }

  QueryBuilder<DeadlinesData, int, QQueryOperations> yearProperty() {
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

const UsersDeportamentSchema = Schema(
  name: r'UsersDeportament',
  id: -105236230999470734,
  properties: {
    r'boss': PropertySchema(
      id: 0,
      name: r'boss',
      type: IsarType.bool,
    ),
    r'deportament': PropertySchema(
      id: 1,
      name: r'deportament',
      type: IsarType.string,
    ),
    r'fio': PropertySchema(
      id: 2,
      name: r'fio',
      type: IsarType.string,
    ),
    r'lab': PropertySchema(
      id: 3,
      name: r'lab',
      type: IsarType.string,
    )
  },
  estimateSize: _usersDeportamentEstimateSize,
  serialize: _usersDeportamentSerialize,
  deserialize: _usersDeportamentDeserialize,
  deserializeProp: _usersDeportamentDeserializeProp,
);

int _usersDeportamentEstimateSize(
  UsersDeportament object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.deportament.length * 3;
  bytesCount += 3 + object.fio.length * 3;
  bytesCount += 3 + object.lab.length * 3;
  return bytesCount;
}

void _usersDeportamentSerialize(
  UsersDeportament object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.boss);
  writer.writeString(offsets[1], object.deportament);
  writer.writeString(offsets[2], object.fio);
  writer.writeString(offsets[3], object.lab);
}

UsersDeportament _usersDeportamentDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UsersDeportament();
  object.boss = reader.readBool(offsets[0]);
  object.deportament = reader.readString(offsets[1]);
  object.fio = reader.readString(offsets[2]);
  object.lab = reader.readString(offsets[3]);
  return object;
}

P _usersDeportamentDeserializeProp<P>(
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
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension UsersDeportamentQueryFilter
    on QueryBuilder<UsersDeportament, UsersDeportament, QFilterCondition> {
  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      bossEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'boss',
        value: value,
      ));
    });
  }

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      deportamentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deportament',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      deportamentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deportament',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      deportamentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deportament',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      deportamentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deportament',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      deportamentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'deportament',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      deportamentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'deportament',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      deportamentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'deportament',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      deportamentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'deportament',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      deportamentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deportament',
        value: '',
      ));
    });
  }

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      deportamentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'deportament',
        value: '',
      ));
    });
  }

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      fioEqualTo(
    String value, {
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

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      fioGreaterThan(
    String value, {
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

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      fioLessThan(
    String value, {
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

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      fioBetween(
    String lower,
    String upper, {
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

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      fioStartsWith(
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

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      fioEndsWith(
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

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      fioContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      fioMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fio',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      fioIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fio',
        value: '',
      ));
    });
  }

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      fioIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fio',
        value: '',
      ));
    });
  }

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      labEqualTo(
    String value, {
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

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      labGreaterThan(
    String value, {
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

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      labLessThan(
    String value, {
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

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      labBetween(
    String lower,
    String upper, {
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

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      labStartsWith(
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

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      labEndsWith(
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

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      labContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      labMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lab',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      labIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lab',
        value: '',
      ));
    });
  }

  QueryBuilder<UsersDeportament, UsersDeportament, QAfterFilterCondition>
      labIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lab',
        value: '',
      ));
    });
  }
}

extension UsersDeportamentQueryObject
    on QueryBuilder<UsersDeportament, UsersDeportament, QFilterCondition> {}
