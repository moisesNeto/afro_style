import 'package:afro_style/src/sessions/i_session.dart';
import 'package:flutter/material.dart';

class Localizacao extends StatelessWidget implements ISession {
  const Localizacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Localização'),
    );
  }
}
