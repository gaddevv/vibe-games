import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vibes_studio/elements/buttons/button-animator.dart';
import 'package:vibes_studio/elements/sdp.dart';

class BuyCarCard extends StatefulWidget {
  final String image;
  final String? icon;
  final String? title;

  final Function? onTap;

  final String? buttonText;

  final double speed;
  final double boost;
  final double trunk;

  const BuyCarCard({
    super.key,
    required this.image,
    this.icon,
    this.title,
    required this.speed,
    required this.boost,
    required this.trunk,
    this.onTap,
    this.buttonText,
  });

  @override
  State<BuyCarCard> createState() => _BuyCarCardState();
}

class _BuyCarCardState extends State<BuyCarCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 30))),
            ButtonAnimator(
              childWidget: Container(
                height: sdp_fromPX(context, 75),
                width: sdp_fromPX(context, 75),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 138, 0, 1),
                  border: Border.all(color: Colors.white, width: sdp_fromPX(context, 5)),
                  borderRadius: BorderRadius.circular(sdp_fromPX(context, 15)),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 30))),
            ButtonAnimator(
              childWidget: Container(
                height: sdp_fromPX(context, 75),
                width: sdp_fromPX(context, 75),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(color: Colors.white, width: sdp_fromPX(context, 5)),
                  borderRadius: BorderRadius.circular(sdp_fromPX(context, 15)),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 30))),
            ButtonAnimator(
              childWidget: Container(
                height: sdp_fromPX(context, 75),
                width: sdp_fromPX(context, 75),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 0, 0, 1),
                  border: Border.all(color: Colors.white, width: sdp_fromPX(context, 5)),
                  borderRadius: BorderRadius.circular(sdp_fromPX(context, 15)),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 30))),
            ButtonAnimator(
              childWidget: Container(
                height: sdp_fromPX(context, 75),
                width: sdp_fromPX(context, 75),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(143, 0, 255, 1),
                  border: Border.all(color: Colors.white, width: sdp_fromPX(context, 5)),
                  borderRadius: BorderRadius.circular(sdp_fromPX(context, 15)),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 30))),
            ButtonAnimator(
              childWidget: Container(
                height: sdp_fromPX(context, 75),
                width: sdp_fromPX(context, 75),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(223, 202, 8, 1),
                  border: Border.all(color: Colors.white, width: sdp_fromPX(context, 5)),
                  borderRadius: BorderRadius.circular(sdp_fromPX(context, 15)),
                ),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 350))),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 40))),
            Text(widget.title ?? 'Автомобиль',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: sdp_fromPX(context, 43),
                  fontWeight: FontWeight.w500,
                )),
            Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 60))),
            Container(height: sdp_fromPX(context, 314), width: sdp_fromPX(context, 530), child: Image.asset(widget.image))
          ],
        ),
        Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 200))),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: sdp_fromPX(context, 305),
              width: sdp_fromPX(context, 510),
              padding: EdgeInsets.only(
                left: sdp_fromPX(context, 40),
                right: sdp_fromPX(context, 40),
                top: sdp_fromPX(context, 20),
                bottom: sdp_fromPX(context, 20),
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(77, 61, 95, 0.7),
                borderRadius: BorderRadius.circular(sdp_fromPX(context, 15)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Скорость',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: sdp_fromPX(context, 24),
                            fontWeight: FontWeight.w500,
                          )),
                      Expanded(child: Container()),
                      Text(widget.speed.toString() + ' км/ч',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: sdp_fromPX(context, 24),
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 15))),
                  Container(
                    height: sdp_fromPX(context, 17),
                    width: sdp_fromPX(context, 429),
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(color: Color.fromRGBO(77, 65, 95, 1), borderRadius: BorderRadius.circular(sdp_fromPX(context, 5000))),
                    child: Container(
                      width: sdp_fromPX(context, widget.speed),
                      decoration:
                          BoxDecoration(color: Color.fromRGBO(116, 0, 255, 1), borderRadius: BorderRadius.circular(sdp_fromPX(context, 5000))),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 27))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Ускорение',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: sdp_fromPX(context, 24),
                            fontWeight: FontWeight.w500,
                          )),
                      Expanded(child: Container()),
                      Text(widget.boost.toString() + '4 сек',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: sdp_fromPX(context, 24),
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 15))),
                  Container(
                    height: sdp_fromPX(context, 17),
                    width: sdp_fromPX(context, 429),
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(color: Color.fromRGBO(77, 65, 95, 1), borderRadius: BorderRadius.circular(sdp_fromPX(context, 5000))),
                    child: Container(
                      width: sdp_fromPX(context, 429 / (widget.boost)),
                      constraints: BoxConstraints(
                        minWidth: sdp_fromPX(context, 0),
                        maxWidth: sdp_fromPX(context, 429),
                      ),
                      decoration:
                          BoxDecoration(color: Color.fromRGBO(116, 0, 255, 1), borderRadius: BorderRadius.circular(sdp_fromPX(context, 5000))),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 27))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Багажник',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: sdp_fromPX(context, 24),
                            fontWeight: FontWeight.w500,
                          )),
                      Expanded(child: Container()),
                      Text(widget.trunk.toString() + ' кг',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: sdp_fromPX(context, 24),
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 15))),
                  Container(
                    height: sdp_fromPX(context, 17),
                    width: sdp_fromPX(context, 429),
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(color: Color.fromRGBO(77, 65, 95, 1), borderRadius: BorderRadius.circular(sdp_fromPX(context, 5000))),
                    child: Container(
                      width: sdp_fromPX(context, widget.trunk),
                      decoration:
                          BoxDecoration(color: Color.fromRGBO(116, 0, 255, 1), borderRadius: BorderRadius.circular(sdp_fromPX(context, 5000))),
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 30))),
            ButtonAnimator(
              onTap: widget.onTap ?? () {},
              childWidget: Container(
                height: sdp_fromPX(context, 75),
                width: sdp_fromPX(context, 510),
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
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      widget.icon ?? 'assets/icons/store-card/shopping-cart.svg',
                      height: sdp_fromPX(context, 40),
                      width: sdp_fromPX(context, 40),
                    ),
                    Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 10))),
                    Text(
                      widget.buttonText ?? 'Купить',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: sdp_fromPX(context, 33),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
