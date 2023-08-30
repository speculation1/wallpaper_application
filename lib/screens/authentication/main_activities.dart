import 'package:flutter/material.dart';
import 'package:wallpaper_app/screens/authentication/bottomNavPages/all_wallpaper.dart';
import 'package:wallpaper_app/screens/authentication/bottomNavPages/download_page.dart';

class MainActivityPage extends StatefulWidget {
  const MainActivityPage({super.key});

  @override
  State<MainActivityPage> createState() => _MainActivityPageState();
}

class _MainActivityPageState extends State<MainActivityPage> {
  int pageIndex = 0;

  List<Map> bottomNavItem = [
    {
      'icon': Icons.home,
      'title': 'Home',
    },
    {'icon': Icons.download, 'title': 'Download'}
  ];

  List<Widget> bottomNavPages = [
    const WallPaperHomePage(),
    const DownLoadPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wall Paper'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: bottomNavPages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (val) {
          setState(
            () {
              pageIndex = val;
            },
          );
        },
        items: List.generate(bottomNavItem.length, (index) {
          final data = bottomNavItem[index];
          return BottomNavigationBarItem(
              icon: Icon(data['icon']), label: data['title']);
        }),
        currentIndex: pageIndex,
      ),
    );
  }
}
