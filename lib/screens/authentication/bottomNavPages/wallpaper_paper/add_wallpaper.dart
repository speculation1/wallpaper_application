import 'package:flutter/material.dart';
import 'package:wallpaper_app/widgets/custom_button.dart';

class AddWallPaper extends StatefulWidget {
  const AddWallPaper({super.key});

  @override
  State<AddWallPaper> createState() => _AddWallPaperState();
}

class _AddWallPaperState extends State<AddWallPaper> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add WallPaper'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _textEditingController,
                    decoration: const InputDecoration(
                      label: Text('Enter Price(Optional)'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const SizedBox(
                      width: 50,
                      height: 50,
                      child: Icon(Icons.camera),
                    ),
                  ),
                  customButton(
                    text: 'Upload',
                    onTap: () {},
                    textColor: Colors.white,
                    bgColor: Colors.blue,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
