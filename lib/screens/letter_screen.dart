import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_fonts/google_fonts.dart';
import '../data/alphabet_data.dart';
import '../theme/app_theme.dart';
import '../widgets/word_card.dart';

class LetterScreen extends StatefulWidget {
  final int initialIndex;

  const LetterScreen({super.key, this.initialIndex = 0});

  @override
  State<LetterScreen> createState() => _LetterScreenState();
}

class _LetterScreenState extends State<LetterScreen>
    with SingleTickerProviderStateMixin {
  late int _currentIndex;
  late FlutterTts _flutterTts;
  late AnimationController _letterAnimController;
  late Animation<double> _letterScaleAnim;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _flutterTts = FlutterTts();
    _initTts();

    _letterAnimController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _letterScaleAnim = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _letterAnimController, curve: Curves.elasticOut),
    );
    _letterAnimController.forward();
  }

  Future<void> _initTts() async {
    await _flutterTts.setLanguage('en-US');
    await _flutterTts.setSpeechRate(0.4);
    await _flutterTts.setPitch(1.2);
    // Speak the first letter
    _speakLetter();
  }

  Future<void> _speakLetter() async {
    final letter = alphabetData[_currentIndex].letter;
    await _flutterTts.speak('$letter!');
  }

  Future<void> _speakWord(String word) async {
    await _flutterTts.speak(word);
  }

  void _goToNext() {
    if (_currentIndex < alphabetData.length - 1) {
      setState(() {
        _currentIndex++;
      });
      _letterAnimController.reset();
      _letterAnimController.forward();
      _speakLetter();
    }
  }

  void _goToPrevious() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
      });
      _letterAnimController.reset();
      _letterAnimController.forward();
      _speakLetter();
    }
  }

  @override
  void dispose() {
    _flutterTts.stop();
    _letterAnimController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final letterItem = alphabetData[_currentIndex];
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // Top bar with back button and letter counter
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.arrow_back_rounded, size: 28),
                    color: Colors.grey.shade700,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    decoration: BoxDecoration(
                      color: letterItem.color.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '${_currentIndex + 1} / 26',
                      style: GoogleFonts.baloo2(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: letterItem.color,
                      ),
                    ),
                  ),
                  // Sound button — re-speak the letter
                  IconButton(
                    onPressed: _speakLetter,
                    icon: const Icon(Icons.volume_up_rounded, size: 28),
                    color: letterItem.color,
                  ),
                ],
              ),
            ),

            // Progress bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  value: (_currentIndex + 1) / 26,
                  minHeight: 6,
                  backgroundColor: Colors.grey.shade200,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(letterItem.color),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Big letter in a squared box
            Expanded(
              flex: 4,
              child: Center(
                child: ScaleTransition(
                  scale: _letterScaleAnim,
                  child: GestureDetector(
                    onTap: _speakLetter,
                    child: Container(
                      width: screenWidth * 0.55,
                      height: screenWidth * 0.55,
                      decoration: BoxDecoration(
                        color: letterItem.color,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: letterItem.color.withValues(alpha: 0.4),
                            blurRadius: 20,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              letterItem.letter,
                              style: GoogleFonts.baloo2(
                                fontSize: 100,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              letterItem.letter.toLowerCase(),
                              style: GoogleFonts.baloo2(
                                fontSize: 50,
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withValues(alpha: 0.7),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // 3 illustration word cards
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: letterItem.words.map((word) {
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: WordCard(
                          word: word,
                          onTap: () => _speakWord(word.word),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),

            const SizedBox(height: 8),

            // Navigation arrows
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Left arrow
                  _NavButton(
                    icon: Icons.arrow_back_rounded,
                    color: _currentIndex > 0
                        ? letterItem.color
                        : Colors.grey.shade300,
                    onTap: _currentIndex > 0 ? _goToPrevious : null,
                    label: _currentIndex > 0
                        ? alphabetData[_currentIndex - 1].letter
                        : '',
                  ),

                  // Letter dots indicator
                  Text(
                    letterItem.letter,
                    style: GoogleFonts.baloo2(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: letterItem.color,
                    ),
                  ),

                  // Right arrow
                  _NavButton(
                    icon: Icons.arrow_forward_rounded,
                    color: _currentIndex < 25
                        ? letterItem.color
                        : Colors.grey.shade300,
                    onTap: _currentIndex < 25 ? _goToNext : null,
                    label: _currentIndex < 25
                        ? alphabetData[_currentIndex + 1].letter
                        : '',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback? onTap;
  final String label;

  const _NavButton({
    required this.icon,
    required this.color,
    required this.onTap,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.15),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon == Icons.arrow_back_rounded && label.isNotEmpty) ...[
              Text(
                label,
                style: GoogleFonts.baloo2(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
              const SizedBox(width: 4),
            ],
            Icon(icon, color: color, size: 28),
            if (icon == Icons.arrow_forward_rounded && label.isNotEmpty) ...[
              const SizedBox(width: 4),
              Text(
                label,
                style: GoogleFonts.baloo2(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
