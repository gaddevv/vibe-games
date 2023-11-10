import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vibes_studio/components/buttons/button-animator.dart';
import 'package:vibes_studio/components/sdp.dart';
import 'package:vibes_studio/components/separeted-formatter.dart';

appleFortunes(BuildContext context) {
  List<List<String>> cells = [];

  bool activeBet = true;
  bool activeStop = true;

  int itemCount = 25;
  int event = 0;
  int actionsCount = 0; // Счетчик действий
  double containerOffset = sdp_fromPX(context, 465); // Начальное смещение контейнера
  double containerStep = sdp_fromPX(context, 97.5);

  void initializeGame() {
    cells = List.generate(5, (row) {
      return List.generate(5, (col) {
        final random = Random().nextInt(4);
        if (random == 0) {
          return 'apple';
        } else if (random == 1) {
          return 'rotten_apple';
        } else if (random == 2) {
          return 'bomb';
        } else {
          return 'empty';
        }
      });
    });
  }

  Widget buildCell(int index) {
    final row = index ~/ 5;
    final col = index % 5;
    // Check if the current cell should be wrapped in Opacity

    if (actionsCount < 5) {
      int step = (actionsCount + 1) * 5;
      int startIndex = itemCount - step + 5;

      if (index >= startIndex) {
        return Opacity(
          opacity: 0.2, // Set the opacity level as needed
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(sdp_fromPX(context, 5)),
              border: Border.all(width: sdp_fromPX(context, 1), color: Color(0xB27137B8)),
            ),
            child: Center(
              child: cells[row][col] == 'apple'
                  ? SvgPicture.asset(
                      height: sdp_fromPX(context, 48),
                      width: sdp_fromPX(context, 48),
                      'assets/icons/casino/apple-fortune/greenapple.svg',
                    )
                  : cells[row][col] == 'rotten_apple'
                      ? SvgPicture.asset(
                          height: sdp_fromPX(context, 48),
                          width: sdp_fromPX(context, 48),
                          'assets/icons/casino/apple-fortune/yellowapple.svg',
                        )
                      : cells[row][col] == 'bomb'
                          ? SvgPicture.asset(
                              height: sdp_fromPX(context, 48),
                              width: sdp_fromPX(context, 48),
                              'assets/icons/casino/apple-fortune/bomb.svg',
                            )
                          : Text(''),
            ),
          ),
        );
      }
    }

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(100, 39, 182, 0.01),
            Color.fromRGBO(113, 56, 184, 0.7),
          ],
        ),
        borderRadius: BorderRadius.circular(sdp_fromPX(context, 5)),
        border: Border.all(width: sdp_fromPX(context, 1), color: Color(0xB27137B8)),
      ),
      child: Center(
        child: cells[row][col] == 'apple'
            ? SvgPicture.asset(
                height: sdp_fromPX(context, 48),
                width: sdp_fromPX(context, 48),
                'assets/icons/casino/apple-fortune/greenapple.svg',
              )
            : cells[row][col] == 'rotten_apple'
                ? SvgPicture.asset(
                    height: sdp_fromPX(context, 48),
                    width: sdp_fromPX(context, 48),
                    'assets/icons/casino/apple-fortune/yellowapple.svg',
                  )
                : cells[row][col] == 'bomb'
                    ? SvgPicture.asset(
                        height: sdp_fromPX(context, 48),
                        width: sdp_fromPX(context, 48),
                        'assets/icons/casino/apple-fortune/bomb.svg',
                      )
                    : Text(''),
      ),
    );
  }

  initializeGame();
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
                    height: sdp_fromPX(context, 879),
                    width: sdp_fromPX(context, 1492),
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
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: sdp_fromPX(context, 86), left: sdp_fromPX(context, 200)),
                            child: Text(
                              'Сумма ставки: 500 000',
                              style:
                                  TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 30), fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: sdp_fromPX(context, 49), left: sdp_fromPX(context, 158)),
                              child: SvgPicture.asset(
                                'assets/icons/casino/apple-fortune/applefortune.svg',
                                height: sdp_fromPX(context, 109),
                                width: sdp_fromPX(context, 109),
                              )),
                          Padding(
                            padding: EdgeInsets.only(top: sdp_fromPX(context, 86), left: sdp_fromPX(context, 138)),
                            child: Text(
                              'Ваш выигрыш: 1 000 000',
                              style:
                                  TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 30), fontWeight: FontWeight.w400),
                            ),
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
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: sdp_fromPX(context, 114)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: sdp_fromPX(context, 100),
                                      ),
                                      child: Text(
                                        '1.0',
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: sdp_fromPX(context, 62),
                                      ),
                                      child: event >= 4
                                          ? Opacity(
                                              opacity: 0.2,
                                              child: Text(
                                                '1.0',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(255, 255, 255, 1),
                                                    fontSize: sdp_fromPX(context, 25),
                                                    fontWeight: FontWeight.w700),
                                              ),
                                            )
                                          : Text(
                                              '1.0',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(255, 255, 255, 1),
                                                  fontSize: sdp_fromPX(context, 25),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: sdp_fromPX(context, 62),
                                      ),
                                      child: event >= 3
                                          ? Opacity(
                                              opacity: 0.2,
                                              child: Text(
                                                '1.0',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(255, 255, 255, 1),
                                                    fontSize: sdp_fromPX(context, 25),
                                                    fontWeight: FontWeight.w700),
                                              ),
                                            )
                                          : Text(
                                              '1.0',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(255, 255, 255, 1),
                                                  fontSize: sdp_fromPX(context, 25),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: sdp_fromPX(context, 62),
                                      ),
                                      child: event >= 2
                                          ? Opacity(
                                              opacity: 0.2,
                                              child: Text(
                                                '1.0',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(255, 255, 255, 1),
                                                    fontSize: sdp_fromPX(context, 25),
                                                    fontWeight: FontWeight.w700),
                                              ),
                                            )
                                          : Text(
                                              '1.0',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(255, 255, 255, 1),
                                                  fontSize: sdp_fromPX(context, 25),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: sdp_fromPX(context, 62),
                                      ),
                                      child: event >= 1
                                          ? Opacity(
                                              opacity: 0.2,
                                              child: Text(
                                                '1.0',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(255, 255, 255, 1),
                                                    fontSize: sdp_fromPX(context, 25),
                                                    fontWeight: FontWeight.w700),
                                              ),
                                            )
                                          : Text(
                                              '1.0',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(255, 255, 255, 1),
                                                  fontSize: sdp_fromPX(context, 25),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: sdp_fromPX(context, 80), left: sdp_fromPX(context, 200)),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: sdp_fromPX(context, 500),
                                      width: sdp_fromPX(context, 500),
                                      child: GridView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisSpacing: sdp_fromPX(context, 30),
                                          crossAxisSpacing: sdp_fromPX(context, 40),
                                          crossAxisCount: 5,
                                        ),
                                        itemCount: itemCount,
                                        itemBuilder: (context, index) {
                                          return buildCell(index);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: containerOffset,
                                left: sdp_fromPX(context, 100),
                                child: Container(
                                  height: sdp_fromPX(context, 81),
                                  width: sdp_fromPX(context, 630),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(134, 73, 212, 0.15), borderRadius: BorderRadius.circular(sdp_fromPX(context, 5))),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: sdp_fromPX(context, 100)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: sdp_fromPX(context, 40),
                                  ),
                                  child: Text(
                                    '1.0',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: sdp_fromPX(context, 62),
                                  ),
                                  child: Text(
                                    '1.0',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: sdp_fromPX(context, 62),
                                  ),
                                  child: Text(
                                    '1.0',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: sdp_fromPX(context, 62),
                                  ),
                                  child: Text(
                                    '1.0',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                      top: sdp_fromPX(context, 62),
                                    ),
                                    child: Text(
                                      '1.0',
                                      style: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w700),
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: sdp_fromPX(context, 80), left: sdp_fromPX(context, 50)),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: sdp_fromPX(context, 500),
                                  width: sdp_fromPX(context, 500),
                                  child: GridView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisSpacing: sdp_fromPX(context, 30),
                                      crossAxisSpacing: sdp_fromPX(context, 40),
                                      crossAxisCount: 5,
                                    ),
                                    itemCount: 25,
                                    itemBuilder: (context, index) {
                                      final row = index ~/ 5;
                                      final col = index % 5;

                                      return Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Color.fromRGBO(100, 39, 182, 0.01),
                                              Color.fromRGBO(113, 56, 184, 0.7),
                                            ],
                                          ),
                                          borderRadius: BorderRadius.circular(sdp_fromPX(context, 5)),
                                          border: Border.all(width: sdp_fromPX(context, 1), color: Color(0xB27137B8)),
                                          color: cells[row][col] == 'grayed' ? Colors.grey : Color.fromRGBO(91, 59, 99, 1),
                                        ),
                                        child: Center(
                                          child: cells[row][col] == 'apple'
                                              ? SvgPicture.asset(
                                                  height: sdp_fromPX(context, 48),
                                                  width: sdp_fromPX(context, 48),
                                                  'assets/icons/casino/apple-fortune/greenapple.svg',
                                                )
                                              : cells[row][col] == 'rotten_apple'
                                                  ? SvgPicture.asset(
                                                      height: sdp_fromPX(context, 48),
                                                      width: sdp_fromPX(context, 48),
                                                      'assets/icons/casino/apple-fortune/yellowapple.svg',
                                                    )
                                                  : cells[row][col] == 'bomb'
                                                      ? SvgPicture.asset(
                                                          height: sdp_fromPX(context, 48),
                                                          width: sdp_fromPX(context, 48),
                                                          'assets/icons/casino/apple-fortune/bomb.svg',
                                                        )
                                                      : Text(''),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: sdp_fromPX(context, 277)),
                        child: Text('Введите сумму ставки:',
                            style:
                                TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 20), fontWeight: FontWeight.w400)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: sdp_fromPX(context, 9),
                          left: sdp_fromPX(context, 277),
                        ),
                        child: Row(
                          children: [
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
                                    borderSide: BorderSide(width: sdp_fromPX(context, 2), color: Color.fromRGBO(60, 21, 111, 0.95)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(sdp_fromPX(context, 5)),
                                    borderSide: BorderSide(width: sdp_fromPX(context, 2), color: Color.fromRGBO(60, 21, 111, 0.95)),
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
                                  setState(() => activeBet ? activeBet = false : activeBet = true);

                                  // Change container offset
                                  containerOffset -= containerStep;

                                  // Change the colors of the last 5 elements in the builder

                                  actionsCount++;
                                  event++;
                                  if (actionsCount % 5 == 0) {
                                    setState(() {
                                      actionsCount = 0;
                                      event = 0;
                                    });
                                    // Return to the initial position every 5 actions
                                    containerOffset = sdp_fromPX(context, 465);
                                  }
                                },
                                childWidget: Container(
                                  height: sdp_fromPX(context, 84),
                                  width: sdp_fromPX(context, 284),
                                  decoration: BoxDecoration(
                                      color: activeBet ? Color.fromRGBO(55, 161, 98, 0.8) : Color.fromRGBO(55, 161, 98, 0.15),
                                      borderRadius: BorderRadius.circular(sdp_fromPX(context, 5)),
                                      border: Border.all(width: sdp_fromPX(context, 2), color: Color.fromRGBO(55, 161, 98, 0.4))),
                                  child: Center(
                                    child: Text(
                                      'Сделать ставку',
                                      style: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 30), fontWeight: FontWeight.w500),
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
                                      'Стоп',
                                      style: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 30), fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            ),
          );
        });
      });
}
