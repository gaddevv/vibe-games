import 'package:flutter/material.dart';
import 'package:vibes_studio/elements/alert/confirmation.dart';
import 'package:vibes_studio/elements/buttons/button-animator.dart';
import 'package:vibes_studio/elements/card/donat-card.dart';
import 'package:vibes_studio/elements/sdp.dart';

class DonatPayScreen extends StatefulWidget {
  const DonatPayScreen({super.key});

  @override
  State<DonatPayScreen> createState() => _DonatPayScreenState();
}

class _DonatPayScreenState extends State<DonatPayScreen> {
  double inputValue = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sdp_fromPX(context, 1080),
      width: sdp_fromPX(context, 1920),
      child: Padding(
        padding: EdgeInsets.only(top: sdp_fromPX(context, 80), left: sdp_fromPX(context, 75)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: sdp_fromPX(context, 580),
              width: sdp_fromPX(context, 817),
              decoration: BoxDecoration(color: Color(0xFF291D37), borderRadius: BorderRadius.circular(sdp_fromPX(context, 15))),
              child: Padding(
                padding: EdgeInsets.only(left: sdp_fromPX(context, 60)),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Padding(
                    padding: EdgeInsets.only(top: sdp_fromPX(context, 50)),
                  ),
                  Text(
                    'Введите сумму',
                    style: TextStyle(
                      color: Color(0xFF927CA8),
                      fontSize: sdp_fromPX(context, 32),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: sdp_fromPX(context, 18)),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: sdp_fromPX(context, 83),
                    width: sdp_fromPX(context, 695),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          inputValue = double.tryParse(value) ?? 0;
                        });
                      },
                      cursorColor: Color.fromRGBO(255, 255, 255, 1),
                      cursorWidth: sdp_fromPX(context, 2),
                      cursorHeight: sdp_fromPX(context, 50),
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: sdp_fromPX(context, 38),
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                          hintText: '> Нажмите для ввода',
                          hintStyle: TextStyle(
                            color: Color(0xFF927CA8),
                            fontSize: sdp_fromPX(context, 38),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                          contentPadding: EdgeInsets.only(top: sdp_fromPX(context, 20), left: sdp_fromPX(context, 35)),
                          fillColor: Color(0xFF1D1427),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(sdp_fromPX(context, 7)),
                              borderSide: BorderSide(
                                width: sdp_fromPX(context, 2),
                                color: Color(0xFF4D3D5F),
                              ))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: sdp_fromPX(context, 30)),
                  ),
                  Text(
                    'Введите E-mail для отправки чека',
                    style: TextStyle(
                      color: Color(0xFF927CA8),
                      fontSize: sdp_fromPX(context, 32),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: sdp_fromPX(context, 18)),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: sdp_fromPX(context, 83),
                    width: sdp_fromPX(context, 695),
                    child: TextFormField(
                      cursorColor: Color.fromRGBO(255, 255, 255, 1),
                      cursorWidth: sdp_fromPX(context, 2),
                      cursorHeight: sdp_fromPX(context, 50),
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: sdp_fromPX(context, 38),
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                          hintText: '> Нажмите для ввода',
                          hintStyle: TextStyle(
                            color: Color(0xFF927CA8),
                            fontSize: sdp_fromPX(context, 38),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                          contentPadding: EdgeInsets.only(top: sdp_fromPX(context, 20), left: sdp_fromPX(context, 35)),
                          fillColor: Color(0xFF1D1427),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(sdp_fromPX(context, 7)),
                              borderSide: BorderSide(
                                width: sdp_fromPX(context, 2),
                                color: Color(0xFF4D3D5F),
                              ))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: sdp_fromPX(context, 85)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ButtonAnimator(
                        onTap: () {
                          setState(() {
                            showDialog(
                                useSafeArea: false,
                                context: context,
                                builder: (BuildContext context) {
                                  return ConfirmationAlert(
                                    title: 'Подтверждение',
                                    text: 'Вы действительно ',
                                    richText: 'согласны пополнить счет?',
                                    onTapAccept: () {
                                      setState(() {
                                        Navigator.pop(context);
                                      });
                                    },
                                    onTapCancel: () {
                                      setState(() {
                                        Navigator.pop(context);
                                      });
                                    },
                                  );
                                });
                          });
                        },
                        childWidget: Container(
                          height: sdp_fromPX(context, 83),
                          width: sdp_fromPX(context, 331),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Color.fromRGBO(128, 255, 125, 1), Color.fromRGBO(66, 131, 64, 1)],
                              ),
                              borderRadius: BorderRadius.circular(sdp_fromPX(context, 15))),
                          child: Center(
                            child: Text('Оплатить',
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 33), fontWeight: FontWeight.w400)),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 50))),
                      ButtonAnimator(
                        childWidget: Container(
                          height: sdp_fromPX(context, 83),
                          width: sdp_fromPX(context, 331),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Color.fromRGBO(255, 82, 82, 1), Color.fromRGBO(144, 45, 45, 1)],
                              ),
                              borderRadius: BorderRadius.circular(sdp_fromPX(context, 15))),
                          child: Center(
                              child: Text('Отмена',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 33), fontWeight: FontWeight.w400))),
                        ),
                      ),
                    ],
                  )
                ]),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 34))),
            Container(
              height: sdp_fromPX(context, 400),
              width: sdp_fromPX(context, 820),
              child: Wrap(
                spacing: sdp_fromPX(context, 20),
                runSpacing: sdp_fromPX(context, 20),
                children: [
                  Opacity(
                    opacity: inputValue == 0 || inputValue >= 0 && inputValue < 500 ? 1 : 0.4,
                    child: DonatCard(
                      percent: 100,
                      interval: 0,
                    ),
                  ),
                  Opacity(
                    opacity: inputValue == 0 || inputValue >= 499 && inputValue < 1000 ? 1 : 0.4,
                    child: DonatCard(
                      percent: 112,
                      interval: 500,
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color.fromRGBO(112, 0, 255, 1),
                          Color(0xFF291D37),
                        ],
                      ),
                      bottomGradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(0, 133, 255, 1),
                          Color.fromRGBO(167, 0, 255, 1),
                        ],
                      ),
                      bottomText: 'Самый популярный!',
                    ),
                  ),
                  Opacity(
                    opacity: inputValue == 0 || inputValue >= 999 && inputValue < 2000 ? 1 : 0.4,
                    child: DonatCard(
                      percent: 117,
                      interval: 1000,
                    ),
                  ),
                  Opacity(
                    opacity: inputValue == 0 || inputValue >= 1999 && inputValue < 3000 ? 1 : 0.4,
                    child: DonatCard(
                      percent: 122,
                      interval: 2000,
                    ),
                  ),
                  Opacity(
                    opacity: inputValue == 0 || inputValue >= 2999 && inputValue < 5000 ? 1 : 0.4,
                    child: DonatCard(
                      percent: 127,
                      interval: 3000,
                    ),
                  ),
                  Opacity(
                    opacity: inputValue == 0 || inputValue >= 4999 && inputValue < 100000000 ? 1 : 0.4,
                    child: DonatCard(
                      percent: 132,
                      interval: 5000,
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color.fromRGBO(255, 230, 0, 0.5),
                          Color(0xFF291D37),
                        ],
                      ),
                      bottomGradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(255, 92, 0, 1),
                          Color.fromRGBO(255, 230, 0, 1),
                        ],
                      ),
                      bottomText: 'Самый выгодный!',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
