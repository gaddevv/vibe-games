import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vibes_studio/elements/buttons/button-animator.dart';

import 'package:vibes_studio/elements/card/store-card.dart';
import 'package:vibes_studio/elements/sdp.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  List<Map<String, dynamic>> servicesData = [
    {'description': 'Приобрести опыт (exp)', 'price': '30 РУБ'},
    {'description': 'Приобрести домашнего питомца', 'price': '300 РУБ'},
    {'description': 'Скины на оружие', 'price': '500 РУБ'},
    {'description': 'Стробоскопы на автомобиль', 'price': '400 РУБ'},
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
    return Container(
      height: sdp_fromPX(context, 1080),
      width: sdp_fromPX(context, 1920),
      child: Stack(
        children: [
          Container(
            height: sdp_fromPX(context, 1080),
            width: sdp_fromPX(context, 1920),
            child: Row(
              children: [
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    Container(
                      height: sdp_fromPX(context, 637),
                      width: sdp_fromPX(context, 1200),
                      color: Color.fromRGBO(41, 29, 55, 1),
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: sdp_fromPX(context, 40),
                          top: sdp_fromPX(context, 10),
                        ),
                        child: RawScrollbar(
                          thumbVisibility: true,
                          trackVisibility: true,
                          thickness: sdp_fromPX(context, 14),
                          radius: Radius.circular(sdp_fromPX(context, 5)),
                          trackRadius: Radius.circular(sdp(context, 5)),
                          trackColor: Color(0xFF18121F),
                          thumbColor: Color(0xFF7400FF),
                          child: ScrollConfiguration(
                            behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                            child: ListView.builder(
                                // scrollDirection: Axis.vertical,
                                padding: EdgeInsets.symmetric(horizontal: sdp_fromPX(context, 20)),
                                itemCount: servicesData.length,
                                itemBuilder: (context, index) {
                                  bool isSelected = index == selectedRow;
                                  return ButtonAnimator(
                                    onTap: () {
                                      setState(() {
                                        selectedRow = isSelected ? -1 : index;
                                      });
                                    },
                                    childWidget: Padding(
                                      padding: EdgeInsets.only(top: sdp_fromPX(context, 20)),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            height: sdp_fromPX(context, 50),
                                            width: sdp_fromPX(context, 849),
                                            decoration: BoxDecoration(
                                              color: isSelected ? Color.fromRGBO(116, 0, 255, 1) : Color.fromRGBO(77, 61, 95, 1),
                                              borderRadius: BorderRadius.circular(sdp_fromPX(context, 7)),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.only(left: sdp_fromPX(context, 24), top: sdp_fromPX(context, 5)),
                                              child: Text(
                                                servicesData[index]['description'],
                                                style: TextStyle(
                                                    color: Color.fromRGBO(255, 255, 255, 1),
                                                    fontSize: sdp_fromPX(context, 26),
                                                    fontWeight: FontWeight.w400),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: sdp_fromPX(context, 40)),
                                          ),
                                          Container(
                                            // alignment: Alignment.center,
                                            height: sdp_fromPX(context, 50),
                                            width: sdp_fromPX(context, 212),
                                            decoration: BoxDecoration(
                                              color: isSelected ? Color.fromRGBO(116, 0, 255, 1) : Color.fromRGBO(77, 61, 95, 1),
                                              borderRadius: BorderRadius.circular(sdp_fromPX(context, 7)),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.only(top: sdp_fromPX(context, 5)),
                                              child: Center(
                                                child: Text(
                                                  servicesData[index]['price'],
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(255, 255, 255, 1),
                                                      fontSize: sdp_fromPX(context, 26),
                                                      fontWeight: FontWeight.w400),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
