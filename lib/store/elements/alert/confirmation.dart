import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vibes_studio/components/buttons/button-animator.dart';
import 'package:vibes_studio/components/sdp.dart';

class ConfirmationAlert extends StatefulWidget {
  final String title;
  final String text;
  final String? richText;
  final String? secondText;
  final String? secondRichText;
  final String? acceptButtonText;
  final String? cancelButtonText;

  final bool cancelButton;

  final Function? onTapAccept;
  final Function? onTapCancel;

  ConfirmationAlert({
    Key? key,
    required this.title,
    required this.text,
    this.richText,
    this.secondText,
    this.secondRichText,
    this.acceptButtonText,
    this.cancelButton = true,
    this.onTapAccept,
    this.onTapCancel,
    this.cancelButtonText,
  }) : super(key: key) {
    if (!cancelButton && acceptButtonText == null) {
      throw ArgumentError("acceptButtonText must be provided when cancelButton is false");
    }
  }

  @override
  State<ConfirmationAlert> createState() => _ConfirmationAlertState();
}

class _ConfirmationAlertState extends State<ConfirmationAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: widget.cancelButton == false ? sdp_fromPX(context, 460) : sdp_fromPX(context, 450),
              width: sdp_fromPX(context, 716),
              color: Colors.black,
              child: Container(
                height: sdp_fromPX(context, 450),
                width: sdp_fromPX(context, 716),
                decoration: widget.cancelButton == false
                    ? BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color.fromRGBO(0, 133, 255, 0.52),
                            Color.fromRGBO(167, 0, 255, 0.5),
                          ],
                        ),
                        border: Border.all(color: Colors.blue, width: sdp_fromPX(context, 1)),
                      )
                    : BoxDecoration(),
                child: Column(
                  children: [
                    Container(
                      height: sdp_fromPX(context, 102),
                      width: sdp_fromPX(context, 716),
                      decoration: widget.cancelButton == true
                          ? BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: <Color>[
                                  Color.fromRGBO(0, 133, 255, 1),
                                  Color.fromRGBO(167, 0, 255, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(sdp_fromPX(context, 15)),
                                topRight: Radius.circular(sdp_fromPX(context, 15)),
                              ))
                          : BoxDecoration(),
                      child: Center(
                        child: Padding(
                          padding: widget.cancelButton == false ? EdgeInsets.only(top: sdp_fromPX(context, 40)) : EdgeInsets.all(0),
                          child: Text(
                            widget.title,
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: sdp_fromPX(context, 48),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        height: sdp_fromPX(context, 348),
                        width: sdp_fromPX(context, 716),
                        decoration: widget.cancelButton == true
                            ? BoxDecoration(
                                color: Color.fromRGBO(
                                41,
                                29,
                                55,
                                1,
                              ))
                            : BoxDecoration(),
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 50))),
                            Center(
                              child: Container(
                                width: sdp_fromPX(context, 450),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: widget.text,
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontSize: sdp_fromPX(context, 33),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Roboto',
                                    ),
                                    children: <TextSpan>[
                                      widget.richText != null
                                          ? TextSpan(
                                              text: widget.richText,
                                              style: TextStyle(
                                                color: Color.fromRGBO(194, 143, 252, 1),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Roboto',
                                              ),
                                            )
                                          : TextSpan(),
                                      widget.secondText != null
                                          ? TextSpan(
                                              text: widget.secondText,
                                              style: TextStyle(
                                                color: Color.fromRGBO(255, 255, 255, 1),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Roboto',
                                              ),
                                            )
                                          : TextSpan(),
                                      widget.secondRichText != null
                                          ? TextSpan(
                                              text: widget.secondRichText,
                                              style: TextStyle(
                                                color: Color.fromRGBO(194, 143, 252, 1),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Roboto',
                                              ),
                                            )
                                          : TextSpan(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: widget.cancelButton == true
                                  ? Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        ButtonAnimator(
                                          onTap: widget.onTapAccept ?? () {},
                                          childWidget: Container(
                                            height: sdp_fromPX(context, 80),
                                            width: sdp_fromPX(context, 284),
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.centerLeft,
                                                  end: Alignment.centerRight,
                                                  colors: [Color.fromRGBO(128, 255, 125, 1), Color.fromRGBO(66, 131, 64, 1)],
                                                ),
                                                borderRadius: BorderRadius.circular(sdp_fromPX(context, 15))),
                                            child: Center(
                                              child: Text(widget.acceptButtonText ?? 'Купить',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(255, 255, 255, 1),
                                                    fontSize: sdp_fromPX(context, 33),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'Roboto',
                                                  )),
                                            ),
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 50))),
                                        ButtonAnimator(
                                          onTap: widget.onTapCancel,
                                          childWidget: Container(
                                            height: sdp_fromPX(context, 80),
                                            width: sdp_fromPX(context, 284),
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.centerLeft,
                                                  end: Alignment.centerRight,
                                                  colors: [Color.fromRGBO(255, 82, 82, 1), Color.fromRGBO(144, 45, 45, 1)],
                                                ),
                                                borderRadius: BorderRadius.circular(sdp_fromPX(context, 15))),
                                            child: Center(
                                                child: Text(widget.cancelButtonText ?? 'Отмена',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(255, 255, 255, 1),
                                                      fontSize: sdp_fromPX(context, 33),
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: 'Roboto',
                                                    ))),
                                          ),
                                        ),
                                      ],
                                    )
                                  : ButtonAnimator(
                                      onTap: widget.onTapAccept!,
                                      childWidget: Container(
                                        height: sdp_fromPX(context, 80),
                                        width: sdp_fromPX(context, 620),
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors: [
                                                Color.fromRGBO(0, 133, 255, 1),
                                                Color.fromRGBO(167, 0, 255, 1),
                                              ],
                                            ),
                                            borderRadius: BorderRadius.circular(sdp_fromPX(context, 7))),
                                        child: Center(
                                            child: Text(widget.acceptButtonText!,
                                                style: TextStyle(
                                                  color: Color.fromRGBO(255, 255, 255, 1),
                                                  fontSize: sdp_fromPX(context, 33),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Roboto',
                                                ))),
                                      ),
                                    ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            widget.cancelButton == false
                ? Positioned(
                    top: sdp_fromPX(context, 2),
                    right: sdp_fromPX(context, 2),
                    child: ButtonAnimator(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      childWidget: Container(
                        height: sdp_fromPX(context, 79),
                        width: sdp_fromPX(context, 79),
                        padding: EdgeInsets.all(sdp_fromPX(context, 20)),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color.fromRGBO(255, 82, 82, 1), Color.fromRGBO(144, 45, 45, 1)],
                            ),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(sdp_fromPX(context, 25)))),
                        child: Container(
                          child: SvgPicture.asset(
                            'assets/icons/close.svg',
                          ),
                        ),
                      ),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
