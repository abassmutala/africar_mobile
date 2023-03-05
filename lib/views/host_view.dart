import 'package:flutter/material.dart';

class HostView extends StatelessWidget {
  const HostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Text(
          'Host',
          style: theme.textTheme.titleLarge,
        ),
      ),
    );
  }
}
