import 'package:afro_style/src/sessions/i_session.dart';
import 'package:flutter/material.dart';

class Contato extends StatelessWidget implements ISession {
  const Contato({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Page 1'),
    );
  }
}
