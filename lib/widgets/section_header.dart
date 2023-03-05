import 'package:africar/constants/ui_constants.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String? title;
  final Color? backgroundColor;
  final Color? textColor;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final TextAlign? textAlign;
  final TextStyle? textStyle;
  final Widget? trailing;

  const SectionHeader({
    Key? key,
    this.title,
    this.backgroundColor,
    this.textColor,
    this.height,
    this.padding,
    this.textAlign,
    this.textStyle,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      type: MaterialType.canvas,
      color: backgroundColor ?? theme.colorScheme.surface,
      child: Container(
        height: height ?? 50.0,
        padding: padding ?? Insets.standardPadding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            title != null
                ? Text(
                    title!,
                    textAlign: textAlign ?? TextAlign.start,
                    style: textStyle ??
                        theme.textTheme.titleLarge!.copyWith(
                          color: textColor,
                        ),
                  )
                : Container(),
            if (trailing != null) trailing!
          ],
        ),
      ),
    );
  }
}
