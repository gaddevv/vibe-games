import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vibes_studio/components/buttons/button-animator.dart';
import 'package:vibes_studio/components/sdp.dart';

class StoreCard extends StatefulWidget {
  final String image;
  final String? icon;
  final String title;
  final String? subtitle;
  final String? subText;
  final String? subtextTwo;
  final String? saleText;
  final String? secondSaleText;

  final String? buttonText;
  final double? imageHeight;
  final double? imageWidth;

  final bool? buttonExist;

  final Function? onTap;

  final Color? color;
  final Gradient? gradient;
  final Color? borderColor;

  const StoreCard({
    super.key,
    required this.image,
    required this.title,
    this.icon,
    this.onTap,
    this.color,
    this.gradient,
    this.subtitle,
    this.subText,
    this.subtextTwo,
    this.saleText,
    this.buttonText,
    this.buttonExist = true,
    this.imageHeight,
    this.imageWidth,
    this.secondSaleText,
    this.borderColor,
  });

  @override
  State<StoreCard> createState() => _StoreCardState();
}

class _StoreCardState extends State<StoreCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: sdp_fromPX(context, 40),
      ),
      child: Container(
        height: sdp_fromPX(context, 460),
        width: sdp_fromPX(context, 322),
        child: Stack(children: [
          Center(
            child: Container(
              height: sdp_fromPX(context, 445),
              width: sdp_fromPX(context, 322),
              decoration: BoxDecoration(
                color: widget.color ?? Color(0xFF4E277D),
                borderRadius: BorderRadius.circular(sdp_fromPX(context, 15)),
                border: Border.all(color: widget.borderColor ?? Colors.transparent),
                gradient: widget.gradient == null
                    ? RadialGradient(
                        radius: sdp_fromPX(context, 1.6),
                        colors: [Color.fromARGB(255, 140, 0, 255), Color.fromARGB(255, 72, 26, 109)],
                      )
                    : widget.gradient,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 30))),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      widget.title,
                      maxLines: 1,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: sdp_fromPX(context, 24),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 5))),
                  Text(
                    widget.subtitle!,
                    maxLines: 1,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: sdp_fromPX(context, 17),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 20))),
                  if (widget.secondSaleText != null)
                    FittedBox(
                      fit: BoxFit.contain,
                      child: Container(
                        height: sdp_fromPX(context, 33),
                        width: sdp_fromPX(context, 180),
                        decoration: BoxDecoration(
                            color: Color(0xFFDE6B6C),
                            borderRadius: BorderRadius.circular(sdp_fromPX(context, 15)),
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: <Color>[
                                Color(0xFFDE6B6C),
                                Color(0xFFAE5B5B),
                              ],
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 14))),
                            Text(
                              'Акция',
                              style: TextStyle(
                                  fontSize: sdp_fromPX(context, 17),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto',
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                            ),
                            Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 14))),
                            Container(
                              alignment: Alignment.center,
                              height: sdp_fromPX(context, 33),
                              width: sdp_fromPX(context, 96),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(sdp_fromPX(context, 15)), bottomRight: Radius.circular(sdp_fromPX(context, 15)))),
                              child: Text(
                                widget.secondSaleText!,
                                style: TextStyle(
                                  fontSize: sdp_fromPX(context, 17),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                  color: Color(0xFFDE6B6C),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (widget.secondSaleText != null) Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 30))),
                  Center(
                      child: Container(
                          height: widget.imageHeight ?? sdp_fromPX(context, 250),
                          width: widget.imageWidth ?? sdp_fromPX(context, 250),
                          child: Image.asset(widget.image))),
                  if (widget.secondSaleText != null) Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 40))),
                  if (widget.subText != null && widget.subtextTwo != null)
                    Container(
                      width: sdp_fromPX(context, 300),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.subText!,
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: sdp_fromPX(context, 24),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 100))),
                          if (widget.subtextTwo != null)
                            Text(
                              widget.subtextTwo!,
                              style: TextStyle(
                                  color: Color.fromRGBO(165, 122, 216, 1),
                                  fontSize: sdp_fromPX(context, 24),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.grey),
                            ),
                        ],
                      ),
                    ),
                  if (widget.subText != null && widget.subtextTwo == null)
                    Center(
                      child: Text(
                        widget.subText!,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: sdp_fromPX(context, 24),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          if (widget.buttonExist == true)
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: sdp_fromPX(context, 53),
                  width: sdp_fromPX(context, 250),
                  child: ButtonAnimator(
                    onTap: widget.onTap ?? () {},
                    childWidget: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(sdp_fromPX(context, 15)),
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: <Color>[
                              Color(0xFF38CD74),
                              Color(0xFF367750),
                            ],
                          )),
                      child: Center(
                        child: (widget.icon != null)
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    widget.icon!,
                                    height: sdp_fromPX(context, 28),
                                    width: sdp_fromPX(context, 28),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 10))),
                                  Text(
                                    widget.buttonText ?? 'Смотреть',
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontSize: sdp_fromPX(context, 24),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                ],
                              )
                            : Text(
                                widget.buttonText ?? 'Смотреть',
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: sdp_fromPX(context, 24),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                      ),
                    ),
                  ),
                )),
          if (widget.saleText != null)
            Padding(
              padding: EdgeInsets.only(left: sdp_fromPX(context, 40)),
              child: Container(
                height: sdp_fromPX(context, 40),
                width: sdp_fromPX(context, 252),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(143, 0, 255, 1),
                    borderRadius: BorderRadius.circular(sdp_fromPX(context, 20)),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                        Color.fromRGBO(175, 73, 255, 1),
                        Color.fromRGBO(72, 0, 129, 1),
                      ],
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 14))),
                    Padding(
                      padding: EdgeInsets.only(top: sdp_fromPX(context, 5)),
                      child: Text(
                        'Акции',
                        style: TextStyle(
                            fontSize: sdp_fromPX(context, 17),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 14))),
                    Container(
                      alignment: Alignment.center,
                      height: sdp_fromPX(context, 40),
                      width: sdp_fromPX(context, 167),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(sdp_fromPX(context, 20)), bottomRight: Radius.circular(sdp_fromPX(context, 20)))),
                      child: Padding(
                        padding: EdgeInsets.only(top: sdp_fromPX(context, 5)),
                        child: Text(
                          widget.saleText!,
                          style: TextStyle(
                              fontSize: sdp_fromPX(context, 17),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                              color: Color.fromRGBO(143, 0, 255, 1)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ]),
      ),
    );
  }
}
