import 'package:flutter/material.dart';

class LetterWord {
  final String word;
  final String emoji;
  final Color color;

  const LetterWord({
    required this.word,
    required this.emoji,
    required this.color,
  });
}

class LetterItem {
  final String letter;
  final Color color;
  final List<LetterWord> words;

  const LetterItem({
    required this.letter,
    required this.color,
    required this.words,
  });
}
