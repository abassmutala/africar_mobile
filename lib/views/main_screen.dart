// import 'package:africar/constants/ui_constants.dart';
import 'package:africar/views/bottom_nav/explore_view.dart';
import 'package:africar/views/bottom_nav/favourites_view.dart';
import 'package:africar/views/bottom_nav/profile_view.dart';
import 'package:africar/views/bottom_nav/trips_view.dart';
import 'package:africar/widgets/platform_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MainScreen extends StatefulWidget {
  final int? index;
  const MainScreen({Key? key, this.index}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.index ?? 0;
  }

  final List<Widget> _bottomNavScreens = [
    const ExploreView(),
    const FavouritesView(),
    const TripsView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    // final User? _currentUser = Provider.of<AuthBase>(context).currentUser;
    // SizeConfig().init(context);
    // ProfileViewModel.setProfile(_currentUser);
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: _bottomNavScreens),
      bottomNavigationBar: BottomNavBar(
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() => currentIndex = index);
        },
      ),
    );
  }
}

class BottomNavBar extends PlatformWidget {
  const BottomNavBar({
    Key? key,
    required this.onTap,
    required int currentIndex,
  })  : _currentIndex = currentIndex,
        super(key: key);
  final ValueChanged<int>? onTap;

  final int _currentIndex;

  @override
  Widget buildCupertinoWidget(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final List<BottomNavItem> bottomNavItems = [
      BottomNavItem(icon: Ionicons.search_outline, activeIcon: Ionicons.search, label: 'Explore'),
      BottomNavItem(icon: Ionicons.heart_outline, activeIcon: Ionicons.heart, label: 'Favourites'),
      BottomNavItem(icon: Ionicons.file_tray_outline, activeIcon: Ionicons.file_tray, label: 'Trips'),
      BottomNavItem(icon: Ionicons.person_circle_outline, activeIcon: Ionicons.person_circle, label: 'Profile'),
    ];
    return CupertinoTabBar(
      activeColor: theme.colorScheme.primary,
      inactiveColor: theme.bottomNavigationBarTheme.unselectedItemColor!,
      backgroundColor: theme.bottomNavigationBarTheme.backgroundColor,
      currentIndex: _currentIndex,
      onTap: onTap,
      items: bottomNavItems
          .map(
            (BottomNavItem bottomNavItem) => BottomNavigationBarItem(
              label: bottomNavItem.label,
              icon: Icon(bottomNavItem.icon),
              activeIcon: Icon(bottomNavItem.activeIcon),
            ),
          )
          .toList(),
    );
  }

  @override
  Widget buildMaterialWidget(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final List<BottomNavItem> bottomNavItems = [
      BottomNavItem(
        icon: Icons.search_outlined,
        activeIcon: Icons.search,
        label: 'Explore',
      ),
      BottomNavItem(
        icon: Icons.favorite_outline,
        activeIcon: Icons.favorite,
        label: 'Favourites',
      ),
      BottomNavItem(
        icon: Icons.work_outlined,
        activeIcon: Icons.work,
        label: 'Trips',
      ),
      BottomNavItem(
        icon: Icons.account_circle_outlined,
        activeIcon: Icons.account_circle,
        label: 'Profile',
      ),
    ];
    return BottomNavigationBar(
      selectedItemColor: theme.colorScheme.secondary,
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: onTap,
      items: bottomNavItems
          .map(
            (BottomNavItem bottomNavItem) => BottomNavigationBarItem(
              label: bottomNavItem.label,
              icon: Icon(bottomNavItem.icon),
              activeIcon: Icon(bottomNavItem.activeIcon),
            ),
          )
          .toList(),
    );
  }
}

class BottomNavItem {
  final IconData icon;
  final IconData? activeIcon;
  final String label;

  BottomNavItem({
    required this.icon,
    required this.label,
    this.activeIcon,
  });
}
