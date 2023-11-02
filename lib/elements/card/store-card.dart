import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vibes_studio/elements/buttons/button-animator.dart';
import 'package:vibes_studio/elements/sdp.dart';


class StoreCard extends StatefulWidget {
  final String image;
  final String? icon;
  final String title;
  final String? subtitle;
  final String? subText;
  final String? subtextTwo;
  final String? saleText;
  final String? buttonText;

  final bool? buttonExist;

  final Function? onTap;

  final Color? color;
  final Gradient? gradient;

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
                color: widget.color ?? Color.fromRGBO(78, 39, 125, 1),
                borderRadius: BorderRadius.circular(sdp_fromPX(context, 15)),
                gradient: widget.gradient == null
                    ? RadialGradient(
                        stops: [0.01, 0.4, 1],
                        colors: [
                          Color.fromRGBO(115, 0, 255, 0.6),
                          Color.fromRGBO(116, 0, 255, 1),
                          Color.fromRGBO(115, 0, 255, 0.6),
                        ],
                      )
                    : widget.gradient,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 30))),
                  Text(
                    widget.title,
                    maxLines: 1,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: sdp_fromPX(context, 24),
                      fontWeight: FontWeight.w500,
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
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 20))),
                  Center(child: Container(height: sdp_fromPX(context, 250), width: sdp_fromPX(context, 250), child: Image.asset(widget.image))),
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
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: <Color>[
                              Color.fromRGBO(54, 119, 80, 1),
                              Color.fromRGBO(56, 205, 116, 1),
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
                height: sdp_fromPX(context, 33),
                width: sdp_fromPX(context, 250),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(143, 0, 255, 1),
                    borderRadius: BorderRadius.circular(sdp_fromPX(context, 15)),
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
                    Text(
                      'Акции',
                      style: TextStyle(fontSize: sdp_fromPX(context, 17), fontWeight: FontWeight.w400, color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 14))),
                    Container(
                      alignment: Alignment.center,
                      height: sdp_fromPX(context, 33),
                      width: sdp_fromPX(context, 167),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(sdp_fromPX(context, 15)), bottomRight: Radius.circular(sdp_fromPX(context, 15)))),
                      child: Text(
                        widget.saleText!,
                        style: TextStyle(fontSize: sdp_fromPX(context, 17), fontWeight: FontWeight.w400, color: Color.fromRGBO(143, 0, 255, 1)),
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
