import 'package:flutter/material.dart';
import 'package:wallpaper_app/screens/authentication/bottomNavPages/wallpaper_paper/add_wallpaper.dart';
import 'package:wallpaper_app/utils/routers.dart';

class WallPaperHomePage extends StatefulWidget {
  const WallPaperHomePage({super.key});

  @override
  State<WallPaperHomePage> createState() => _WallPaperHomePageState();
}

class _WallPaperHomePageState extends State<WallPaperHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('All wallPaper'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          nextPage(context: context, page: const AddWallPaper());
        },
        child: Text('Unload'),
      ),
    );
  }
}
