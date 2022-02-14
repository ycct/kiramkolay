import 'package:flutter/material.dart';

RichText buildRichText() {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(children: <TextSpan>[
      myTextSpan("Devam Ederek "),
      buildTextSpanUnderline("Kullanım Koşullarını"),
      myTextSpan(" ve "),
      buildTextSpanUnderline("Gizlilik Politikasını"),
      myTextSpan(" kabul etmiş olursunuz.")
    ]),
  );
}

TextSpan buildTextSpanUnderline(String title) {
  return TextSpan(
    text: title,
    style: const TextStyle(
      color: Colors.blue,
      decoration: TextDecoration.underline,
    ),
  );
}


TextSpan myTextSpan(String title) {
  return TextSpan(
    text: title,
    style: const TextStyle(color: Colors.black87),
  );
}