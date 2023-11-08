import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vibes_studio/elements/buttons/button-animator.dart';

import 'package:vibes_studio/elements/card/store-card.dart';
import 'package:vibes_studio/elements/lists/check-list.dart';
import 'package:vibes_studio/elements/sdp.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  List<Map<String, dynamic>> servicesData = [
    {'description': 'ПРИОБРЕСТИ ОПЫТ (exp)', 'price': '30 РУБ'},
    {'description': 'ПРИОБРЕСТИ ДОМАШНЕГО ПИТОМЦА', 'price': '300 РУБ'},
    {'description': 'СКИНЫ НА ОРУЖИЕ', 'price': '500 РУБ'},
    {'description': 'СТРОБОСКОПЫ НА АВТОМОБИЛЬ', 'price': '400 РУБ'},
    {'description': 'Стробоскопы полицейские', 'price': '2000 РУБ'},
    {'description': 'Изменить имя', 'price': '99 РУБ'},
    {'description': 'Снять предупреждения', 'price': '500 РУБ'},
    {'description': 'Получить колёса', 'price': '10 РУБ'},
    {'description': 'Подделка документов (Законопослушность +10)', 'price': '4 РУБ'},
    {'description': 'Покупка 2-х значного номера телефона', 'price': '1600 РУБ'},
    {'description': 'Покупка 3-х значного номера телефона', 'price': '800 РУБ'},
    {'description': 'Покупка 4-х значного номера телефона', 'price': '300 РУБ'},
    {'description': 'Прокачать силу или навыки владения оружием', 'price': '1 РУБ'},
    {'description': 'Приобрести номерной знак', 'price': '300 РУБ'},
    {'description': 'Увеличить количество слотов для транспорта', 'price': '150 РУБ'},
    {'description': 'Покупка всех лицензий', 'price': '150 РУБ'},
    {'description': 'Создание семьи', 'price': '500 РУБ'},
    {'description': 'Приобрести военный билет', 'price': '500 РУБ'},
    {'description': 'Владение двумя типами бизнесов', 'price': '7500 РУБ'},
    {'description': 'Персональный номерной знак на автомобиль', 'price': '500 РУБ'},
  ];

  int selectedRow = -1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 100))),
        Column(
          children: [
            Stack(
              children: [
                FittedBox(
                  fit: BoxFit.contain,
                  child: StoreCard(
                      image: 'assets/images/sales/box.png',
                      title: 'Акция дня',
                      subtitle: 'OG Buda',
                      subText: '1200',
                      subtextTwo: '3000',
                      secondSaleText: '31:52',
                      buttonExist: false,
                      imageHeight: sdp_fromPX(context, 150),
                      imageWidth: sdp_fromPX(context, 133),
                      color: Color(0xFF60106D),
                      gradient: RadialGradient(
                        radius: sdp_fromPX(context, 1.6),
                        colors: [Color.fromARGB(255, 196, 72, 215), Color.fromARGB(255, 113, 1, 130)],
                      )),
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Padding(
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
                        FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            '250 на 30 дней',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: sdp_fromPX(context, 28),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ]),
                    ),
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
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: <Color>[
                        Color(0xFF80FF7D),
                        Color(0xFF428340),
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
                      '250',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: sdp_fromPX(context, 30),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
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
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: <Color>[Color(0xFFFF5252), Color(0xFF902D2D)],
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
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                )),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 100))),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: sdp_fromPX(context, 20), top: sdp_fromPX(context, 5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Доступные услуги',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: sdp_fromPX(context, 34),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                    ),
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
                          ),
                        ),
                        TextSpan(
                          text: 'ДД.ММ.ГГГГ',
                          style: TextStyle(
                            color: Color(0xFF69D666),
                            fontSize: sdp_fromPX(context, 34),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
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
              data: servicesData,
              secondText: true,
              widthFirstCell: sdp_fromPX(context, 750),
              height: sdp_fromPX(context, 666),
              width: sdp_fromPX(context, 1120),
            ),
          ],
        ),
      ],
    );
  }
}
