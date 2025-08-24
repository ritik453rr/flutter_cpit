import 'package:flutter/material.dart';

/// Widget to restart the App.
class RestartApp extends StatefulWidget {
  final Widget child;

  const RestartApp({super.key, required this.child});

  static void restartApp(BuildContext context) {
    final _RestartAppState? state =
        context.findAncestorStateOfType<_RestartAppState>();
    state?.restartApp();
  }

  @override
  State<RestartApp> createState() => _RestartAppState();
}

class _RestartAppState extends State<RestartApp> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey(); // Rebuild the whole subtree
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(key: key, child: widget.child);
  }
}
