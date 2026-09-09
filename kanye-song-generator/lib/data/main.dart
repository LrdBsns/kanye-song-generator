import 'dart:math';
import 'package:flutter/material.dart';
import 'data/kanye_songs.dart';

void main() {
  runApp(const KanyeApp());
}

class KanyeApp extends StatelessWidget {
  const KanyeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ye Song Generator',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0F0F0F), // Minimalistisches Tiefschwarz
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Song? currentSong;
  bool showButton = true;
  final Random _random = Random();

  void _generateSong() {
    setState(() {
      currentSong = kanyeSongs[_random.nextInt(kanyeSongs.length)];
      showButton = false;
    });
  }

  void _resetView() {
    setState(() {
      showButton = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          if (!showButton) {
            _resetView();
          }
        },
        child: SafeArea(
          child: Center(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              switchInCurve: Curves.easeOutCubic,
              switchOutCurve: Curves.easeInCubic,
              child: showButton
                  ? _buildButton()
                  : _buildSongInfo(currentSong!),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton() {
    return KeyedSubtree(
      key: const ValueKey("Button"),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "YE",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              letterSpacing: 6.0,
              color: Colors.white54,
            ),
          ),
          const SizedBox(height: 40),
          GestureDetector(
            onTap: _generateSong,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF1F1F1F),
                border: Border.all(color: Colors.white24, width: 1.5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 25,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  "DISCOVER",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSongInfo(Song song) {
    return KeyedSubtree(
      key: ValueKey(song.title),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              song.title.toUpperCase(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              song.album,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              song.year,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Colors.white38,
              ),
            ),
            if (song.features.isNotEmpty) ...[
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white12),
                ),
                child: Text(
                  "ft. ${song.features}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white60,
                  ),
                ),
              ),
            ],
            const SizedBox(height: 60),
            const Text(
              "TAP ANYWHERE TO RESET",
              style: TextStyle(
                fontSize: 10,
                letterSpacing: 2.0,
                color: Colors.white24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}