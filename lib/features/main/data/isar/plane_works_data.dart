import 'package:exceler_plus_flutter/features/main/data/isar/bid_data.dart';
import 'package:exceler_plus_flutter/features/main/data/isar/deadlines_data.dart';
import 'package:exceler_plus_flutter/features/main/data/isar/specification_data.dart';
import 'package:isar/isar.dart';
import 'package:jiffy/jiffy.dart';

part 'plane_works_data.g.dart';

@collection
class PlaneWorksData {
  Id? id;
  @Index(caseSensitive: false)
  String? oi;
  @Index()
  late DateTime dateExecution;
  @Index(composite: [CompositeIndex('quarter')])
  int get year => Jiffy.parseFromDateTime(dateExecution).year;
  int get quarter => Jiffy.parseFromDateTime(dateExecution).quarter;
  TypeWork typeWorks = TypeWork();
  MainDocument mainDocument = MainDocument();
  bool inBid = false;
  WorkDone workDone = WorkDone();
  final specificationLinks = IsarLinks<SpecificationData>();
  @Backlink(to: 'planeLinks')
  final bidLink = IsarLink<BidData>();
}

@embedded
class WorkDone {
  bool done = false;
  String numberDoc = '';
}

@embedded
class TypeWork {
  @Enumerated(EnumType.value, 'name')
  Abbreviation abbr = Abbreviation.k;
  String get nameTypeWorks {
    return switch (abbr) {
      Abbreviation.a => 'А',
      Abbreviation.dai => 'ДАИ',
      Abbreviation.k => 'К',
      Abbreviation.kz => 'КЗ',
      Abbreviation.pa => 'ПА',
      Abbreviation.si => 'СИ',
      Abbreviation.sp => 'СП',
      Abbreviation.v => 'В',
    };
  }

  String get note {
    return (abbr == Abbreviation.v || abbr == Abbreviation.k)
        ? 'Собственные силы'
        : 'Орган по аттестации';
  }
}

@embedded
class MainDocument {
  @Enumerated(EnumType.value, 'name')
  TypeDocs typeDoc = TypeDocs.plan;
  String numberDoc = 'По плану';
  UsersDeportament? usersDeportament;
  String? note;
}

enum TypeDocs {
  plan('Пран работ'),
  memo('Служебная записка');

  final String name;
  const TypeDocs(this.name);
}

enum Abbreviation {
  v('Вывод из эксплуатации'),
  a('Аттестация'),
  pa('Переаттестация'),
  kz('Контроль защищённости'),
  dai('Дополнительные аттестационные испытания'),
  k('Контроль эксплуатации'),
  sp('Специальная проверка'),
  si('Специальные исследования');

  final String name;
  const Abbreviation(this.name);
}
