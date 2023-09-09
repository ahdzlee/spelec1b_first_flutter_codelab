import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state/my_app_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var wordPaird = appState.current;

    return Scaffold(
      body: Column(
        children: [
          const Text('A random Idea'),
          Text(wordPaird.asPascalCase),
        ],
      ),
    );
  }
}
