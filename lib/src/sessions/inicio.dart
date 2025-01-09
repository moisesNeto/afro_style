import 'package:afro_style/src/sessions/i_session.dart';
import 'package:flutter/material.dart';

class Inicio extends StatelessWidget implements ISession {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Página Inicial'),
    );
  }
}
