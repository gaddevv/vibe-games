import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vibes_studio/casino/apple_fortunes.dart';
import 'package:vibes_studio/casino/jackpot.dart';
import 'package:vibes_studio/casino/more_less.dart';
import 'package:vibes_studio/casino/red_black.dart';
import 'package:vibes_studio/casino/wheel_fortune.dart';
import 'package:vibes_studio/elements/button_animator.dart';
import 'package:vibes_studio/elements/sdp.dart';
import 'package:vibes_studio/globals.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              child: Image.asset(
                'assets/images/carbackground.png',
                fit: BoxFit.fill,
                height: sdp_fromPX(context, 1080),
                width: sdp_fromPX(context, 2339),
              ),
            ),
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ButtonAnimator(
                    onTap: () {
                      jatpack(context);
                    },
                    childWidget: Container(
                      height: sdp_fromPX(context, 84),
                      width: sdp_fromPX(context, 284),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(46, 5, 230, 1),
                          borderRadius:
                              BorderRadius.circular(sdp_fromPX(context, 20)),
                          border: Border.all(
                              width: sdp_fromPX(context, 2),
                              color: Color.fromRGBO(55, 161, 98, 0.8))),
                      child: Center(
                        child: Text(
                          'Jatpack',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.4),
                              fontSize: sdp_fromPX(context, 30),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: sdp_fromPX(context, 40))),
                  ButtonAnimator(
                    onTap: () {
                      pushPage(context, WheelFortuneScreen());
                    },
                    childWidget: Container(
                      height: sdp_fromPX(context, 84),
                      width: sdp_fromPX(context, 284),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(158, 5, 230, 1),
                          borderRadius:
                              BorderRadius.circular(sdp_fromPX(context, 20)),
                          border: Border.all(
                              width: sdp_fromPX(context, 2),
                              color: Color.fromRGBO(55, 161, 98, 0.8))),
                      child: Center(
                        child: Text(
                          'Wheel Fortune',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.4),
                              fontSize: sdp_fromPX(context, 30),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ]),
                Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 40))),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ButtonAnimator(
                    onTap: () {
                      appleFortunes(context);
                    },
                    childWidget: Container(
                      height: sdp_fromPX(context, 84),
                      width: sdp_fromPX(context, 284),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(114, 173, 26, 0.857),
                          borderRadius:
                              BorderRadius.circular(sdp_fromPX(context, 20)),
                          border: Border.all(
                              width: sdp_fromPX(context, 2),
                              color: Color.fromRGBO(55, 161, 98, 0.8))),
                      child: Center(
                        child: Text(
                          'Apple Fortunes',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.4),
                              fontSize: sdp_fromPX(context, 30),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: sdp_fromPX(context, 40))),
                  ButtonAnimator(
                    onTap: () {
                      redBlack(context);
                    },
                    childWidget: Container(
                      height: sdp_fromPX(context, 84),
                      width: sdp_fromPX(context, 284),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(230, 28, 5, 1),
                          borderRadius:
                              BorderRadius.circular(sdp_fromPX(context, 20)),
                          border: Border.all(
                              width: sdp_fromPX(context, 2),
                              color: Color.fromRGBO(0, 0, 0, 0.8))),
                      child: Center(
                        child: Text(
                          'Red&Black',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.4),
                              fontSize: sdp_fromPX(context, 30),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: sdp_fromPX(context, 40))),
                  ButtonAnimator(
                    onTap: () {
                      moreLess(context);
                    },
                    childWidget: Container(
                      height: sdp_fromPX(context, 84),
                      width: sdp_fromPX(context, 284),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(226, 230, 5, 0.732),
                          borderRadius:
                              BorderRadius.circular(sdp_fromPX(context, 20)),
                          border: Border.all(
                              width: sdp_fromPX(context, 2),
                              color: Color.fromRGBO(0, 0, 0, 0.8))),
                      child: Center(
                        child: Text(
                          'Больше&Меньше',
                          style: TextStyle(
                              color: Color.fromRGBO(70, 63, 63, 0.4),
                              fontSize: sdp_fromPX(context, 30),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ]),
              ],
            ))
          ],
        ));
  }
}
