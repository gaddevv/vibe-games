import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vibes_studio/components/buttons/button-animator.dart';
import 'package:vibes_studio/components/sdp.dart';
import 'package:vibes_studio/components/separeted-formatter.dart';

redBlack(BuildContext context) {
  List<bool> isSelected = List.generate(40, (index) => false);
  bool activeStart = false;
  bool activeStop = false;
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
                  width: sdp_fromPX(context, 1101),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(sdp_fromPX(context, 40)),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromRGBO(0, 0, 0, 0.95),
                        Color.fromRGBO(60, 21, 111, 0.95),
                      ],
                    ),
                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: sdp_fromPX(context, 61), left: sdp_fromPX(context, 100)),
                          child: RichText(
                            text: TextSpan(
                              text: 'Красное',
                              style: TextStyle(color: Color.fromRGBO(151, 43, 48, 1), fontSize: sdp_fromPX(context, 30), fontWeight: FontWeight.w700),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' и\nчерное',
                                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: sdp_fromPX(context, 61), left: sdp_fromPX(context, 277)),
                              child: Text(
                                'Сумма ставки: 500 000 (число 5)',
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: sdp_fromPX(context, 7), left: sdp_fromPX(context, 365)),
                              child: Text(
                                'Ваш выигрыш: 1 000 000',
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w400),
                              ),
                            )
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
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: sdp_fromPX(context, 100)),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: sdp_fromPX(context, 58),
                                ),
                                child: Text(
                                  '1 ряд',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w700),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: sdp_fromPX(context, 62),
                                ),
                                child: Text(
                                  '1 ряд',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w700),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: sdp_fromPX(context, 62),
                                ),
                                child: Text(
                                  '1 ряд',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w700),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: sdp_fromPX(context, 62),
                                ),
                                child: Text(
                                  '1 ряд',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 25), fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: sdp_fromPX(context, 58),
                            left: sdp_fromPX(context, 40),
                          ),
                          child: Container(
                            height: sdp_fromPX(context, 340),
                            width: sdp_fromPX(context, 800),
                            child: GridView.builder(
                              scrollDirection: Axis.horizontal,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisSpacing: sdp_fromPX(context, 30),
                                crossAxisSpacing: sdp_fromPX(context, 30),
                                crossAxisCount: 4,
                              ),
                              itemCount: 40,
                              itemBuilder: (context, index) {
                                final isEvenRow = (index ~/ 4) % 2 == 0;

                                return ButtonAnimator(
                                  onTap: () {
                                    setState(() => isSelected[index] = !isSelected[index]);
                                  },
                                  childWidget: Container(
                                    height: sdp_fromPX(context, 62),
                                    width: sdp_fromPX(context, 62),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(sdp_fromPX(context, 5)),
                                      border: Border.all(width: sdp_fromPX(context, 1), color: Color.fromRGBO(113, 56, 184, 0.3)),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(sdp_fromPX(context, 5)),
                                      child: Container(
                                        height: sdp_fromPX(context, 50),
                                        width: sdp_fromPX(context, 50),
                                        decoration: BoxDecoration(
                                          color: isSelected[index]
                                              ? Color.fromRGBO(55, 161, 98, 0.8)
                                              : isEvenRow
                                                  ? Color.fromRGBO(151, 43, 48, 1)
                                                  : Color.fromRGBO(0, 0, 0, 1),
                                          borderRadius: BorderRadius.circular(sdp_fromPX(context, 5)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '0',
                                            style: TextStyle(
                                                color: Color.fromRGBO(255, 255, 255, 1),
                                                fontSize: sdp_fromPX(context, 25),
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: sdp_fromPX(context, 58), left: sdp_fromPX(context, 214)),
                      child: Row(
                        children: [
                          ButtonAnimator(
                            onTap: () {},
                            childWidget: Container(
                              height: sdp_fromPX(context, 63),
                              width: sdp_fromPX(context, 221),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color.fromRGBO(134, 73, 212, 0.9),
                                    Color.fromRGBO(102, 43, 177, 0.9),
                                  ],
                                ),
                                color: Color.fromRGBO(55, 161, 98, 0.8),
                                borderRadius: BorderRadius.circular(sdp_fromPX(context, 5)),
                              ),
                              child: Center(
                                child: Text(
                                  'Точное число',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 23), fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 50))),
                          ButtonAnimator(
                            onTap: () {},
                            childWidget: Container(
                              height: sdp_fromPX(context, 63),
                              width: sdp_fromPX(context, 221),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color.fromRGBO(134, 73, 212, 0.2),
                                    Color.fromRGBO(102, 43, 177, 0.2),
                                  ],
                                ),
                                color: Color.fromRGBO(55, 161, 98, 0.8),
                                borderRadius: BorderRadius.circular(sdp_fromPX(context, 5)),
                              ),
                              child: Center(
                                child: Text(
                                  'Точный цвет',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 23), fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 50))),
                          ButtonAnimator(
                            onTap: () {},
                            childWidget: Container(
                              height: sdp_fromPX(context, 63),
                              width: sdp_fromPX(context, 221),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color.fromRGBO(134, 73, 212, 0.2),
                                    Color.fromRGBO(102, 43, 177, 0.2),
                                  ],
                                ),
                                color: Color.fromRGBO(55, 161, 98, 0.8),
                                borderRadius: BorderRadius.circular(sdp_fromPX(context, 5)),
                              ),
                              child: Center(
                                child: Text(
                                  'Номер ряда',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 23), fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: sdp_fromPX(context, 55), left: sdp_fromPX(context, 90)),
                      child: Text(
                        'Введите сумму ставки:',
                        style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 20), fontWeight: FontWeight.w400),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: sdp_fromPX(context, 213), top: sdp_fromPX(context, 10)),
                          child: ButtonAnimator(
                            onTap: () {
                              setState(() => activeStop ? activeStop = false : activeStop = true);
                            },
                            childWidget: Container(
                              height: sdp_fromPX(context, 83),
                              width: sdp_fromPX(context, 201),
                              decoration: BoxDecoration(
                                  color: activeStop ? Color.fromRGBO(184, 53, 53, 0.4) : Color.fromRGBO(184, 53, 53, 0.8),
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
                        Padding(
                          padding: EdgeInsets.only(left: sdp_fromPX(context, 40), top: sdp_fromPX(context, 10)),
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
                          padding: EdgeInsets.only(left: sdp_fromPX(context, 50), top: sdp_fromPX(context, 10)),
                          child: ButtonAnimator(
                            onTap: () {
                              setState(() => activeStart ? activeStart = false : activeStart = true);
                            },
                            childWidget: Container(
                              height: sdp_fromPX(context, 83),
                              width: sdp_fromPX(context, 201),
                              decoration: BoxDecoration(
                                  color: activeStart ? Color.fromRGBO(55, 161, 98, 0.4) : Color.fromRGBO(55, 161, 98, 0.8),
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
                      ],
                    ),
                  ]),
                ),
              ),
            )),
          );
        });
      });
}
