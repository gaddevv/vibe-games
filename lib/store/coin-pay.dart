import 'package:flutter/material.dart';
import 'package:vibes_studio/elements/alert/confirmation.dart';
import 'package:vibes_studio/elements/buttons/button-animator.dart';
import 'package:vibes_studio/elements/sdp.dart';

class CoinPayScreen extends StatefulWidget {
  const CoinPayScreen({super.key});

  @override
  State<CoinPayScreen> createState() => _CoinPayScreenState();
}

class _CoinPayScreenState extends State<CoinPayScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: sdp_fromPX(context, 120), right: sdp_fromPX(context, 120)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: sdp_fromPX(context, 20)),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Текущий баланс ',
                  style: TextStyle(
                    color: Color(0xFF927CA8),
                    fontSize: sdp_fromPX(context, 32),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: '0 коинов',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: sdp_fromPX(context, 32),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: sdp_fromPX(context, 20)),
          ),
          Container(
            padding: EdgeInsets.only(left: sdp_fromPX(context, 60), right: sdp_fromPX(context, 60), bottom: sdp_fromPX(context, 50)),
            decoration: BoxDecoration(color: Color(0xFF291D37), borderRadius: BorderRadius.circular(sdp_fromPX(context, 15))),
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
                // width: sdp_fromPX(context, 1530),
                child: TextFormField(
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
                      filled: true,
                      fillColor: Color.fromRGBO(29, 21, 39, 1),
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
                // width: sdp_fromPX(context, 1530),
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
                      filled: true,
                      fillColor: Color.fromRGBO(29, 21, 39, 1),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ButtonAnimator(
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
                        // width: sdp_fromPX(context, 760),
                        padding: EdgeInsets.only(left: sdp_fromPX(context, 245), right: sdp_fromPX(context, 245)),

                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color.fromRGBO(128, 255, 125, 1), Color.fromRGBO(66, 131, 64, 1)],
                            ),
                            borderRadius: BorderRadius.circular(sdp_fromPX(context, 15))),
                        child: Center(
                          child: Text('Купить',
                              style:
                                  TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 33), fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 50))),
                  Expanded(
                    child: ButtonAnimator(
                      childWidget: Container(
                        padding: EdgeInsets.only(left: sdp_fromPX(context, 245), right: sdp_fromPX(context, 245)),
                        height: sdp_fromPX(context, 83),
                        // width: sdp_fromPX(context, 760),
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
                  ),
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}
