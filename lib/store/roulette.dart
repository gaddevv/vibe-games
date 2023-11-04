import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vibes_studio/elements/alert/confirmation.dart';
import 'package:vibes_studio/elements/buttons/button-animator.dart';
import 'package:vibes_studio/elements/buttons/raw-button.dart';
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
  List<Map<String, dynamic>> updatedRoulette = [];

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
      currentRoulette = updatedRoulette;
    }
  }

  bool spun = false;
  void _startScrollAnimation() {
    if (spun == true) {
      // scrollController.animateTo(
      //   scrollController.position.maxScrollExtent,
      //   duration: Duration(milliseconds: 300), // Длительность анимации
      //   curve: Curves.linear, // Линейная анимация
      // );
      // scrollController.dispose();
      scrollToIndex(200);
    }
    scrollController
        .animateTo(
      scrollController.position.extentTotal,
      duration: Duration(seconds: 15), // Длительность анимации
      curve: Curves.linear, // Линейная анимация
    )
        .whenComplete(() {
      // По завершении анимации, переходите к началу списка
      scrollController.jumpTo(60);
      if (spun == false) {
        _startScrollAnimation();
      }
    });
  }

  void scrollToIndex(int index) {
    if (index >= 0 && index < currentRoulette.length) {
      double itemExtent = sdp_fromPX(context, 400);
      double offset = index * (itemExtent + sdp_fromPX(context, 100));
      scrollController.animateTo(sdp_fromPX(context, offset), duration: Duration(seconds: 1), curve: Curves.linear);
      // scrollController.jumpTo(sdp_fromPX(context, offset));
    }
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
    definedRoulette.values.forEach((value) {
      for (int i = 0; i < 35; i++) {
        updatedRoulette.addAll(value);
      }
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
      children: [
        Container(
          height: sdp_fromPX(context, 540),
          width: sdp_fromPX(context, 1920),
          child: ListView.builder(
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
                                      rouletteData[index]['subtitle'] == 'Ежедневная' ||
                                      rouletteData[index]['subtitle'] == 'Бронзовая' ||
                                      rouletteData[index]['subtitle'] == 'Золотая' ||
                                      rouletteData[index]['subtitle'] == 'Серебряная'
                                  ? {set_Roulette(4), _startScrollAnimation()}
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
                spun = true;
                _startScrollAnimation();
                // scrollController.animateTo(
                //   scrollController.position.maxScrollExtent,
                //   duration: Duration(milliseconds: 1000), // Длительность анимации
                //   curve: Curves.linear, // Линейная анимация
                // );
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
