import 'package:africar/constants/ui_constants.dart';
import 'package:flutter/material.dart';

class CarDetails extends StatelessWidget {
  const CarDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return NestedScrollView(
      headerSliverBuilder: ((context, innerBoxIsScrolled) => [
            SliverAppBar(
              pinned: true,
              floating: true,
              expandedHeight: 280,
              flexibleSpace: FlexibleSpaceBar(
                // title: const Text(
                //   'Tesla Roadster',
                //   style: TextStyle(color: Colors.black),
                // ),
                background: Image.asset(
                  'assets/images/tesla_roadster.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // SliverPersistentHeader(
            //   pinned: true,
            //   delegate: _CarDetailsAppBarDelegate(
            //     PreferredSize(
            //       preferredSize: const Size.fromHeight(kToolbarHeight * 1.5),
            //       child: AppBar(
            //         title: const Text(
            //           'Tesla Roadster',
            //           style: TextStyle(color: Colors.black),
            //         ),
            //       ),
            //     ),
            //   ),
            // )
          ]),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacing.verticalSpace4,
              Text(
                'Tesla Roadster',
                style: theme.textTheme.headlineLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class _CarDetailsAppBarDelegate extends SliverPersistentHeaderDelegate {
//   final PreferredSizeWidget appBar;

//   _CarDetailsAppBarDelegate(this.appBar);

//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return Material(
//       type: MaterialType.canvas,
//       elevation: 2.0,
//       color: Theme.of(context).appBarTheme.backgroundColor,
//       child: appBar,
//     );
//   }

//   @override
//   double get maxExtent => appBar.preferredSize.height;

//   @override
//   double get minExtent => appBar.preferredSize.height;

//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
//     return false;
//   }
// }
