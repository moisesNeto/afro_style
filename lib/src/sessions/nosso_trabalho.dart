import 'package:afro_style/src/sessions/i_session.dart';
import 'package:flutter/material.dart';

class NossoTrabalho extends StatelessWidget implements ISession {
  const NossoTrabalho({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Nosso Trabalho'),
    );
  }
}
