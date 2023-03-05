import 'package:africar/widgets/platform_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformAppBar extends PlatformWidget implements PreferredSizeWidget {
  final bool automaticallyImplyLeading;
  final String? previousPageTitle;
  final Widget? title;
  final String? titleText;
  final Widget? leading;
  final List<Widget>? trailing;
  final double? elevation;
  final bool centerTitle;
  final Color? backgroundColor;
  final Color? titleColor;
  final Brightness? brightness;
  final EdgeInsetsDirectional? padding;
  final PreferredSizeWidget? bottom;
  final bool titleIsText;
  final double? appBarHeight;

  const PlatformAppBar({
    Key? key,
    this.automaticallyImplyLeading = true,
    this.previousPageTitle,
    this.title,
    this.titleText,
    this.leading,
    this.trailing,
    this.elevation = 4,
    this.centerTitle = false,
    this.backgroundColor,
    this.titleColor,
    this.brightness,
    this.padding,
    this.bottom,
    this.titleIsText = true,
    this.appBarHeight = kToolbarHeight,
  }) : super(key: key);

  @override
  Widget buildCupertinoWidget(BuildContext context) {
    final theme = Theme.of(context);
    return CupertinoNavigationBar(
      leading: leading,
      automaticallyImplyLeading: automaticallyImplyLeading,
      previousPageTitle: previousPageTitle != null
          ? previousPageTitle!
          : null,
      trailing: trailing != null
          ? Row(mainAxisSize: MainAxisSize.min, children: trailing!)
          : null,
      backgroundColor: backgroundColor ?? theme.appBarTheme.backgroundColor,
      // padding: padding,
      middle: titleIsText
          ? Text(
              titleText!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: theme.textTheme.headline6!.fontFamily,
                color: titleColor ?? theme.textTheme.headline6!.color,
              ),
            )
          : title,
    );
  }

  @override
  Widget buildMaterialWidget(BuildContext context) {
    return AppBar(
      toolbarHeight: bottom == null ? appBarHeight : appBarHeight! + bottom!.preferredSize.height,
      leading: leading ?? const BackButton(),
      automaticallyImplyLeading: automaticallyImplyLeading,
      elevation: elevation,
      centerTitle: centerTitle,
      title: titleIsText
          ? Text(
              titleText!,
              // style: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(color: titleColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          : title,
      backgroundColor: backgroundColor,
      actions: trailing,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize {
    return Size.fromHeight(appBarHeight! + (bottom != null ? bottom!.preferredSize.height : 0));
  }
}
