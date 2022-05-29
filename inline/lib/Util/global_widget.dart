import 'package:flutter/cupertino.dart';

import 'global_text.dart';

class GlobalWidget {
  Widget textTitle(String text) {
    return Text(
      text,
      style: const TextStyle(
          fontFamily: 'semibold', fontWeight: FontWeight.bold, fontSize: 28),
    );
  }
}
