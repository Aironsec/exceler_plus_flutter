import 'package:exceler_plus_flutter/features/auth/presentation/body_auth.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyAuth(),
    );
  }
}
