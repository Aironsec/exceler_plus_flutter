import 'package:exceler_plus_flutter/di/di.dart';
import 'package:exceler_plus_flutter/features/auth/presentation/auth_screen.dart';
import 'package:exceler_plus_flutter/features/auth/presentation/error_screen.dart';
import 'package:exceler_plus_flutter/features/lic/presentation/cubit/lic_cubit.dart';
import 'package:exceler_plus_flutter/features/lic/presentation/registration_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exceler plus',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        lazy: false,
        create: (context) => getIt<LicCubit>(),
        child: BlocBuilder<LicCubit, LicState>(
          builder: (context, state) {
            return state.when(
              notLic: () => const RegistrationScreen(),
              lic: (lic) => AuthScreen(lic),
              error: (error) => ErrorScreen(text: error),
            );
          },
        ),
      ),
    );
  }
}
