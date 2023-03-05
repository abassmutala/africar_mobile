import 'package:flutter/material.dart';

class FavouritesView extends StatelessWidget {
  const FavouritesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Text(
          'Favourites',
          style: theme.textTheme.titleLarge,
        ),
      ),
    );
  }
}
