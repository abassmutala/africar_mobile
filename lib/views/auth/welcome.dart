import 'package:africar/constants/route_names.dart';
import 'package:africar/constants/ui_constants.dart';
import 'package:africar/managers/locator.dart';
import 'package:africar/services/navigation_service.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  Welcome({Key? key}) : super(key: key);
  final NavigationService _navigationService = locator<NavigationService>();

  Widget backgroundPhoto() {
    return Image.asset(
      'assets/images/mercedes.jpeg',
      fit: BoxFit.cover,
    );
  }

  Widget _appLogo(ThemeData theme) {
    return Container(
        width: 230.0,
        padding: kTabLabelPadding,
        child: RichText(
          text: TextSpan(
            text: 'africar',
            children: [
              TextSpan(
                text: '.',
                style: TextStyle(color: theme.colorScheme.primary),
              )
            ],
            style: theme.textTheme.headlineMedium!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Circular'),
          ),
        )
        // Text(
        //
        //
        // ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Stack(
      fit: StackFit.expand,
      children: [
        backgroundPhoto(),
        const ModalBarrier(
          color: Colors.black54,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _appLogo(theme),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Premium car rental',
                          style: theme.textTheme.headlineLarge!
                              .copyWith(color: Colors.white),
                        ),
                        Spacing.verticalSpace8,
                        Text(
                          'Premium, luxury car rental',
                          style: theme.textTheme.titleLarge!
                              .copyWith(color: Colors.white),
                        ),
                        Spacing.verticalSpace4,
                        Text(
                          'Experience the thrill at a low price',
                          style: theme.textTheme.titleLarge!
                              .copyWith(color: Colors.white),
                        ),
                        Spacing.verticalSpace48,
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  theme.colorScheme.primary),
                            ),
                            onPressed: () => _navigationService
                                .navigateToReplacement(mainScreenRoute),
                            child: Text(
                              'Lets go...',
                              style: theme.textTheme.titleLarge!.copyWith(
                                  color: Colors.white, fontFamily: 'Circular'),
                            ),
                          ),
                        ),
                        Spacing.verticalSpace24
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
