import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vibes_studio/components/buttons/button-animator.dart';
import 'package:vibes_studio/components/sdp.dart';

class WheelFortuneScreen extends StatefulWidget {
  const WheelFortuneScreen({super.key});

  @override
  State<WheelFortuneScreen> createState() => _WheelFortuneScreenState();
}

class _WheelFortuneScreenState extends State<WheelFortuneScreen> with TickerProviderStateMixin {
  double _rotationAngle = 0.0;
  bool wheelSpun = false;
  late AnimationController _controller;
  final random = Random();

  int get _getSelectedSegment {
    final segments = 20;
    final degreesPerSegment = 360 / segments;
    final normalizedAngle = _rotationAngle % 360;
    final selectedSegment = (segments - (normalizedAngle / degreesPerSegment).floor()) % segments;
    return selectedSegment;
  }

  void _rotateWheel() {
    _controller.forward(from: 0.0);
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        final selectedSegment = _getSelectedSegment;

        _controller.stop();
        bool goodPrize;
        String? logo;
        String? image;
        String? action;

        if (selectedSegment == 0) {
          goodPrize = true;
          logo = "skin";
          image = "assets/images/casino/wheel-fortune/prize/morgen.png";
          action = "скин Morgenshtern";
        } else if (selectedSegment == 5 || selectedSegment == 15) {
          goodPrize = true;
          logo = "accessory";
          image = "assets/images/casino/wheel-fortune/prize/watch.png";
          action = "аксуссуар";
        } else if (selectedSegment == 10) {
          goodPrize = true;
          logo = "car";
          image = "assets/images/casino/wheel-fortune/prize/car.png";
          action = "машину";
        } else {
          int segmentIndex = (selectedSegment % 5) - 1;
          goodPrize = false;
          if (segmentIndex == 0) {
            logo = "experience";
            image = "assets/images/casino/wheel-fortune/prize/experience.png";
            action = "2 EXP";
          } else if (segmentIndex == 1) {
            logo = "cash";
            image = "assets/images/casino/wheel-fortune/prize/cash.png";
            action = "200 000 Р";
          } else if (segmentIndex == 2) {
            logo = "case";
            image = "assets/images/casino/wheel-fortune/prize/case.png";
            action = "кейс аксессуаров";
          } else if (segmentIndex == 3) {
            logo = "donate";
            image = "assets/images/casino/wheel-fortune/prize/donate.png";
            action = "20 доната";
          }
        }

        openPrize(goodPrize: goodPrize, logo: logo!, image: image!, action: action!);
      }
      wheelSpun = true;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _controller.addListener(() {
      setState(() {
        _rotationAngle = _controller.value * random.nextDouble() * 2000;
      });
    });
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _rotationAngle = _rotationAngle % 360;
        setState(() {});
      }
    });
  }

  openPrize({
    required bool goodPrize,
    required String logo,
    required String image,
    required String action,
  }) {
    showDialog(
        barrierColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: sdp_fromPX(context, 10), left: sdp_fromPX(context, 430), right: sdp_fromPX(context, 430), bottom: sdp_fromPX(context, 70)),
                  child: Container(
                    height: sdp_fromPX(context, 916),
                    width: sdp_fromPX(context, 1060),
                    decoration: ShapeDecoration(
                      gradient: goodPrize
                          ? LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [
                                0.001,
                                0.5,
                              ],
                              // radius: sdp_fromPX(context, 1.6),
                              colors: [
                                Color.fromARGB(255, 255, 166, 0),
                                Color.fromRGBO(95, 48, 156, 1),
                              ],
                            )
                          : LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color.fromRGBO(95, 48, 156, 1),
                                Color.fromRGBO(27, 4, 37, 1),
                              ],
                            ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(sdp_fromPX(context, 40)),
                      ),
                    ),
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.only(top: sdp_fromPX(context, 60)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/casino/wheel-fortune/fire.svg',
                              height: sdp_fromPX(context, 52),
                              width: sdp_fromPX(context, 42.4),
                            ),
                            Text(
                              ' Вы выиграли $action',
                              style:
                                  TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 48), fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: sdp_fromPX(context, 40), left: sdp_fromPX(context, 80), right: sdp_fromPX(context, 80)),
                        child: Container(
                          height: sdp_fromPX(context, 575),
                          width: sdp_fromPX(context, 900),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: sdp_fromPX(context, 1),
                                  color: goodPrize ? Color.fromRGBO(255, 168, 0, 0.3) : Color.fromRGBO(175, 3, 251, 0.3)),
                              borderRadius: BorderRadius.circular(sdp_fromPX(context, 30))),
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: sdp_fromPX(context, 30),
                            ),
                            child: Center(
                              child: Container(
                                child: Image.asset(
                                  image,
                                  height: sdp_fromPX(context, 515),
                                  width: sdp_fromPX(context, 515),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: sdp_fromPX(context, 30),
                          bottom: sdp_fromPX(context, 20),
                        ),
                        child: Center(
                          child: ButtonAnimator(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            childWidget: Container(
                              height: sdp_fromPX(context, 84),
                              width: sdp_fromPX(context, 448),
                              decoration: BoxDecoration(
                                  color: goodPrize ? Color.fromRGBO(255, 168, 0, 0.2) : Color(0x33AF03FB),
                                  borderRadius: BorderRadius.circular(sdp_fromPX(context, 50)),
                                  border: Border.all(
                                      width: sdp_fromPX(context, 2),
                                      color: goodPrize ? Color.fromRGBO(255, 168, 0, 0.3) : Color.fromRGBO(175, 3, 251, 0.3))),
                              child: Center(
                                child: Text(
                                  'Забрать приз',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ));
        });
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                'assets/images/casino/wheel-fortune/wheelFortuneBG.png',
                fit: BoxFit.fill,
              ),
            ),
            Center(
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: sdp_fromPX(context, 160),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            wheelSpun ? 'Попытки на сегодня закончились' : 'Будет доступно через 1 час 23 мин',
                            style: TextStyle(color: Color.fromRGBO(236, 127, 243, 1), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: sdp_fromPX(context, 140),
                            ),
                            child: Text(
                              'Колесо фортуны',
                              style:
                                  TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 60), fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: sdp_fromPX(context, 20),
                            ),
                            child: Text(
                              'Колесо фортуны можно крутить каждый день\nпосле 2 часов, проведенных в игре',
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 0.60), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: sdp_fromPX(context, 20),
                            ),
                            child: RichText(
                              text: TextSpan(
                                text: 'При покупке ',
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.60), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w400),
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: 'Матрешка+',
                                    style: TextStyle(color: Color.fromRGBO(255, 168, 0, 1), fontWeight: FontWeight.w500),
                                  ),
                                  TextSpan(
                                    text: ', колесо можно \nпрокрутить второй раз после 4 часов игры',
                                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.60), fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: sdp_fromPX(context, 36),
                            ),
                          ),
                          ButtonAnimator(
                            onTap: () {
                              wheelSpun ? () {} : _rotateWheel();
                            },
                            childWidget: Container(
                              height: sdp_fromPX(context, 87),
                              width: sdp_fromPX(context, 480),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(sdp_fromPX(context, 50)),
                                  color: wheelSpun ? Color.fromRGBO(186, 54, 248, 1) : Color.fromRGBO(255, 168, 0, 1)),
                              child: Center(
                                child: Text(
                                  wheelSpun ? 'Купить Матрешка+' : 'Крутить колесо',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 26), fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: sdp_fromPX(context, 68)),
                          child: SvgPicture.asset(
                            'assets/icons/casino/wheel-fortune/rectangle.svg',
                            height: sdp_fromPX(context, 54),
                            width: sdp_fromPX(context, 52),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          child: Transform.rotate(
                            angle: _rotationAngle * (3.14159265359 / 180),
                            child: Container(
                              height: sdp_fromPX(context, 860),
                              width: sdp_fromPX(context, 860),
                              child: Image.asset('assets/images/casino/wheel-fortune/wheel.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: sdp_fromPX(context, 68),
                right: sdp_fromPX(context, 40),
              ),
              child: Container(
                height: sdp_fromPX(context, 96),
                width: sdp_fromPX(context, 96),
                child: ButtonAnimator(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  childWidget: SvgPicture.asset(
                    'assets/icons/closebg.svg',
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
