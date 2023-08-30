import 'package:flutter/material.dart';
import 'package:wallpaper_app/screens/authentication/main_activities.dart';
import 'package:wallpaper_app/utils/routers.dart';
import 'package:wallpaper_app/widgets/custom_button.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: customButton(
              text: 'Continue with google',
              onTap: () {
                nextPageOnly(page: const MainActivityPage(), context: context);
              },
              textColor: Colors.white,
              bgColor: Colors.blue,
              icon: const Icon(
                Icons.mail_lock_outlined,
                color: Colors.red,
              )),
        ),
      ),
    );
  }
}
