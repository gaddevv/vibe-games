import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vibes_studio/elements/alert/confirmation.dart';
import 'package:vibes_studio/elements/alert/winner.dart';
import 'package:vibes_studio/elements/buttons/button-animator.dart';
import 'package:vibes_studio/elements/card/store-card.dart';
import 'package:vibes_studio/elements/sdp.dart';

class RouletteScreen extends StatefulWidget {
  const RouletteScreen({super.key});

  @override
  State<RouletteScreen> createState() => _RouletteScreenState();
}

class _RouletteScreenState extends State<RouletteScreen> {
  bool viewDefined = false;
  ScrollController scrollController = ScrollController();

  winning() {
    showDialog(
        useSafeArea: false,
        context: context,
        builder: (BuildContext context) {
          return WinnerAlert(
            image: 'assets/images/roulette/car-case/ducati.png',
            title: 'Поздравляем',
            text: 'Вы выиграли ',
            richText: 'Ducati',
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
          );
        });
  }

  Map<int, List<Map<String, dynamic>>> definedRoulette = {
    0: [
      {
        'title': 'Mercedes-Benz',
        'subtitle': 'GLS-63',
        'image': 'assets/images/roulette/car-case/mercedes-benz.png',
      },
      {
        'title': 'McLaren',
        'subtitle': '720S',
        'image': 'assets/images/roulette/car-case/mclaren.png',
      },
      {
        'title': 'Ducati',
        'subtitle': '1000RR',
        'image': 'assets/images/roulette/car-case/ducati.png',
      },
      {
        'title': 'Volkswagen',
        'subtitle': 'Jetta',
        'image': 'assets/images/roulette/car-case/volkswagen.png',
      },
      {
        'title': 'Lada',
        'subtitle': 'Priora',
        'image': 'assets/images/roulette/car-case/priora.png',
      },
    ],
    1: [
      {
        'title': 'Bike',
        'subtitle': 'Ducati',
        'image': 'assets/images/roulette/everyday-case/bike.png',
      },
      {
        'title': 'Деньги',
        'subtitle': 'Игровая валюта',
        'image': 'assets/images/roulette/everyday-case/cash.png',
      },
      {
        'title': 'Донат',
        'subtitle': 'На баланс',
        'image': 'assets/images/roulette/everyday-case/donate.png',
      },
      {
        'title': 'VIP-статус',
        'subtitle': 'Премиум VIP',
        'image': 'assets/images/roulette/everyday-case/crown.png',
      },
      {
        'title': 'Доп слот',
        'subtitle': 'Для автомобиля',
        'image': 'assets/images/roulette/everyday-case/add-slot.png',
      },
      {
        'title': 'Bike',
        'subtitle': 'Ducati',
        'image': 'assets/images/roulette/everyday-case/bike.png',
      },
      {
        'title': 'Деньги',
        'subtitle': 'Игровая валюта',
        'image': 'assets/images/roulette/everyday-case/cash.png',
      },
      {
        'title': 'Донат',
        'subtitle': 'На баланс',
        'image': 'assets/images/roulette/everyday-case/donate.png',
      },
      {
        'title': 'VIP-статус',
        'subtitle': 'Премиум VIP',
        'image': 'assets/images/roulette/everyday-case/crown.png',
      },
      {
        'title': 'Доп слот',
        'subtitle': 'Для автомобиля',
        'image': 'assets/images/roulette/everyday-case/add-slot.png',
      },
      {
        'title': 'Bike',
        'subtitle': 'Ducati',
        'image': 'assets/images/roulette/everyday-case/bike.png',
      },
      {
        'title': 'Деньги',
        'subtitle': 'Игровая валюта',
        'image': 'assets/images/roulette/everyday-case/cash.png',
      },
      {
        'title': 'Донат',
        'subtitle': 'На баланс',
        'image': 'assets/images/roulette/everyday-case/donate.png',
      },
      {
        'title': 'VIP-статус',
        'subtitle': 'Премиум VIP',
        'image': 'assets/images/roulette/everyday-case/crown.png',
      },
      {
        'title': 'Доп слот',
        'subtitle': 'Для автомобиля',
        'image': 'assets/images/roulette/everyday-case/add-slot.png',
      },
    ]
  };

  List<Map<String, dynamic>> rouletteData = [
    {
      'title': 'Рулетка',
      'subtitle': 'Ежедневная',
      'image': 'assets/images/roulette/everyday-case/everyday-case.png',
      'icon': 'assets/icons/store-card/eye.svg',
    },
    {
      'title': 'Рулетка',
      'subtitle': 'Золотая',
      'image': 'assets/images/roulette/gold-case/gold-case.png',
      'icon': 'assets/icons/store-card/eye.svg',
    },
    {
      'title': 'Рулетка',
      'subtitle': 'Серебряная',
      'image': 'assets/images/roulette/silver-case/silver-case.png',
      'icon': 'assets/icons/store-card/eye.svg',
    },
    {
      'title': 'Рулетка',
      'subtitle': 'Бронзовая',
      'image': 'assets/images/roulette/bronz-case/bronz-case.png',
      'icon': 'assets/icons/store-card/eye.svg',
    },
    {
      'title': 'Рулетка',
      'subtitle': 'Авто-рулетка',
      'image': 'assets/images/roulette/car-case/car-case.png',
      'icon': 'assets/icons/store-card/eye.svg',
    },
  ];

// Проходим по всем ключам и значениям в исходной карте

  List<Map<String, dynamic>> currentRoulette = [];

  int? numberRoulette = 4;

  void set_Roulette(int? value) {
    numberRoulette = value;
    currentRoulette = rouletteData;
    if (numberRoulette == 4) {
      currentRoulette = definedRoulette[0]!;
    }
    if (numberRoulette == 1) {
      currentRoulette = definedRoulette[1]!;
    }
  }

  bool spun = false;
  void _startScrollAnimation() async {
    if (spun == true) {
      scrollToIndex(40);
    }

    if (spun == false) {
      scrollController
          .animateTo(
        scrollController.position.extentInside,
        duration: Duration(seconds: 15),
        curve: Curves.linear,
      )
          .whenComplete(() {
        if (spun == false) {
          scrollController.jumpTo(50);

          _startScrollAnimation();
        }
      });
    }
  }

  scrollToIndex(int index) async {
    if (index >= 0 && index < currentRoulette.length) {
      double itemExtent = sdp_fromPX(context, 400);
      double offset = index * (itemExtent + sdp_fromPX(context, 200));
      await scrollController.animateTo(sdp_fromPX(context, offset), duration: Duration(seconds: 1), curve: Curves.linear);
      // scrollController.jumpTo(sdp_fromPX(context, offset));
    }
    winning();
  }

  confirmation(BuildContext context) {
    showDialog(
        useSafeArea: false,
        context: context,
        builder: (BuildContext context) {
          return ConfirmationAlert(
            title: 'Подтверждение',
            text: 'Вы действительно ',
            cancelButton: true,
            acceptButtonText: 'Купить',
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
  }

  @override
  void initState() {
    super.initState();
    definedRoulette.forEach((key, value) {
      for (int i = 0; i < 5; i++) {
        currentRoulette.addAll(value);
      }
      definedRoulette[key] = currentRoulette;
    });

    set_Roulette(0);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (viewDefined == true) {
        _startScrollAnimation();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          height: sdp_fromPX(context, 540),
          child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: sdp_fromPX(context, 100)),
              itemCount: currentRoulette.length,
              itemBuilder: (context, index) {
                return viewDefined == true
                    ? Padding(
                        padding: EdgeInsets.only(left: sdp_fromPX(context, 40)),
                        child: StoreCard(
                          image: currentRoulette[index]['image'],
                          icon: currentRoulette[index]['icon'],
                          // onTap: () {
                          //   setState(() {
                          //     viewDefined = true;
                          //     rouletteData[index]['subtitle'] == 'Авто-рулетка' ? set_Roulette(4) : viewDefined = false;
                          //   });
                          // },
                          title: currentRoulette[index]['title'],
                          subtitle: currentRoulette[index]['subtitle'],
                          buttonExist: false,
                        ),
                      )
                    : Padding(
                        padding: EdgeInsets.only(left: sdp_fromPX(context, 40)),
                        child: StoreCard(
                          image: rouletteData[index]['image'],
                          icon: rouletteData[index]['icon'],
                          onTap: () {
                            setState(() {
                              viewDefined = true;
                              rouletteData[index]['subtitle'] == 'Авто-рулетка' ||
                                      rouletteData[index]['subtitle'] == 'Бронзовая' ||
                                      rouletteData[index]['subtitle'] == 'Золотая' ||
                                      rouletteData[index]['subtitle'] == 'Серебряная'
                                  ? {set_Roulette(4), _startScrollAnimation()}
                                  : rouletteData[index]['subtitle'] == 'Ежедневная'
                                      ? {set_Roulette(1), _startScrollAnimation()}
                                      : viewDefined = false;
                            });
                          },
                          title: rouletteData[index]['title'],
                          subtitle: rouletteData[index]['subtitle'],
                        ),
                      );
              }),
        ),
        if (viewDefined)
          ButtonAnimator(
            onTap: () {
              setState(() {
                if (spun == false)
                  // definedRoulette.forEach((key, value) {
                  //   for (int i = 0; i < 5; i++) {
                  //     currentRoulette.addAll(value);
                  //   }
                  //   updatedRoulette[key] = currentRoulette;
                  // });
                  spun = true;
                _startScrollAnimation();
              });
            },
            childWidget: Container(
              height: sdp_fromPX(context, 53),
              width: sdp_fromPX(context, 250),
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
                      height: sdp_fromPX(context, 28),
                      width: sdp_fromPX(context, 28),
                    ),
                    Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 10))),
                    Text(
                      '4999',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: sdp_fromPX(context, 24),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
