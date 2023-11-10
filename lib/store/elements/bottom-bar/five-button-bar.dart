import 'package:flutter/material.dart';
import 'package:vibes_studio/components/buttons/button-animator.dart';
import 'package:vibes_studio/components/buttons/select-button.dart';
import 'package:vibes_studio/components/sdp.dart';

class FiveButtonBar extends StatefulWidget {
  final Function(int?)? onPressed;

  final int? state;
  final int? firstButtonValue;
  final int? secondButtonValue;
  final int? thirdButtonValue;
  final int? fourthButtonValue;
  final int? fifthButtonValue;

  final bool? glowing;

  final double? width;
  final double? height;

  final double? topPadding;
  final double? contentPadding;
  final double? bottomPadding;

  final Gradient? backGradient;
  final Shader activeGradient;
  final Shader inactiveGradient;

  final String firstButtonText;
  final String secondButtonText;
  final String thirdButtonText;
  final String fourthButtonText;
  final String? fifthButtonText;

  FiveButtonBar({
    super.key,
    this.onPressed,
    this.state,
    this.width,
    this.height,
    this.topPadding,
    this.bottomPadding,
    this.contentPadding,
    this.glowing,
    this.backGradient,
    this.firstButtonValue,
    this.secondButtonValue,
    this.thirdButtonValue,
    this.fourthButtonValue,
    this.fifthButtonValue,
    required this.activeGradient,
    required this.inactiveGradient,
    required this.firstButtonText,
    required this.secondButtonText,
    required this.thirdButtonText,
    required this.fourthButtonText,
    this.fifthButtonText,
  });

  @override
  State<FiveButtonBar> createState() => _FiveButtonBarState();
}

class _FiveButtonBarState extends State<FiveButtonBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: widget.backGradient == null ? BoxDecoration() : BoxDecoration(gradient: widget.backGradient),
      child: Padding(
        padding: EdgeInsets.only(top: widget.topPadding ?? sdp_fromPX(context, 0), bottom: widget.bottomPadding ?? sdp_fromPX(context, 0)),
        child: Container(
          height: sdp_fromPX(context, widget.height ?? 73),
          width: sdp_fromPX(context, widget.width ?? 757),
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.5), borderRadius: BorderRadius.circular(sdp_fromPX(context, 15))),
          child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.contain,
                  child: Container(
                    height: sdp_fromPX(context, 38),
                    child: ButtonAnimator(
                      childWidget: SelectButton(
                        text: widget.firstButtonText,
                        style: TextStyle(
                            fontSize: sdp_fromPX(context, 32),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                            foreground: Paint()..shader = widget.state == 0 ? widget.activeGradient : widget.inactiveGradient),
                        glowing: widget.glowing,
                        value: widget.firstButtonValue,
                        state: widget.state,
                        onPressed: widget.onPressed,
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: widget.contentPadding ?? sdp_fromPX(context, 54))),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Container(
                    height: sdp_fromPX(context, 38),
                    child: ButtonAnimator(
                      childWidget: SelectButton(
                        text: widget.secondButtonText,
                        style: TextStyle(
                            fontSize: sdp_fromPX(context, 32),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                            foreground: Paint()..shader = widget.state == 1 ? widget.activeGradient : widget.inactiveGradient),
                        glowing: widget.glowing,
                        value: widget.secondButtonValue,
                        state: widget.state,
                        onPressed: widget.onPressed,
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: widget.contentPadding ?? sdp_fromPX(context, 54))),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Container(
                    height: sdp_fromPX(context, 38),
                    child: ButtonAnimator(
                      childWidget: SelectButton(
                        text: widget.thirdButtonText,
                        style: TextStyle(
                            fontSize: sdp_fromPX(context, 32),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                            foreground: Paint()..shader = widget.state == 2 ? widget.activeGradient : widget.inactiveGradient),
                        glowing: widget.glowing,
                        value: widget.thirdButtonValue,
                        state: widget.state,
                        onPressed: widget.onPressed,
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: widget.contentPadding ?? sdp_fromPX(context, 54))),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Container(
                    height: sdp_fromPX(context, 38),
                    child: ButtonAnimator(
                      childWidget: SelectButton(
                        text: widget.fourthButtonText,
                        style: TextStyle(
                            fontSize: sdp_fromPX(context, 32),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                            foreground: Paint()..shader = widget.state == 3 ? widget.activeGradient : widget.inactiveGradient),
                        glowing: widget.glowing,
                        value: widget.fourthButtonValue,
                        state: widget.state,
                        onPressed: widget.onPressed,
                      ),
                    ),
                  ),
                ),
                if (widget.fifthButtonText != null)
                  Padding(
                    padding: EdgeInsets.only(left: widget.contentPadding ?? sdp_fromPX(context, 64)),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Container(
                        height: sdp_fromPX(context, 38),
                        child: ButtonAnimator(
                          childWidget: SelectButton(
                            text: widget.fifthButtonText,
                            style: TextStyle(
                                fontSize: sdp_fromPX(context, 32),
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                                foreground: Paint()..shader = widget.state == 4 ? widget.activeGradient : widget.inactiveGradient),
                            glowing: widget.glowing,
                            value: widget.fifthButtonValue,
                            state: widget.state,
                            onPressed: widget.onPressed,
                          ),
                        ),
                      ),
                    ),
                  )
              ]),
        ),
      ),
    );
  }
}
