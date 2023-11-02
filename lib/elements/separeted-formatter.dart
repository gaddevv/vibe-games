import 'package:flutter/services.dart';

class ThousandsSeparatorInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) {
      return newValue;
    }

    // Убираем пробелы из нового значения, чтобы правильно посчитать количество цифр.
    String cleanText = newValue.text.replaceAll(' ', '');

    // Создаем новую строку с пробелами на каждой тысяче цифр.
    String formattedText = '';
    for (int i = 0; i < cleanText.length; i++) {
      formattedText += cleanText[i];
      if ((cleanText.length - i - 1) % 3 == 0 && i != cleanText.length - 1) {
        formattedText += ' ';
      }
    }

    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}