import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vibes_studio/elements/buttons/button-animator.dart';
import 'package:vibes_studio/elements/card/jackpotcard.dart';
import 'package:vibes_studio/elements/sdp.dart';
import 'package:vibes_studio/elements/separeted-formatter.dart';

jatpack(BuildContext context) {
  List<String> image = [
    'assets/icons/grape.svg',
    'assets/icons/diamond.svg',
    'assets/icons/cherry.svg',
    'assets/icons/clover.svg',
    'assets/icons/lemon.svg',
    'assets/icons/M.svg',
    'assets/icons/7.svg',
    'assets/icons/grape.svg',
    'assets/icons/diamond.svg',
    'assets/icons/cherry.svg',
    'assets/icons/clover.svg',
    'assets/icons/lemon.svg',
    'assets/icons/M.svg',
    'assets/icons/7.svg',
    'assets/icons/grape.svg',
    'assets/icons/diamond.svg',
    'assets/icons/cherry.svg',
    'assets/icons/clover.svg',
    'assets/icons/lemon.svg',
    'assets/icons/M.svg',
    'assets/icons/7.svg',
  ];

  List<String> shuffledImage = [];
  void shuffleImages() {
    final random = Random();
    for (int i = shuffledImage.length - 1; i > 0; i--) {
      int j = random.nextInt(i + 1);
      String temp = shuffledImage[i];
      shuffledImage[i] = shuffledImage[j];
      shuffledImage[j] = temp;
    }
  }

  shuffledImage = List.from(image);

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
                  padding: EdgeInsets.only(top: sdp_fromPX(context, 40)),
                  child: Container(
                    height: sdp_fromPX(context, 935),
                    width: sdp_fromPX(context, 1601),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(sdp_fromPX(context, 40)),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(0, 0, 0, 1),
                          Color.fromRGBO(60, 21, 111, 1),
                        ],
                      ),
                    ),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: sdp_fromPX(context, 40), left: sdp_fromPX(context, 288)),
                              child: Text(
                                'Сумма ставки',
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.40), fontSize: sdp_fromPX(context, 27), fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: sdp_fromPX(context, 40), left: sdp_fromPX(context, 20)),
                              child: Text(
                                '1 000 000',
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 27), fontWeight: FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: sdp_fromPX(context, 29), left: sdp_fromPX(context, 80)),
                              child: RichText(
                                text: TextSpan(
                                  text: '777',
                                  style: TextStyle(
                                      color: Color.fromRGBO(113, 56, 184, 1), fontSize: sdp_fromPX(context, 48), fontWeight: FontWeight.w800),
                                  children: const <TextSpan>[
                                    TextSpan(
                                      text: 'ackpot',
                                      style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: sdp_fromPX(context, 40), left: sdp_fromPX(context, 80)),
                              child: Text(
                                'Ваш выигрыш',
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.40), fontSize: sdp_fromPX(context, 27), fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: sdp_fromPX(context, 40), left: sdp_fromPX(context, 20)),
                              child: Text(
                                '100 000 000',
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 27), fontWeight: FontWeight.w700),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: sdp_fromPX(context, 40),
                                  right: sdp_fromPX(context, 40),
                                ),
                                child: Container(
                                  height: sdp_fromPX(context, 50),
                                  width: sdp_fromPX(context, 50),
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
                        Padding(
                          padding: EdgeInsets.only(top: sdp_fromPX(context, 115), left: sdp_fromPX(context, 60)),
                          child: Column(
                            children: [
                              JackpotCard(image: 'assets/images/reward/reward-7.png'),
                              Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 20))),
                              JackpotCard(image: 'assets/images/reward/reward-diamond.png'),
                              Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 20))),
                              JackpotCard(image: 'assets/images/reward/reward-lemon.png'),
                              Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 20))),
                              JackpotCard(image: 'assets/images/reward/reward-grape.png'),
                              Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 20))),
                              JackpotCard(image: 'assets/images/reward/reward-cherry.png'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: sdp_fromPX(context, 115),
                            left: sdp_fromPX(context, 433),
                          ),
                          child: Container(
                            height: sdp_fromPX(context, 760),
                            width: sdp_fromPX(context, 804),
                            decoration: BoxDecoration(),
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Center(
                                  child: Container(
                                    height: sdp_fromPX(context, 760),
                                    width: sdp_fromPX(context, 764),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(sdp_fromPX(context, 30)), color: Color.fromRGBO(173, 0, 255, 0.05)),
                                    child: Center(
                                      child: GridView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                        ),
                                        itemCount: shuffledImage.length,
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: EdgeInsets.all(sdp_fromPX(context, 30)),
                                            child: Container(
                                              height: sdp_fromPX(context, 188),
                                              width: sdp_fromPX(context, 188),
                                              child: Center(
                                                child: SvgPicture.asset(shuffledImage[index]),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: sdp_fromPX(context, 240),
                                  width: sdp_fromPX(context, 804),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color.fromRGBO(173, 0, 255, 0.3),
                                        Color.fromRGBO(173, 0, 255, 0.18),
                                        Color.fromRGBO(173, 0, 255, 0.3),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(sdp_fromPX(context, 30)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: sdp_fromPX(context, 268)),
                                  child: Container(
                                    height: sdp_fromPX(context, 680),
                                    width: sdp_fromPX(context, 2),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(113, 56, 184, 0.2),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: sdp_fromPX(context, 536)),
                                  child: Container(
                                    height: sdp_fromPX(context, 680),
                                    width: sdp_fromPX(context, 2),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(113, 56, 184, 0.2),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: sdp_fromPX(context, 145),
                              left: sdp_fromPX(context, 1257),
                              right: sdp_fromPX(context, 60),
                              bottom: sdp_fromPX(context, 40)),
                          child: Column(children: [
                            Text(
                              'Введите сумму ставки',
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 0.4), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                              top: sdp_fromPX(context, 12),
                            )),
                            Container(
                              height: sdp_fromPX(context, 83),
                              width: sdp_fromPX(context, 284),
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.phone,
                                maxLength: 10,
                                inputFormatters: [ThousandsSeparatorInputFormatter()],
                                cursorColor: Color.fromRGBO(255, 255, 255, 1),
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 30), fontWeight: FontWeight.w500),
                                decoration: InputDecoration(
                                  counterText: "",
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(sdp_fromPX(context, 20)),
                                    borderSide: BorderSide(width: sdp_fromPX(context, 2), color: Color.fromRGBO(113, 56, 184, 0.4)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(sdp_fromPX(context, 20)),
                                    borderSide: BorderSide(width: sdp_fromPX(context, 2), color: Color.fromRGBO(113, 56, 184, 0.4)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 30))),
                            ButtonAnimator(
                              onTap: () {
                                setState(() => shuffleImages());
                              },
                              childWidget: Container(
                                height: sdp_fromPX(context, 84),
                                width: sdp_fromPX(context, 284),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(55, 161, 98, 0.3),
                                    borderRadius: BorderRadius.circular(sdp_fromPX(context, 20)),
                                    border: Border.all(width: sdp_fromPX(context, 2), color: Color.fromRGBO(55, 161, 98, 0.8))),
                                child: Center(
                                  child: Text(
                                    'Старт',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 0.4), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 253))),
                            Text(
                              'Максимальная ставка',
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 0.4), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w400),
                            ),
                            Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 10))),
                            Text(
                              '10 000 000 Р',
                              style:
                                  TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w500),
                            ),
                            Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 30))),
                            Text(
                              'Минимальная ставка',
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 0.4), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w400),
                            ),
                            Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 10))),
                            Text(
                              '1 000 Р',
                              style:
                                  TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w500),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
      });
}
