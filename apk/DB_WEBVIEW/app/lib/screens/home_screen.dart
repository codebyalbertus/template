import 'package:app/screens/webview_screen.dart';
import 'package:flutter/material.dart';

import '../services/database_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DatabaseService.getURL(),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          String url = snapshot.data!;

          return WebviewScreen(url: url);
        }

        return const SizedBox.shrink();
      },
    );
  }
}
