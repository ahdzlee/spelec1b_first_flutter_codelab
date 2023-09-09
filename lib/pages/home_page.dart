import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state/my_app_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var wordPair = appState.current;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('A random Idea'),
            Text(wordPair.asPascalCase),
            ElevatedButton(
              onPressed: () => appState.generateWordPair(),
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
