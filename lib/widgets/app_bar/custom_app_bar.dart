import 'package:flutter/material.dart';
import 'package:kwstas_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 100.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 100.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgOutline:
        return Container(
          height: 100.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.blueGray100.withOpacity(0.53),
            borderRadius: BorderRadius.circular(
              50.h,
            ),
            border: Border.all(
              color: theme.colorScheme.primary,
              width: 1.h,
            ),
          ),
        );
      case Style.bgFill:
        return Container(
          height: 55.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.secondaryContainer,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgOutline,
  bgFill,
}
