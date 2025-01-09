import 'package:afro_style/src/sessions/i_session.dart';
import 'package:flutter/material.dart';

class SobreNos extends StatelessWidget implements ISession {
  const SobreNos({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Sobre Nós'),
    );
  }
}
