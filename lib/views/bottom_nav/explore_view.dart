import 'package:africar/constants/route_names.dart';
import 'package:africar/constants/ui_constants.dart';
import 'package:africar/managers/car_search_delegate.dart';
import 'package:africar/managers/locator.dart';
import 'package:africar/services/navigation_service.dart';
import 'package:africar/widgets/section_header.dart';
import 'package:africar/widgets/type_chip.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({Key? key}) : super(key: key);

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

final NavigationService _navigationService = locator<NavigationService>();

final List<Map<String, dynamic>> cars = [
  {
    'photo': 'assets/images/2022-Jeep-Compass.jpeg',
    'make': 'Jeep',
    'model': 'Compass',
    'year': 2022,
    'seats': '5',
    'doors': '4',
    'transmission': 'M',
    'price': 120,
    'trips': 6,
    'stars': 4.5,
  },
  {
    'photo': 'assets/images/2021-Land_Rover-Range_Rover_Velar.jpeg',
    'make': 'Land Rover',
    'model': 'Range Rover Velar',
    'year': 2021,
    'seats': '5',
    'doors': '4',
    'transmission': 'A',
    'price': 180,
    'trips': 2,
    'stars': 4.7,
  },
  {
    'photo': 'assets/images/ford.jpeg',
    'make': 'Ford',
    'model': 'Fiesta',
    'year': 2017,
    'seats': '5',
    'doors': '4',
    'transmission': 'M',
    'price': 80,
    'trips': 10,
    'stars': 4.7,
  },
  {
    'photo': 'assets/images/2022-Ford-Ranger.jpeg',
    'make': 'Ford',
    'model': 'Ranger',
    'year': 2022,
    'seats': '3',
    'doors': '2',
    'transmission': 'M',
    'price': 150,
    'trips': 4,
    'stars': 4.5,
  },
  {
    'photo': 'assets/images/2022-Mercedes-Benz-SL.jpeg',
    'make': 'Mercedes Benz',
    'model': 'SL',
    'year': 2022,
    'seats': '5',
    'doors': '4',
    'transmission': 'A',
    'price': 100,
    'trips': 8,
    'stars': 4.5,
  },
  {
    'photo': 'assets/images/2022-Audi-RS_6_Avant.jpeg',
    'make': 'Audi',
    'model': 'RS 6 Avant',
    'year': 2022,
    'seats': '5',
    'doors': '4',
    'transmission': 'A',
    'price': 80,
    'trips': 13,
    'stars': 4.0,
  },
  {
    'photo': 'assets/images/2023-MINI-Clubman.jpeg',
    'make': 'Mini',
    'model': 'Clubman',
    'year': 2023,
    'seats': '5',
    'doors': '4',
    'transmission': 'A',
    'price': 100,
    'trips': 13,
    'stars': 4.0,
  },
  {
    'photo': 'assets/images/2023-Hyundai-Santa_Cruz.jpeg',
    'make': 'Hyundai',
    'model': 'Santa Cruz',
    'year': 2022,
    'seats': '5',
    'doors': '4',
    'transmission': 'A',
    'price': 100,
    'trips': 13,
    'stars': 4.0,
  },
];

final List<Map<String, dynamic>> brands = [
  {
    'name': 'Aston Martin',
    'logo': 'assets/images/brand_logos/Aston_Martin.png'
  },
  {'name': 'Audi', 'logo': 'assets/images/brand_logos/Audi.png'},
  {'name': 'BMW', 'logo': 'assets/images/brand_logos/BMW.png'},
  {'name': 'Chevrolet', 'logo': 'assets/images/brand_logos/Chevrolet.png'},
  {'name': 'Ford', 'logo': 'assets/images/brand_logos/Ford.png'},
  {'name': 'Honda', 'logo': 'assets/images/brand_logos/Honda.png'},
  {'name': 'Hyundai', 'logo': 'assets/images/brand_logos/Hyundai.png'},
  {'name': 'Toyota', 'logo': 'assets/images/brand_logos/Toyota.png'},
];

class _ExploreViewState extends State<ExploreView> {
  Future<void> selectLocation() async {
    final selectedLocaton = await showSearch(
      context: context,
      delegate: CarSearchDelegate(hintText: 'City, airport, address, or hotel'),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final ThemeData theme = Theme.of(context);
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
          <Widget>[
        sliverAppBar(theme),
      ],
      body: SingleChildScrollView(
        child: Column(children: [
          recentlyViewed(theme),
          Spacing.verticalSpace8,
          browseByLocation(),
          Spacing.verticalSpace8,
          browseByMake(theme),
          Spacing.verticalSpace8,
          browseByType(),
        ]),
      ),
    );
  }

  SliverAppBar sliverAppBar(ThemeData theme) {
    return SliverAppBar(
      expandedHeight: ScreenSize.width * 0.75,
      floating: true,
      pinned: true,
      title: Container(
        width: ScreenSize.width,
        padding: const EdgeInsets.only(bottom: 16.0),
        child: OutlinedButton.icon(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0.0),
            backgroundColor:
                MaterialStateProperty.all(theme.colorScheme.surface),
          ),
          onPressed: () {
            selectLocation();
          },
          icon: const Icon(Ionicons.search_outline),
          label: const Text('Search cars...'),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/bmw.jpeg',
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.black45,
            ),
            Center(
              child: Text(
                'Way better than car rental',
                style: theme.textTheme.headlineLarge!
                    .copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column recentlyViewed(ThemeData theme) {
    return Column(
      children: [
        const SectionHeader(
          title: 'Recently viewed',
        ),
        Spacing.verticalSpace4,
        SizedBox(
          height: 256,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: cars
                .map(
                  (car) => Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: 360.0,
                    child: InkWell(
                      onTap: () {
                        _navigationService.navigateTo(carDetailsRoute);
                      },
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(12.0),
                                ),
                                child: SizedBox(
                                  width: 360,
                                  child: Image.asset(
                                    car['photo'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            ListTile(
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      '${car['make']} ${car['model']} ',
                                      style: theme.textTheme.titleLarge,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  TypeChip(type: '${car['year']}')
                                ],
                              ),
                              subtitle: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Chip(
                                        label: Text(
                                          car['stars'].toString(),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Text(
                                        ' (${car['trips']} trips)',
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '\$${car['price']}',
                                    style: theme.textTheme.titleLarge!.copyWith(
                                        color: theme.colorScheme.primary),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }

  Column browseByLocation() {
    return Column(
      children: [
        const SectionHeader(
          title: 'Browse by location',
        ),
        Spacing.verticalSpace4,
      ],
    );
  }

  Column browseByMake(ThemeData theme) {
    return Column(
      children: [
        SectionHeader(
          title: 'Browse by make',
          trailing: TextButton(
            onPressed: () {
              _navigationService.navigateTo(carBrandsRoute);
            },
            child: const Text('View all'),
          ),
        ),
        Spacing.verticalSpace4,
        SizedBox(
          height: 136.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: brands
                .map(
                  (brand) => Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        width: 120.0,
                        child: Card(
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            width: 100,
                            child: Image.asset(
                              brand['logo'],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Spacing.verticalSpace4,
                      Text(
                        brand['name'],
                        style: theme.textTheme.titleMedium,
                      )
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }

  Column browseByType() {
    return Column(
      children: [
        const SectionHeader(
          title: 'Browse by type',
        ),
        Spacing.verticalSpace4,
      ],
    );
  }
}
