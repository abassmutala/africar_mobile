import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppConstants {
  static const appName = "Bookiema";
}

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Screen Sizes
class ScreenSize {
  static double width = SizeConfig.screenWidth;
  static double height = SizeConfig.screenHeight;
}

class Doubles {
  static double scale = 1;

  static double get tiny => 4 * scale;
  static double get sm => 8 * scale;
  static double get med => 12 * scale;
  static double get lg => 16 * scale;
  static double get base => 24 * scale;
  static double get xl => 48 * scale;
}

class Corners {
  static BorderRadius tnyBorder = BorderRadius.all(tnyRadius);
  static Radius tnyRadius = Radius.circular(Doubles.tiny);
  static BorderRadius smBorder = BorderRadius.all(smRadius);
  static Radius smRadius = Radius.circular(Doubles.sm);
  static BorderRadius medBorder = BorderRadius.all(medRadius);
  static Radius medRadius = Radius.circular(Doubles.med);
  static BorderRadius lgBorder = BorderRadius.all(lgRadius);
  static Radius lgRadius = Radius.circular(Doubles.lg);
  static BorderRadius xlBorder = BorderRadius.all(xlRadius);
  static Radius xlRadius = Radius.circular(Doubles.xl);
  static Radius customRadius(double radius) => Radius.circular(radius);
  static BorderRadius customBorder(Radius radius) => BorderRadius.all(radius);
}

class Insets {
  static double scale = 1;
  static double offsetScale = 1;
  // Regular paddings

  static EdgeInsets get buttonPadding => EdgeInsets.symmetric(
        horizontal: Doubles.sm,
        vertical: Doubles.tiny,
      );
  static EdgeInsets get standardPadding => EdgeInsets.symmetric(
        horizontal: Doubles.lg,
        vertical: Doubles.sm,
      );
  static EdgeInsets get verticalPadding4 => EdgeInsets.symmetric(
        vertical: Doubles.tiny,
      );
  static EdgeInsets get verticalPadding8 => EdgeInsets.symmetric(
        vertical: Doubles.sm,
      );
  static EdgeInsets get horizontalPadding8 => EdgeInsets.symmetric(
        horizontal: Doubles.sm,
      );
  static EdgeInsets get horizontalPadding16 => EdgeInsets.symmetric(
        horizontal: Doubles.lg,
      );
  static EdgeInsets get verticalPadding12 => EdgeInsets.symmetric(
        vertical: Doubles.med,
      );
  // Offset, used for the edge of the window, or to separate large sections in the app
  static double get offset => 40 * offsetScale;
}

class IconSizes {
  // static const double scale = 1;
  static const double med = 24;
  static const double largest = 100;
}

class Spacing {
  static double scale = 1;

  static double get xs => 4 * scale;

  static Widget get horizontalSpace4 => SizedBox(width: Doubles.tiny);
  static Widget get horizontalSpace8 => SizedBox(width: Doubles.sm);
  static Widget get horizontalSpace12 => SizedBox(width: Doubles.med);
  static Widget get horizontalSpace16 => SizedBox(width: Doubles.lg);
  static Widget get horizontalSpace24 => SizedBox(width: Doubles.base);

  static Widget get verticalSpace4 => SizedBox(height: Doubles.tiny);
  static Widget get verticalSpace8 => SizedBox(height: Doubles.sm);
  static Widget get verticalSpace12 => SizedBox(height: Doubles.med);
  static Widget get verticalSpace16 => SizedBox(height: Doubles.lg);
  static Widget get verticalSpace24 => SizedBox(height: Doubles.base);
  static Widget get verticalSpace48 => SizedBox(height: Doubles.xl);

  static Widget verticalSpace(double height) => SizedBox(height: height);
}

class DateTimeFormats {
  static DateFormat day = DateFormat('d');//10
  static DateFormat dateFormat = DateFormat('EEE, MMM d'); //Wed, Feb 10
  static DateFormat dayMonth = DateFormat('d MMM'); //10 Feb
  static DateFormat weekday = DateFormat('EEE'); //Wed
  static DateFormat fullMonth = DateFormat('MMMMM');
  static DateFormat fullYear = DateFormat('yyyy');
  static DateFormat longDate = DateFormat('EEE, MMM d y');
  static DateFormat monthYear = DateFormat('MMM y');
  static DateFormat fullDate = DateFormat('d LLLL y');
  static DateFormat dateTime = DateFormat('EEE, MMM d y; HH:mm:ss');
  static DateFormat shortDateTime = DateFormat('EEE, MMM d; HH:mm');
  static DateFormat hourMinute = DateFormat('Hm');
  static DateFormat longTimeFormat = DateFormat('jm');
}

class PlatformIcons {
  const PlatformIcons._();
  static bool _isCupertino() {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return false;
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return true;
    }
  }

  static IconData toggle = _isCupertino()
      ? CupertinoIcons.slider_horizontal_3
      : Icons.legend_toggle_outlined;
  static IconData heart =
      _isCupertino() ? CupertinoIcons.heart : Icons.favorite_border;
  static IconData heart_filled =
      _isCupertino() ? CupertinoIcons.heart_fill : Icons.favorite;
  static IconData share =
      _isCupertino() ? CupertinoIcons.share : Icons.share_outlined;
  static IconData error = _isCupertino()
      ? CupertinoIcons.exclamationmark_circle
      : Icons.error_outline;
  static IconData info =
      _isCupertino() ? CupertinoIcons.info_circle : Icons.info_outlined;
  static IconData chat_bubble =
      _isCupertino() ? CupertinoIcons.text_bubble : Icons.chat_outlined;
  static IconData lock =
      _isCupertino() ? CupertinoIcons.lock_circle : Icons.lock_outlined;
  static IconData chevron_right = _isCupertino() ? CupertinoIcons.chevron_right : Icons.chevron_right_outlined;    
  static IconData add = _isCupertino() ? CupertinoIcons.add : Icons.add_outlined;
  static IconData more = _isCupertino() ? CupertinoIcons.ellipsis : Icons.more_outlined;
}

const divider12 = Divider(
  height: 12,
);
