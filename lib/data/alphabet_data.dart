import 'package:flutter/material.dart';
import '../models/letter_item.dart';

const List<LetterItem> alphabetData = [
  LetterItem(letter: 'A', color: Color(0xFFFF6B6B), words: [
    LetterWord(word: 'Apple', emoji: '🍎', color: Color(0xFFFF6B6B)),
    LetterWord(word: 'Aeroplane', emoji: '✈️', color: Color(0xFF4ECDC4)),
    LetterWord(word: 'Ant', emoji: '🐜', color: Color(0xFFFFE66D)),
  ]),
  LetterItem(letter: 'B', color: Color(0xFF4ECDC4), words: [
    LetterWord(word: 'Ball', emoji: '⚽', color: Color(0xFF4ECDC4)),
    LetterWord(word: 'Banana', emoji: '🍌', color: Color(0xFFFFE66D)),
    LetterWord(word: 'Bird', emoji: '🐦', color: Color(0xFF45B7D1)),
  ]),
  LetterItem(letter: 'C', color: Color(0xFFFFE66D), words: [
    LetterWord(word: 'Cat', emoji: '🐱', color: Color(0xFFFFE66D)),
    LetterWord(word: 'Car', emoji: '🚗', color: Color(0xFFFF6B6B)),
    LetterWord(word: 'Cake', emoji: '🎂', color: Color(0xFFDDA0DD)),
  ]),
  LetterItem(letter: 'D', color: Color(0xFF45B7D1), words: [
    LetterWord(word: 'Dog', emoji: '🐶', color: Color(0xFF45B7D1)),
    LetterWord(word: 'Duck', emoji: '🦆', color: Color(0xFFFFE66D)),
    LetterWord(word: 'Drum', emoji: '🥁', color: Color(0xFFFF6B6B)),
  ]),
  LetterItem(letter: 'E', color: Color(0xFFDDA0DD), words: [
    LetterWord(word: 'Elephant', emoji: '🐘', color: Color(0xFFDDA0DD)),
    LetterWord(word: 'Egg', emoji: '🥚', color: Color(0xFFFFE66D)),
    LetterWord(word: 'Eagle', emoji: '🦅', color: Color(0xFF45B7D1)),
  ]),
  LetterItem(letter: 'F', color: Color(0xFF96CEB4), words: [
    LetterWord(word: 'Fish', emoji: '🐟', color: Color(0xFF45B7D1)),
    LetterWord(word: 'Frog', emoji: '🐸', color: Color(0xFF96CEB4)),
    LetterWord(word: 'Flower', emoji: '🌸', color: Color(0xFFDDA0DD)),
  ]),
  LetterItem(letter: 'G', color: Color(0xFFFECEA8), words: [
    LetterWord(word: 'Giraffe', emoji: '🦒', color: Color(0xFFFECEA8)),
    LetterWord(word: 'Grapes', emoji: '🍇', color: Color(0xFFDDA0DD)),
    LetterWord(word: 'Guitar', emoji: '🎸', color: Color(0xFFFF6B6B)),
  ]),
  LetterItem(letter: 'H', color: Color(0xFFFF847C), words: [
    LetterWord(word: 'House', emoji: '🏠', color: Color(0xFFFF847C)),
    LetterWord(word: 'Horse', emoji: '🐴', color: Color(0xFFFECEA8)),
    LetterWord(word: 'Hat', emoji: '🎩', color: Color(0xFF45B7D1)),
  ]),
  LetterItem(letter: 'I', color: Color(0xFFE8A87C), words: [
    LetterWord(word: 'Ice Cream', emoji: '🍦', color: Color(0xFFE8A87C)),
    LetterWord(word: 'Igloo', emoji: '🏔️', color: Color(0xFF45B7D1)),
    LetterWord(word: 'Insect', emoji: '🦗', color: Color(0xFF96CEB4)),
  ]),
  LetterItem(letter: 'J', color: Color(0xFF85CDCA), words: [
    LetterWord(word: 'Jellyfish', emoji: '🪼', color: Color(0xFF85CDCA)),
    LetterWord(word: 'Juice', emoji: '🧃', color: Color(0xFFFF6B6B)),
    LetterWord(word: 'Jet', emoji: '🛩️', color: Color(0xFF45B7D1)),
  ]),
  LetterItem(letter: 'K', color: Color(0xFFD4A5A5), words: [
    LetterWord(word: 'Kite', emoji: '🪁', color: Color(0xFFD4A5A5)),
    LetterWord(word: 'King', emoji: '🤴', color: Color(0xFFFFE66D)),
    LetterWord(word: 'Koala', emoji: '🐨', color: Color(0xFF96CEB4)),
  ]),
  LetterItem(letter: 'L', color: Color(0xFFFFAA85), words: [
    LetterWord(word: 'Lion', emoji: '🦁', color: Color(0xFFFFAA85)),
    LetterWord(word: 'Lemon', emoji: '🍋', color: Color(0xFFFFE66D)),
    LetterWord(word: 'Ladybug', emoji: '🐞', color: Color(0xFFFF6B6B)),
  ]),
  LetterItem(letter: 'M', color: Color(0xFFB5EAD7), words: [
    LetterWord(word: 'Monkey', emoji: '🐵', color: Color(0xFFB5EAD7)),
    LetterWord(word: 'Moon', emoji: '🌙', color: Color(0xFFFFE66D)),
    LetterWord(word: 'Mouse', emoji: '🐭', color: Color(0xFFDDA0DD)),
  ]),
  LetterItem(letter: 'N', color: Color(0xFFC7CEEA), words: [
    LetterWord(word: 'Nest', emoji: '🪺', color: Color(0xFFC7CEEA)),
    LetterWord(word: 'Nut', emoji: '🥜', color: Color(0xFFFECEA8)),
    LetterWord(word: 'Narwhal', emoji: '🐳', color: Color(0xFF45B7D1)),
  ]),
  LetterItem(letter: 'O', color: Color(0xFFFFB347), words: [
    LetterWord(word: 'Orange', emoji: '🍊', color: Color(0xFFFFB347)),
    LetterWord(word: 'Owl', emoji: '🦉', color: Color(0xFFFECEA8)),
    LetterWord(word: 'Octopus', emoji: '🐙', color: Color(0xFFDDA0DD)),
  ]),
  LetterItem(letter: 'P', color: Color(0xFFFF6F61), words: [
    LetterWord(word: 'Penguin', emoji: '🐧', color: Color(0xFF45B7D1)),
    LetterWord(word: 'Pizza', emoji: '🍕', color: Color(0xFFFF6F61)),
    LetterWord(word: 'Parrot', emoji: '🦜', color: Color(0xFF96CEB4)),
  ]),
  LetterItem(letter: 'Q', color: Color(0xFF88D8B0), words: [
    LetterWord(word: 'Queen', emoji: '👸', color: Color(0xFFDDA0DD)),
    LetterWord(word: 'Quail', emoji: '🐦', color: Color(0xFF88D8B0)),
    LetterWord(word: 'Quilt', emoji: '🛏️', color: Color(0xFFC7CEEA)),
  ]),
  LetterItem(letter: 'R', color: Color(0xFFFF6B6B), words: [
    LetterWord(word: 'Rabbit', emoji: '🐰', color: Color(0xFFFF6B6B)),
    LetterWord(word: 'Rainbow', emoji: '🌈', color: Color(0xFFFFE66D)),
    LetterWord(word: 'Rocket', emoji: '🚀', color: Color(0xFF45B7D1)),
  ]),
  LetterItem(letter: 'S', color: Color(0xFFFFD93D), words: [
    LetterWord(word: 'Star', emoji: '⭐', color: Color(0xFFFFD93D)),
    LetterWord(word: 'Snake', emoji: '🐍', color: Color(0xFF96CEB4)),
    LetterWord(word: 'Sun', emoji: '☀️', color: Color(0xFFFFE66D)),
  ]),
  LetterItem(letter: 'T', color: Color(0xFF6BCB77), words: [
    LetterWord(word: 'Tiger', emoji: '🐯', color: Color(0xFFFFAA85)),
    LetterWord(word: 'Train', emoji: '🚂', color: Color(0xFF6BCB77)),
    LetterWord(word: 'Tree', emoji: '🌳', color: Color(0xFF96CEB4)),
  ]),
  LetterItem(letter: 'U', color: Color(0xFF4D96FF), words: [
    LetterWord(word: 'Umbrella', emoji: '☂️', color: Color(0xFF4D96FF)),
    LetterWord(word: 'Unicorn', emoji: '🦄', color: Color(0xFFDDA0DD)),
    LetterWord(word: 'UFO', emoji: '🛸', color: Color(0xFF96CEB4)),
  ]),
  LetterItem(letter: 'V', color: Color(0xFF9B59B6), words: [
    LetterWord(word: 'Violin', emoji: '🎻', color: Color(0xFF9B59B6)),
    LetterWord(word: 'Volcano', emoji: '🌋', color: Color(0xFFFF6B6B)),
    LetterWord(word: 'Van', emoji: '🚐', color: Color(0xFF45B7D1)),
  ]),
  LetterItem(letter: 'W', color: Color(0xFF3498DB), words: [
    LetterWord(word: 'Whale', emoji: '🐋', color: Color(0xFF3498DB)),
    LetterWord(word: 'Watermelon', emoji: '🍉', color: Color(0xFF96CEB4)),
    LetterWord(word: 'Watch', emoji: '⌚', color: Color(0xFFFECEA8)),
  ]),
  LetterItem(letter: 'X', color: Color(0xFFE74C3C), words: [
    LetterWord(word: 'Xylophone', emoji: '🎵', color: Color(0xFFE74C3C)),
    LetterWord(word: 'X-ray', emoji: '🦴', color: Color(0xFF45B7D1)),
    LetterWord(word: 'Fox', emoji: '🦊', color: Color(0xFFFFAA85)),
  ]),
  LetterItem(letter: 'Y', color: Color(0xFFF39C12), words: [
    LetterWord(word: 'Yak', emoji: '🐃', color: Color(0xFFF39C12)),
    LetterWord(word: 'Yarn', emoji: '🧶', color: Color(0xFFDDA0DD)),
    LetterWord(word: 'Yogurt', emoji: '🥛', color: Color(0xFFFFE66D)),
  ]),
  LetterItem(letter: 'Z', color: Color(0xFF1ABC9C), words: [
    LetterWord(word: 'Zebra', emoji: '🦓', color: Color(0xFF1ABC9C)),
    LetterWord(word: 'Zoo', emoji: '🦁', color: Color(0xFF96CEB4)),
    LetterWord(word: 'Zigzag', emoji: '⚡', color: Color(0xFFFFE66D)),
  ]),
];
