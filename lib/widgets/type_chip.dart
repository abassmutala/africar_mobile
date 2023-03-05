import 'package:africar/constants/ui_constants.dart';
import 'package:flutter/material.dart';

class TypeChip extends StatelessWidget {
  const TypeChip({Key? key, required this.type, this.color}) : super(key: key);
  final String type;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      // constraints: BoxConstraints.tight(Size(type.length.toDouble() * 10, 20.0),),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: Corners.tnyBorder,
        border: Border.all(color: color ?? theme.colorScheme.primary),
      ),
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
      child: Text(
        type.toUpperCase(),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: theme.textTheme.caption!.copyWith(
            color: color ?? theme.colorScheme.primary, fontWeight: FontWeight.bold),
      ),
    );
  }
}
