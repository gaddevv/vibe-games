import 'package:flutter/material.dart';
import 'package:vibes_studio/elements/buttons/raw-button.dart';

class SelectButton extends StatefulWidget {
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final int? state;
  final int? value;

  final Function(int?)? onPressed;
  final Function()? onTry;
  final bool? active;
  final bool? dev;
  final bool? expand;
  final bool? shrink;
  final bool? switchable;
  final bool? glowing;

  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final Color? color;
  final Color? activeColor;
  final ShapeBorder? shape;

  final Widget? prefix;
  final Widget? suffix;
  final double? space;
  final double? borderRadius;

  final Widget? child;

  final IconData? prefixIcon;
  final double? iconSize;

  final String? text;
  final TextStyle? style;

  const SelectButton({
    Key? key,
    this.width,
    this.height,
    this.padding = const EdgeInsets.all(0),
    this.state,
    this.value,
    this.onPressed,
    this.onTry,
    this.active = true,
    this.dev = false,
    this.expand = false,
    this.shrink = true,
    this.switchable = false,
    this.glowing = true,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.color,
    this.activeColor,
    this.shape,
    this.prefix,
    this.suffix,
    this.space = 0,
    this.borderRadius = 20,
    this.child,
    this.prefixIcon,
    this.iconSize = 15,
    this.text,
    this.style,
  }) : super(key: key);

  @override
  _SelectButton createState() => _SelectButton();
}

class _SelectButton extends State<SelectButton> {
  @override
  Widget build(BuildContext context) {
    Color color = Colors.transparent;
    if (widget.color != null) color = widget.color!;

    Color activeColor = Colors.black;
    if (widget.activeColor != null) activeColor = widget.activeColor!;

    Color textColor = activeColor;
    if (widget.state == widget.value) {
      textColor = activeColor;

      if (widget.activeColor == null) {
        textColor = Colors.white;
      }
    }

    Widget? prefix = null;
    if (widget.prefix != null) prefix = widget.prefix;
    if (widget.prefixIcon != null)
      prefix = Icon(
        widget.prefixIcon!,
        size: widget.iconSize,
        color: textColor,
      );

    bool prefixSpacing =
        prefix != null && (widget.text != null || widget.suffix != null);
    bool suffixSpacing = widget.suffix != null && widget.text != null;
    if (widget.space == null || widget.space! <= 0) {
      prefixSpacing = false;
      suffixSpacing = false;
    }

    Widget child = RawButton(
      width: widget.width,
      height: widget.height,
      padding: widget.padding,
      onTry: widget.onTry,
      glowing: widget.glowing,
      onPressed: widget.onPressed != null
          ? () => widget.onPressed!(
                widget.switchable!
                    ? widget.value == widget.state
                        ? null
                        : widget.value
                    : widget.value,
              )
          : null,
      active: widget.active,
      dev: widget.dev,
      color: color,
      child: Row(
        mainAxisSize: widget.shrink! ? MainAxisSize.min : MainAxisSize.max,
        mainAxisAlignment: widget.mainAxisAlignment!,
        crossAxisAlignment: widget.crossAxisAlignment!,
        children: [
          if (prefix != null) prefix,
          if (prefixSpacing)
            Padding(padding: EdgeInsets.only(left: widget.space!)),
          if (widget.child != null) widget.child!,
          if (widget.child == null && widget.text != null)
            Text(
              widget.text!,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: textColor,
              ).merge(widget.style),
            ),
          if (suffixSpacing)
            Padding(padding: EdgeInsets.only(left: widget.space!)),
          if (widget.suffix != null) widget.suffix!,
        ],
      ),
    );

    if (widget.expand!)
      return Expanded(
        child: child,
      );
    return child;
  }
}
