import 'package:exceler_plus_flutter/features/main/repository/i_repo_main.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: IRepoMain)
class RepoMain implements IRepoMain {
  SharedPreferences pref;

  RepoMain(this.pref);

  @override
  int getIndex() {
    return pref.getInt('tab_index') ?? 0;
  }

  @override
  setIndex(int index) {
    pref.setInt('tab_index', index);
  }
}
