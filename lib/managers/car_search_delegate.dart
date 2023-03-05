import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CarSearchDelegate extends SearchDelegate {
  CarSearchDelegate({required final String hintText})
      : super(searchFieldLabel: hintText);

  @override
  PreferredSizeWidget? buildBottom(BuildContext context) {
    return const PreferredSize(
      preferredSize: Size.fromHeight(56.0),
      child: ListTile(
        leading: Icon(Ionicons.navigate_outline),
        title: Text('Current location'),
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        tooltip: 'Clear',
        icon: (query != '') ? const Icon(Ionicons.close) : Container(),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return const BackButton();
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
