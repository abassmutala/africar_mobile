import 'package:flutter/material.dart';

class TripsView extends StatelessWidget {
  const TripsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Trips'),),
      body: Center(
        child: Text(
          'Trips',
          style: theme.textTheme.titleLarge,
        ),
      ),
    );
  }
}
