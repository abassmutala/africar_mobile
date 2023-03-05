import 'package:africar/views/all_car_brands.dart';
import 'package:africar/views/auth/create_account.dart';
import 'package:africar/views/auth/sign_in.dart';
import 'package:africar/views/car_details.dart';
import 'package:africar/views/main_screen.dart';
import 'package:africar/widgets/platform_appbar.dart';
import 'package:flutter/material.dart';
import 'package:africar/constants/route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  // get arguments passed in when we call navigator.pushNamed
  final args = settings.arguments;
  switch (settings.name) {
    //   case welcomeViewRoute:
    //     return _getPageRoute(
    //       routeName: settings.name!,
    //       viewToShow: const WelcomeView(),
    //     );

    case mainScreenRoute:
      final int? index = settings.arguments as int?;
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: MainScreen(index: index),
      );
    case signInRoute:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const SignIn(),
      );
    case createAccountRoute:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const CreateAccount(),
      );
    //   case forgotPasswordRoute:
    //     if (args is String) {
    //       return _getPageRoute(
    //         routeName: settings.name!,
    //         viewToShow: ForgotPassword(initialEmail: args),
    //       );
    //     }
    //     return _errorRoute();
      case carDetailsRoute:
        // final StayDetailsArguments args =
        //     settings.arguments as StayDetailsArguments;
        return _getPageRoute(
          routeName: settings.name!,
          viewToShow: const CarDetails(
            // selectedCar: args,
          ),
        );
      case carBrandsRoute:
        return _getPageRoute(
          routeName: settings.name!,
          viewToShow: const AllCarBrands(),
        );
    //   case changePasswordRoute:
    //     return _getPageRoute(
    //       routeName: settings.name!,
    //       viewToShow: const ChangePassword(),
    //     );
    //   case guestsAndRoomsSelectorRoute:
    //     // final StayResultArguments args =
    //     //     settings.arguments as StayResultArguments;
    //     return _getPageRoute(
    //       routeName: settings.name!,
    //       viewToShow: const RoomsAndGuestsPicker(
    //         // arguments: args,
    //       ),
    //     );

    //   case stayResultsRoute:
    //     final StayResultArguments args =
    //         settings.arguments as StayResultArguments;
    //     return _getPageRoute(
    //       routeName: settings.name!,
    //       viewToShow: StayResults(
    //         args: args,
    //       ),
    //     );
    //   case carResultsRoute:
    //     final CarResultArguments args = settings.arguments as CarResultArguments;
    //     return _getPageRoute(
    //       routeName: settings.name!,
    //       viewToShow: CarResults(
    //         args: args,
    //       ),
    //     );
    //   case carDetailsRoute:
    //     final CarDetailsArguments args =
    //         settings.arguments as CarDetailsArguments;
    //     return _getPageRoute(
    //       routeName: settings.name!,
    //       viewToShow: CarDetails(
    //         carDetailsArgs: args,
    //       ),
    //     );
    // case spaResultsRoute:
    //   final SpaResultArguments args = settings.arguments as SpaResultArguments;
    //   return _getPageRoute(
    //     routeName: settings.name!,
    //     viewToShow: SpaResults(
    //       args: args,
    //     ),
    //   );
    // case webViewsViewRoute:
    //   final WebViewsArgs args = settings.arguments as WebViewsArgs;
    //   return _getPageRoute(
    //     routeName: settings.name!,
    //     viewToShow: WebViewsView(
    //       args: args,
    //     ),
    //   );
    // case accountViewRoute:
    //   return _getPageRoute(
    //     routeName: settings.name!,
    //     viewToShow: const AccountView(),
    //   );
    // case listYourPropertyRoute:
    //   return _getPageRoute(
    //     routeName: settings.name!,
    //     viewToShow: const BecomeAPartner(),
    //   );
    // case changePhoneNumberRoute:
    //   return _getPageRoute(
    //     routeName: settings.name!,
    //     viewToShow: const ChangePhoneNumber(),
    //   );
    // case addCardRoute:
    //   return _getPageRoute(
    //     routeName: settings.name!,
    //     viewToShow: const AddCard(),
    //   );
    // case changeNameRoute:
    //   final User user = settings.arguments as User;
    //   return _getPageRoute(
    //     routeName: settings.name!,
    //     viewToShow: ChangeName(user: user),
    //   );
    // case addTravellerRoute:
    //   return _getPageRoute(
    //     routeName: settings.name!,
    //     viewToShow: const AddTraveller(),
    //   );
    // case myBookingsRoute:
    //   return _getPageRoute(
    //     routeName: settings.name!,
    //     viewToShow: MyBookings(),
    //   );
    // case stayFormViewRoute:
    //   final StayResultArguments args = settings.arguments as StayResultArguments;
    //   return _getPageRoute(
    //     routeName: settings.name!,
    //     viewToShow: StayForm(stayResultArguments: args),
    //   );
    // case carRentalFormViewRoute:
    //   return _getPageRoute(
    //     routeName: settings.name!,
    //     viewToShow: const CarRentalForm(),
    //   );
    // case stayRoomDetailsRoute:
    //   final StayRoom args = settings.arguments as StayRoom;
    //   return _getPageRoute(
    //     routeName: settings.name!,
    //     viewToShow: StayRoomDetails(
    //       room: args,
    //     ),
    //   );
    // case tripDetail:
    //   final Trip args = settings.arguments as Trip;
    //   return _getPageRoute(
    //     routeName: settings.name!,
    //     viewToShow: TripDetail(
    //       trip: args,
    //       // favourite: args,
    //     ),
    //   );
    //   case imageGalleryRoute:
    //   final ImageGalleryArgs args = settings.arguments as ImageGalleryArgs;
    //   return _getPageRoute(
    //     routeName: settings.name!,
    //     viewToShow: ImageGallery(args: args),
    //   );
    // case viewImageRoute:
    //   final ImageGalleryArgs args = settings.arguments as ImageGalleryArgs;
    //   return _getPageRoute(
    //     routeName: settings.name!,
    //     viewToShow: ViewImage(args: args),
    //   );
    // case mapViewRoute:
    //   final MapViewArgs args = settings.arguments as MapViewArgs;
    //   return _getPageRoute(
    //     routeName: settings.name!,
    //     viewToShow: MapView(args: args),
    //   );
    // case carHostViewRoute:
    //   final String args = settings.arguments as String;
    //   return _getPageRoute(
    //     routeName: settings.name!,
    //     viewToShow: CarHostView(
    //       carHostId: args,
    //     ),
    //   );

    // ///
    // case addHotelViewRoute:
    //   return _getPageRoute(
    //     routeName: settings.name!,
    //     viewToShow: AddHotel(),
    //   );
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: const PlatformAppBar(
            titleText: '',
          ),
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}

PageRoute _getPageRoute(
    {required String routeName, required Widget viewToShow}) {
  return MaterialPageRoute(
    settings: RouteSettings(
      name: routeName,
    ),
    builder: (_) => viewToShow,
  );
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(
    builder: (_) => const Scaffold(
      appBar: PlatformAppBar(
        titleText: '',
      ),
      body: Center(
        child: Text('ERROR'),
      ),
    ),
  );
}
