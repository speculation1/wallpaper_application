import 'package:flutter/material.dart';

class DownLoadPage extends StatefulWidget {
  const DownLoadPage({super.key});

  @override
  State<DownLoadPage> createState() => _DownLoadPageState();
}

class _DownLoadPageState extends State<DownLoadPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('download'),
      ),
    );
  }
}
