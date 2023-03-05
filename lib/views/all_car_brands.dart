import 'package:africar/constants/ui_constants.dart';
import 'package:africar/src/car_brands.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class AllCarBrands extends StatelessWidget {
  const AllCarBrands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Browse by make'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(64),
          child: Row(
            children: [
              Flexible(
                child: Container(
                  width: ScreenSize.width,
                  padding: Insets.standardPadding,
                  child: OutlinedButton.icon(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0.0),
                      backgroundColor:
                          MaterialStateProperty.all(theme.colorScheme.surface),
                    ),
                    onPressed: () {
                      // selectLocation();
                    },
                    icon: const Icon(Ionicons.search_outline),
                    label: const Text('Search car brands...'),
                  ),
                ),
              ),
              SizedBox(
                height: 36,
                child: FloatingActionButton(
                  elevation: 0.0,
                  backgroundColor: Colors.white,
                  shape: CircleBorder(
                    side: BorderSide(color: Colors.grey[700]!),
                  ),
                  onPressed: () {},
                  child: const Icon(Ionicons.options_outline),
                ),
              )
            ],
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: carBrands.length,
        separatorBuilder: ((context, index) {
          return const Divider(
            height: 8,
            thickness: 1,
          );
        }),
        itemBuilder: ((context, index) {
          return ListTile(
            dense: true,
            leading: SizedBox(
                height: 24, child: Image.asset(carBrands[index]['logo'])),
            title: Text(
              carBrands[index]['name'],
              style: theme.textTheme.titleMedium,
            ),
            onTap: () {},
          );
        }),
      ),
    );
  }
}
