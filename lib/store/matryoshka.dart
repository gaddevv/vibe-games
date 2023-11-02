import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vibes_studio/elements/buttons/button-animator.dart';
import 'package:vibes_studio/elements/card/store-card.dart';
import 'package:vibes_studio/elements/lists/check-list.dart';
import 'package:vibes_studio/elements/sdp.dart';

class MatryoshkaScreen extends StatefulWidget {
  const MatryoshkaScreen({super.key});

  @override
  State<MatryoshkaScreen> createState() => _MatryoshkaScreenState();
}

class _MatryoshkaScreenState extends State<MatryoshkaScreen> {
  List<Map<String, dynamic>> matryoshkaData = [
    {'description': 'Отсутствие ожидания потери сознания'},
    {'description': 'Износ автомобиля в два раза меньше'},
    {'description': 'На время действия подписки - скин “Дани милохина”'},
    {'description': 'На время действия подписки - скин “Вали карнавал”'},
    {'description': 'На время действия подписки - автомобиль lamborgini huracan'},
    {'description': 'На время действия подписки - Весь комплект аудио-подписки'},
    {'description': 'Эксклюзивная функция - “Анти-радар”'},
    {'description': 'Эксклюзивная функция - “Анти-светофор”'},
    {'description': 'Начисление зарплаты в гос. организациях'},
    {'description': 'При покупке +1 СЛОТ ДЛЯ ПОКУПКИ АВТОМОБИЛЯ'},
    {'description': 'ЧАСТОТА ОБРАЩЕНИЯ В РЕПОРТ УВЕЛИЧЕНА В 2 РАЗА'},
    {'description': '+15 ПРОЦЕНТОВ К ЗАРАБОТКУ НА НАЧАЛЬНЫХ РАБОТАХ'},
    {'description': '+10 ПРОЦЕНТОВ К ЗАРАБОТКУ НА ОСНОВНЫХ РАБОТАХ'},
    {'description': '+10 ПРОЦЕНТОВ К ЗАРПЛАТЕ В ОРГАНИЗАЦИЯХ'},
    {'description': 'УВЕЛИЧЕННАЯ СКОРОСТЬ ЛЕЧЕНИЯ В БОЛЬНИЦЕ'},
    {'description': 'ДОСТУП К vip ЧАТУ'},
    {'description': 'ОПЛАЧИВАТЬ ДОМ МОЖНО НА 3 НЕДЕЛИ'},
    {'description': 'оПЛАЧИВАТЬ бИЗНЕС МОЖНО НА 2 НЕДЕЛИ'},
    {'description': 'оПЛАЧИВАТЬ аВТОБАЗУ МОЖНО НА 2 НЕДЕЛИ'},
    {'description': 'оПЛАЧИВАТЬ азс МОЖНО НА 2 НЕДЕЛИ'},
    {'description': '+10 ПРОЦЕНТОВ К ЗАРАБОТКУ НА РАБОТЕ ДАЛЬНОБОЙЩИКА'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: sdp_fromPX(context, 1080),
        width: sdp_fromPX(context, 1920),
        child: Container(
          height: sdp_fromPX(context, 1080),
          width: sdp_fromPX(context, 1920),
          child: Row(children: [
            Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 100))),
            Column(
              children: [
                Stack(
                  children: [
                    StoreCard(
                      image: 'assets/images/sales/box.png',
                      title: 'Акция дня',
                      subtitle: 'OG Buda',
                      subText: '1200',
                      subtextTwo: '3000',
                      buttonExist: false,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: sdp_fromPX(context, 17)),
                      child: Container(
                        height: sdp_fromPX(context, 70),
                        width: sdp_fromPX(context, 322),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(sdp_fromPX(context, 15)),
                                topRight: Radius.circular(
                                  sdp_fromPX(context, 15),
                                )),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: <Color>[Color.fromRGBO(192, 61, 255, 1), Color.fromRGBO(178, 1, 241, 1)],
                            )),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                          SvgPicture.asset(
                            'assets/icons/coin.svg',
                            height: sdp_fromPX(context, 40),
                            width: sdp_fromPX(context, 40),
                          ),
                          Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 10))),
                          Text(
                            '250 на 30 дней',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: sdp_fromPX(context, 28),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
                ButtonAnimator(
                  onTap: () {},
                  childWidget: Container(
                    height: sdp_fromPX(context, 70),
                    width: sdp_fromPX(context, 322),
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
                          'assets/icons/store-card/shopping-cart.svg',
                          height: sdp_fromPX(context, 40),
                          width: sdp_fromPX(context, 40),
                        ),
                        Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 10))),
                        Text(
                          '250 на 30 дней',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: sdp_fromPX(context, 30),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 20))),
                ButtonAnimator(
                  onTap: () {},
                  childWidget: Container(
                    height: sdp_fromPX(context, 70),
                    width: sdp_fromPX(context, 322),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(sdp_fromPX(context, 15)),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: <Color>[Color.fromRGBO(255, 82, 82, 1), Color.fromRGBO(144, 45, 45, 1)],
                        )),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/closebg-white.svg',
                          height: sdp_fromPX(context, 37),
                          width: sdp_fromPX(context, 37),
                        ),
                        Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 10))),
                        Text(
                          'Отписаться',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: sdp_fromPX(context, 30),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 100))),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(left: sdp_fromPX(context, 20), top: sdp_fromPX(context, 20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Доступные услуги',
                      style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 43), fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: sdp_fromPX(context, 300),
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'ДЕЙСТВУЕТ ДО: ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: sdp_fromPX(context, 34),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: 'ДД.ММ.ГГГГ',
                            style: TextStyle(
                              color: Color(0xFF69D666),
                              fontSize: sdp_fromPX(context, 34),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 20))),
              CheckList(
                data: matryoshkaData,
                secondText: false,
                height: sdp_fromPX(context, 637),
                width: sdp_fromPX(context, 1200),
                widthFirstCell: sdp_fromPX(context, 1080),
              ),
            ])
          ]),
        ));
  }
}
