import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vibes_studio/components/buttons/button-animator.dart';
import 'package:vibes_studio/components/sdp.dart';
import 'package:vibes_studio/components/separeted-formatter.dart';

moreLess(BuildContext context) {
  bool activeBet = true;
  bool activeStop = true;
  bool activeUp = true;
  bool activeDown = true;
  int leftNumber = Random().nextInt(100);
  int rightNumber = Random().nextInt(100);

  showDialog(
      barrierColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Center(
                  child: Padding(
                padding: EdgeInsets.only(top: sdp_fromPX(context, 80)),
                child: Container(
                  height: sdp_fromPX(context, 758),
                  width: sdp_fromPX(context, 1068),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(sdp_fromPX(context, 40)),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromRGBO(0, 0, 0, 0.95),
                        Color.fromRGBO(60, 21, 111, 0.9),
                      ],
                    ),
                  ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: sdp_fromPX(context, 67), left: sdp_fromPX(context, 85)),
                          child: Text(
                            '“Больше - меньше”',
                            style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 35), fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: sdp_fromPX(context, 123)),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: sdp_fromPX(context, 55), left: sdp_fromPX(context, 23)),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Сумма ставки:',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w400),
                                  children: const <TextSpan>[
                                    TextSpan(
                                      text: ' 500 000',
                                      style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: sdp_fromPX(context, 5),
                              ),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Ваш выигрыш:',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w400),
                                  children: const <TextSpan>[
                                    TextSpan(
                                      text: ' 1 000 000',
                                      style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: sdp_fromPX(context, 86),
                              right: sdp_fromPX(context, 40),
                            ),
                            child: Container(
                              height: sdp_fromPX(context, 44),
                              width: sdp_fromPX(context, 44),
                              child: ButtonAnimator(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                childWidget: SvgPicture.asset(
                                  height: sdp_fromPX(context, 34),
                                  width: sdp_fromPX(context, 34),
                                  'assets/icons/close.svg',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: sdp_fromPX(context, 118), left: sdp_fromPX(context, 128)),
                            child: Container(
                              height: sdp_fromPX(context, 242),
                              width: sdp_fromPX(context, 249),
                              color: Color.fromRGBO(134, 73, 212, 0.15),
                              child: Center(
                                child: Text(
                                  leftNumber.toString(),
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 120), fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: sdp_fromPX(context, 62),
                          ),
                          child: Container(
                            height: sdp_fromPX(context, 353),
                            width: sdp_fromPX(context, 448),
                            color: Color.fromRGBO(113, 56, 184, 0.7),
                            child: Center(
                              child: Text(
                                rightNumber.toString(),
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 206), fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 25))),
                        Padding(
                          padding: EdgeInsets.only(top: sdp_fromPX(context, 62)),
                          child: Column(
                            children: [
                              ButtonAnimator(
                                onTap: () {
                                  setState(() {
                                    rightNumber = Random().nextInt(100);
                                    activeUp ? activeUp = false : activeUp = true;
                                  });
                                },
                                childWidget: Container(
                                  height: sdp_fromPX(context, 165),
                                  width: sdp_fromPX(context, 90),
                                  decoration: BoxDecoration(
                                      color: activeUp ? Color.fromRGBO(90, 217, 141, 0.8) : Color.fromRGBO(55, 161, 98, 0.15),
                                      borderRadius: BorderRadius.circular(sdp_fromPX(context, 5)),
                                      border: Border.all(width: sdp_fromPX(context, 2), color: Color.fromRGBO(55, 161, 98, 0.4))),
                                  child: Center(
                                    child: Text(
                                      '↑',
                                      style: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 80), fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 20))),
                              ButtonAnimator(
                                onTap: () {
                                  setState(() {
                                    leftNumber = Random().nextInt(100);
                                    activeDown ? activeDown = false : activeDown = true;
                                  });
                                },
                                childWidget: Container(
                                  height: sdp_fromPX(context, 165),
                                  width: sdp_fromPX(context, 90),
                                  decoration: BoxDecoration(
                                      color: activeDown ? Color.fromRGBO(184, 53, 53, 0.8) : Color.fromRGBO(184, 53, 53, 0.15),
                                      borderRadius: BorderRadius.circular(sdp_fromPX(context, 5)),
                                      border: Border.all(width: sdp_fromPX(context, 2), color: Color.fromRGBO(184, 53, 53, 0.4))),
                                  child: Center(
                                    child: Text(
                                      '↓',
                                      style: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 80), fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: sdp_fromPX(context, 32), left: sdp_fromPX(context, 120)),
                      child: Text(
                        'Введите сумму ставки:',
                        style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 20), fontWeight: FontWeight.w400),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: sdp_fromPX(context, 16), left: sdp_fromPX(context, 120)),
                          child: Container(
                            height: sdp_fromPX(context, 83),
                            width: sdp_fromPX(context, 284),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              keyboardType: TextInputType.phone,
                              maxLength: 10,
                              inputFormatters: [ThousandsSeparatorInputFormatter()],
                              cursorColor: Color.fromRGBO(255, 255, 255, 1),
                              style:
                                  TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 30), fontWeight: FontWeight.w500),
                              decoration: InputDecoration(
                                counterText: "",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(sdp_fromPX(context, 5)),
                                  borderSide: BorderSide(width: sdp_fromPX(context, 2), color: Color.fromRGBO(60, 21, 111, 0.95)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(sdp_fromPX(context, 5)),
                                  borderSide: BorderSide(width: sdp_fromPX(context, 2), color: Color.fromRGBO(60, 21, 111, 0.95)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: sdp_fromPX(context, 50),
                          ),
                          child: ButtonAnimator(
                            onTap: () {
                              setState(() {
                                rightNumber = Random().nextInt(100);
                                leftNumber = Random().nextInt(100);
                                activeBet ? activeBet = false : activeBet = true;
                              });
                            },
                            childWidget: Container(
                              height: sdp_fromPX(context, 84),
                              width: sdp_fromPX(context, 284),
                              decoration: BoxDecoration(
                                  color: activeBet ? Color.fromRGBO(90, 217, 141, 0.8) : Color.fromRGBO(55, 161, 98, 0.15),
                                  borderRadius: BorderRadius.circular(sdp_fromPX(context, 5)),
                                  border: Border.all(width: sdp_fromPX(context, 2), color: Color.fromRGBO(55, 161, 98, 0.4))),
                              child: Center(
                                child: Text(
                                  'Играть',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 30), fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: sdp_fromPX(context, 19),
                          ),
                          child: ButtonAnimator(
                            onTap: () {
                              setState(() => activeStop ? activeStop = false : activeStop = true);
                            },
                            childWidget: Container(
                              height: sdp_fromPX(context, 84),
                              width: sdp_fromPX(context, 284),
                              decoration: BoxDecoration(
                                  color: activeStop ? Color.fromRGBO(184, 53, 53, 0.8) : Color.fromRGBO(184, 53, 53, 0.15),
                                  borderRadius: BorderRadius.circular(sdp_fromPX(context, 5)),
                                  border: Border.all(width: sdp_fromPX(context, 2), color: Color.fromRGBO(184, 53, 53, 0.4))),
                              child: Center(
                                child: Text(
                                  'Отмена',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 30), fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
                ),
              )),
            ),
          );
        });
      });
}
