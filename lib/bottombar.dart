import 'package:flutter/material.dart';
import 'package:videoplayer_miniproject/screens/chart/chart_screen.dart';
import 'package:videoplayer_miniproject/screens/playlist/playlist_screen.dart';
import 'package:videoplayer_miniproject/screens/settings/settings_screen.dart';
import 'package:videoplayer_miniproject/screens/video/video_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int indexnum = 0;

  final screens = [
    const VideoScreen(),
    const PlaylistScreen(),
    const BarChartSample2(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            iconSize: 26,
            unselectedFontSize: 15,
            selectedFontSize: 15,
            enableFeedback: true,
            fixedColor: Colors.orange.shade700,
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_sharp),
                label: 'Video',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.playlist_add_sharp), label: 'Playlist'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart_outlined), label: 'Charts'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings')
            ],
            currentIndex: indexnum,
            onTap: (int index) {
              setState(() {
                indexnum = index;
              });
            },
          ),
          body: screens.elementAt(indexnum)),
    );
  }
}
