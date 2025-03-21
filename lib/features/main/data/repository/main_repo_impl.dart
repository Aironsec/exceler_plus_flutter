import 'package:exceler_plus_flutter/features/main/domain/repository/i_main_repo.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: IMainRepo)
class MainRepoImpl extends IMainRepo {
  SharedPreferences pref;

  MainRepoImpl(this.pref);

  @override
  int getIndex() {
    return pref.getInt('tab_index') ?? 0;
  }

  @override
  setIndex(int index) {
    pref.setInt('tab_index', index);
  }
}
