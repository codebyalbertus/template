import 'package:app/constants/link.dart';
import 'package:app/screens/webview_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebviewScreen(url: url);
  }
}
