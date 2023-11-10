import 'package:flutter/material.dart';
import 'package:vibes_studio/components/buttons/raw-button.dart';

class IconsButton extends StatefulWidget {
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final int? state;
  final int? value;

  final Widget Function()? page;
  final Function()? onPageBack;
  final Function()? onPressed;
  final Function()? onTry;
  final bool? active;
  final bool? dev;
  final bool? glowing;

  final MainAxisAlignment? mainAxisAlignment;
  final MainAxisSize? mainAxisSize;
  final Color? color;
  final ShapeBorder? shape;

  final Widget icon;
  final double? space;
  final Widget? child;

  const IconsButton({
    Key? key,
    this.width,
    this.height,
    this.padding = const EdgeInsets.all(0),
    this.page,
    this.onPageBack,
    this.onPressed,
    this.onTry,
    this.active = true,
    this.dev = false,
    this.glowing = false,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.max,
    this.color,
    this.shape = const StadiumBorder(),
    required this.icon,
    this.space = 0,
    this.child,
    this.state,
    this.value,
  }) : super(key: key);

  @override
  _PrefixButton createState() => _PrefixButton();
}

class _PrefixButton extends State<IconsButton> {
  @override
  Widget build(BuildContext context) {
    return RawButton(
      width: widget.width,
      height: widget.height,
      padding: widget.padding,
      page: widget.page,
      onPageBack: widget.onPageBack,
      onPressed: widget.onPressed,
      onTry: widget.onTry,
      active: widget.active,
      dev: widget.dev,
      color: widget.color,
      shape: widget.shape,
      child: Row(
        mainAxisAlignment: widget.mainAxisAlignment!,
        mainAxisSize: widget.mainAxisSize!,
        children: [
          widget.icon,
          if (widget.space != 0)
            Padding(padding: EdgeInsets.only(left: widget.space!)),
          widget.child != null ? widget.child! : Container(),
        ],
      ),
    );
  }
}
