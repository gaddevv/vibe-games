import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vibes_studio/elements/alert/confirmation.dart';
import 'package:vibes_studio/elements/bottom-bar/five-button-bar.dart';
import 'package:vibes_studio/elements/buttons/back-button.dart';
import 'package:vibes_studio/elements/buttons/button-animator.dart';
import 'package:vibes_studio/elements/card/buycar-card.dart';
import 'package:vibes_studio/elements/card/store-card.dart';
import 'package:vibes_studio/elements/gradient/linear-gradient.dart';
import 'package:vibes_studio/elements/sdp.dart';
import 'package:vibes_studio/store/coin-pay.dart';
import 'package:vibes_studio/store/donat-pay.dart';
import 'package:vibes_studio/store/matryoshka.dart';
import 'package:vibes_studio/store/roulette.dart';
import 'package:vibes_studio/store/services.dart';

storeScreen(BuildContext context) {
  showDialog(
      useSafeArea: false,
      barrierColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Screen();
      });
}

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  bool activeTransportClass = false;
  bool viewCar = false;
  bool viewCoin = false;

  specialOffers(BuildContext context) {
    showDialog(
        useSafeArea: false,
        context: context,
        builder: (BuildContext context) {
          return ConfirmationAlert(
            title: 'Предложение',
            text: 'Только сегодня! Пополни счёт  ',
            richText: '99 рублей ',
            secondText: 'и получи ',
            secondRichText: '199 на баланс',
            cancelButton: false,
            acceptButtonText: 'Посмотреть',
            onTapAccept: () {
              setState(() {
                Navigator.pop(context);
              });
            },
          );
        });
  }

  Map<int, List<Map<String, dynamic>>> transportClass = {
    0: [
      {
        'image': 'assets/images/transports/economy/economy.png',
        'title': 'Lada',
        'subtitle': 'Priora',
        'subtext': '4300 руб',
        'icon': 'assets/icons/store-card/eye.svg',
        'speed': 200.0,
        'boost': 9.8,
        'trunk': 50.0,
      },
    ],
    1: [
      {
        'image': 'assets/images/transports/average/average.png',
        'title': 'Mercedes-Benz',
        'subtitle': 'Gls',
        'subtext': '7800 руб',
        'icon': 'assets/icons/store-card/eye.svg',
        'speed': 260.0,
        'boost': 7.6,
        'trunk': 100.0,
      },
    ],
    2: [
      {
        'image': 'assets/images/transports/premium/premium.png',
        'title': 'McLaren',
        'subtitle': '720s Coupe',
        'subtext': '15000 руб',
        'icon': 'assets/icons/store-card/eye.svg',
        'speed': 309.0,
        'boost': 2.1,
        'trunk': 50.0,
      }
    ],
    3: [
      {
        'image': 'assets/images/transports/yachts/yachts.png',
        'title': 'Honda',
        'subtitle': 'CBR 1000RR',
        'subtext': '30000 руб',
        'icon': 'assets/icons/store-card/eye.svg',
        'speed': 360.0,
        'boost': 1.7,
        'trunk': 1.0,
      }
    ],
  };

  Map<int, List<Map<String, dynamic>>> categoryData = {
    0: [
      {'image': 'assets/images/sales/box.png', 'title': 'Для вас', 'subtitle': 'Специальное предложение', 'icon': 'assets/icons/store-card/eye.svg'},
      {
        'image': 'assets/images/sales/benefit.png',
        'title': 'Новые игровые пакеты!',
        'subtitle': 'Встречайте новый раздел магазине',
        'buttonText': 'Перейти',
        'color': Color.fromRGBO(234, 140, 0, 1),
        'gradient': LinearGradient(colors: [Color.fromRGBO(189, 89, 18, 1), Color.fromRGBO(234, 140, 0, 1)])
      },
      {
        'image': 'assets/images/transports/economy/economy.png',
        'icon': 'assets/icons/store-card/eye.svg',
        'title': 'Акция дня',
        'subtitle': 'ГАЗ 24 Волга',
        'subtext': '699',
        'subtextTwo': '1000',
        'saletext': '1400:54:50'
      }
    ],
    1: [
      {
        'image': 'assets/images/games-packages/defolt.png',
        'icon': 'assets/icons/store-card/shopping-cart.svg',
        'title': 'Дефолт',
        'buttonText': '349',
        'subtitle': '50 000 Р + скин Кролик',
        'color': Color.fromRGBO(149, 25, 107, 1),
        'gradient': RadialGradient(colors: [Color.fromRGBO(204, 0, 255, 1), Color.fromRGBO(255, 3, 230, 0.6)])
      },
      {
        'image': 'assets/images/games-packages/elon-hub.png',
        'icon': 'assets/icons/store-card/shopping-cart.svg',
        'title': 'Elon Hub',
        'subtitle': 'Tesla Model S + скин Eva Elfie',
        'buttonText': '2499',
        'color': Color.fromRGBO(158, 87, 44, 1),
        'gradient': LinearGradient(colors: [Color.fromRGBO(254, 150, 96, 1), Color.fromRGBO(116, 0, 255, 0.6)])
      }
    ],
    2: [
      {
        'image': 'assets/images/transports/unique/unique.png',
        'title': 'Уникальные',
        'subtitle': '',
        'buttonText': 'Перейти',
        'gradient': LinearGradient(colors: [Color.fromRGBO(141, 67, 14, 1), Color.fromRGBO(234, 140, 0, 1)])
      },
      {'image': 'assets/images/transports/economy/economy.png', 'title': 'Эконом', 'subtitle': ''},
      {'image': 'assets/images/transports/average/average.png', 'title': 'Средний', 'subtitle': ''},
      {'image': 'assets/images/transports/premium/premium.png', 'title': 'Премиум', 'subtitle': ''},
      {'image': 'assets/images/transports/yachts/yachts.png', 'title': 'Яхты', 'subtitle': ''},
    ],
    3: [
      {
        'image': 'assets/images/skins/buda.png',
        'icon': 'assets/icons/store-card/shopping-cart.svg',
        'title': 'OG Buda',
        'subtitle': '',
        'buttonText': '10000',
      },
    ],
    4: [
      {
        'image': 'assets/images/musics/jbl.png',
        'icon': 'assets/icons/store-card/shopping-cart.svg',
        'title': 'JBL колонка',
        'subtitle': '30 дней',
        'buttonText': '199',
      },
    ]
  };

  int? type = 0;
  void set_type(int? value) {
    setState(() {
      type = value;
      if (type == 0 || type == null) {
        type = value;
        categoryText = 'Акции и специальные предложения';
      }
      if (type == 1) {
        categoryText = 'Услуги';
      }
      if (type == 2) {
        categoryText = 'Рулетки';
      }
      if (type == 3) {
        categoryText = 'Матрешка+';
      }
    });
  }

  String? categoryText = 'Акции и специальные предложения';
  String? trclassText;
  int? category = 0;
  List<Map<String, dynamic>> currentCategoryData = [];

  void set_category(int? value) {
    setState(() {
      category = value;
      if (category == 0 || category == null) {
        categoryText = 'Акции и специальные предложения';
        currentCategoryData = categoryData[0]!;
        trclassText = null;
        viewCar = false;
      }
      if (category == 1) {
        categoryText = 'Игровые пакеты';
        currentCategoryData = categoryData[1]!;
        trclassText = null;
        viewCar = false;
      }
      if (category == 2) {
        categoryText = 'Транспорт';
        currentCategoryData = categoryData[2]!;
        if (activeTransportClass) {
          categoryText = 'Транспорт ';
          trclassText == '(Эконом)'
              ? currentCategoryData = transportClass[0]!
              : trclassText == '(Средний)'
                  ? currentCategoryData = transportClass[1]!
                  : trclassText == '(Премиум)'
                      ? currentCategoryData = transportClass[2]!
                      : trclassText == '(Яхты)'
                          ? currentCategoryData = transportClass[3]!
                          : '';
        }
      }
      if (category == 3) {
        categoryText = 'Скины';
        currentCategoryData = categoryData[3]!;
        trclassText = null;
        viewCar = false;
      }
      if (category == 4) {
        currentCategoryData = categoryData[4]!;
        categoryText = 'Музыка';
        trclassText = null;
        viewCar = false;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    currentCategoryData = categoryData[0]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: type == 0
          ? Container(
              padding: EdgeInsets.symmetric(horizontal: sdp_fromPX(context, 100)),
              height: sdp_fromPX(context, 140),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromRGBO(17, 0, 27, 1),
                    Color.fromRGBO(112, 0, 255, 1),
                  ],
                ),
              ),
              child: FiveButtonBar(
                firstButtonText: 'Акции',
                secondButtonText: 'Игровые пакеты',
                thirdButtonText: 'Транспорт',
                fourthButtonText: 'Скины',
                fifthButtonText: 'Музыка',
                bottomPadding: sdp_fromPX(context, 50),
                contentPadding: sdp_fromPX(context, 164),
                activeGradient: bluePurpleGradient,
                inactiveGradient: whiteGradient,
                state: category,
                onPressed: set_category,
                firstButtonValue: 0,
                secondButtonValue: 1,
                thirdButtonValue: 2,
                fourthButtonValue: 3,
                fifthButtonValue: 4,
              ),
            )
          : Container(
              height: sdp_fromPX(context, 0),
            ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(18, 0, 27, 1),
              Color.fromRGBO(112, 0, 255, 1),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 50))),
            Padding(
              padding: EdgeInsets.only(left: sdp_fromPX(context, 80)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FiveButtonBar(
                    activeGradient: bluePurpleGradient,
                    inactiveGradient: whiteGradient,
                    firstButtonText: 'Товары',
                    secondButtonText: 'Услуги',
                    thirdButtonText: 'Рулетки',
                    fourthButtonText: 'Матрешка+',
                    contentPadding: sdp_fromPX(context, 54),
                    state: type,
                    onPressed: set_type,
                    width: 740,
                    firstButtonValue: 0,
                    secondButtonValue: 1,
                    thirdButtonValue: 2,
                    fourthButtonValue: 3,
                  ),
                  Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 64))),
                  ButtonAnimator(
                    onTap: () {
                      specialOffers(context);
                    },
                    childWidget: Container(
                      height: sdp_fromPX(context, 90),
                      width: sdp_fromPX(context, 76),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: sdp_fromPX(context, 73),
                            width: sdp_fromPX(context, 73),
                            padding: EdgeInsets.only(
                              top: sdp_fromPX(context, 10),
                              left: sdp_fromPX(context, 10),
                              right: sdp_fromPX(context, 7),
                              bottom: sdp_fromPX(context, 10),
                            ),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [Color.fromRGBO(128, 255, 125, 1), Color.fromRGBO(66, 131, 64, 1)],
                                ),
                                borderRadius: BorderRadius.circular(sdp_fromPX(context, 15))),
                            child: SvgPicture.asset(
                              'assets/icons/discount.svg',
                              height: sdp_fromPX(context, 52),
                              width: sdp_fromPX(context, 52),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: sdp_fromPX(context, 38),
                            child: Container(
                              height: sdp_fromPX(context, 26),
                              width: sdp_fromPX(context, 38),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 24, 24, 1), borderRadius: BorderRadius.circular(sdp_fromPX(context, 50000))),
                              child: Text(
                                '12',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: sdp_fromPX(context, 20),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 25))),
                  Container(
                    height: sdp_fromPX(context, 73),
                    width: sdp_fromPX(context, 284),
                    decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.5), borderRadius: BorderRadius.circular(sdp_fromPX(context, 15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 10))),
                        SvgPicture.asset(
                          'assets/icons/ruble.svg',
                          height: sdp_fromPX(context, 42),
                          width: sdp_fromPX(context, 42),
                        ),
                        Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 5))),
                        FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            '12 000 126',
                            style: TextStyle(fontSize: sdp_fromPX(context, 32), fontWeight: FontWeight.w500, color: Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 10))),
                        ButtonAnimator(
                          onTap: () {
                            setState(() {
                              type = 4;
                              categoryText = 'Положить деньги на счет';
                            });
                          },
                          childWidget: Container(
                              height: sdp_fromPX(context, 73),
                              width: sdp_fromPX(context, 52),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(128, 255, 125, 1),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(sdp_fromPX(context, 15)), bottomRight: Radius.circular(sdp_fromPX(context, 15)))),
                              child: SvgPicture.asset('assets/icons/bi_plus.svg')),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 25))),
                  Container(
                    height: sdp_fromPX(context, 73),
                    decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.5), borderRadius: BorderRadius.circular(sdp_fromPX(context, 15))),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 10))),
                        SvgPicture.asset(
                          'assets/icons/coin.svg',
                          height: sdp_fromPX(context, 42),
                          width: sdp_fromPX(context, 42),
                        ),
                        Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 10))),
                        Text(
                          '120',
                          style: TextStyle(fontSize: sdp_fromPX(context, 32), fontWeight: FontWeight.w500, color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                        Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 10))),
                        ButtonAnimator(
                          onTap: () {
                            setState(() {
                              type = 5;
                              categoryText = 'Пополнение вирутального счета';
                            });
                          },
                          childWidget: Container(
                              height: sdp_fromPX(context, 73),
                              width: sdp_fromPX(context, 52),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(128, 255, 125, 1),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(sdp_fromPX(context, 15)), bottomRight: Radius.circular(sdp_fromPX(context, 15)))),
                              child: SvgPicture.asset('assets/icons/bi_plus.svg')),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 60))),
                  ButtonAnimator(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    childWidget: Container(
                      padding: EdgeInsets.only(
                        top: sdp_fromPX(context, 10),
                        left: sdp_fromPX(context, 10),
                        right: sdp_fromPX(context, 7),
                        bottom: sdp_fromPX(context, 10),
                      ),
                      height: sdp_fromPX(context, 73),
                      width: sdp_fromPX(context, 73),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color.fromRGBO(255, 125, 125, 1), Color.fromRGBO(131, 64, 64, 1)],
                          ),
                          borderRadius: BorderRadius.circular(sdp_fromPX(context, 15))),
                      child: SvgPicture.asset(
                        'assets/icons/exit_outline.svg',
                        height: sdp_fromPX(context, 52),
                        width: sdp_fromPX(context, 52),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 40))),
            Row(
              mainAxisAlignment: trclassText != null || type == 2 || type == 4 || type == 5 ? MainAxisAlignment.start : MainAxisAlignment.center,
              children: [
                if (trclassText != null || type == 4 || type == 5 || type == 2)
                  Padding(
                    padding: EdgeInsets.only(
                      left: sdp_fromPX(context, 100),
                    ),
                    child: BackArrowButton(
                      onTap: () {
                        setState(() {
                          if (trclassText != null) {
                            if (viewCar) viewCar = false;
                            currentCategoryData = categoryData[2]!;
                            trclassText = null;
                            activeTransportClass = false;
                          }
                          if (type == 4 || type == 5 || type == 2) {
                            type = 0;
                            categoryText = 'Акции и специальные предложения';
                          }
                        });
                      },
                    ),
                  ),
                if (trclassText != null || type == 4 || type == 5 || type == 2) Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 330))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(categoryText!,
                        style:
                            TextStyle(fontSize: sdp_fromPX(context, 43), fontWeight: FontWeight.w500, foreground: Paint()..shader = whiteGradient)),
                    Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 10))),
                    if (trclassText != null)
                      ShaderMask(
                        blendMode: BlendMode.srcATop,
                        shaderCallback: (bounds) => LinearGradient(
                          colors: <Color>[
                            Color.fromRGBO(0, 133, 255, 1),
                            Color.fromRGBO(167, 0, 255, 1),
                          ],
                        ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                        child: Text(
                          trclassText!,
                          style: TextStyle(
                              fontSize: sdp_fromPX(context, 43), fontWeight: FontWeight.w500, foreground: Paint()..shader = bluePurpleGradient),
                        ),
                      ),
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 40))),
            Container(
              height: sdp_fromPX(context, type == 0 ? 570 : 740),
              child: Stack(
                children: [
                  Container(
                    height: sdp_fromPX(context, 570),
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                  ),
                  Center(
                    child: Container(
                      alignment: Alignment.center,
                      height: sdp_fromPX(context, type == 0 ? 570 : 740),
                      child: type == 1
                          ? ServicesScreen()
                          : type == 2
                              ? RouletteScreen()
                              : type == 3
                                  ? MatryoshkaScreen()
                                  : type == 4
                                      ? DonatPayScreen()
                                      : type == 5
                                          ? CoinPayScreen()
                                          : ListView.builder(
                                              shrinkWrap: true,
                                              scrollDirection: Axis.horizontal,
                                              physics: viewCar == true ? NeverScrollableScrollPhysics() : ClampingScrollPhysics(),
                                              padding: EdgeInsets.symmetric(horizontal: sdp_fromPX(context, 100)),
                                              itemCount: currentCategoryData.length,
                                              itemBuilder: (context, index) {
                                                final String image = currentCategoryData[index]['image'];
                                                final String? icon = currentCategoryData[index]['icon'];

                                                final title = currentCategoryData[index]['title'];
                                                final subtitle = currentCategoryData[index]['subtitle'];
                                                final Gradient? gradient = currentCategoryData[index]['gradient'];
                                                final Color? color = currentCategoryData[index]['color'];
                                                final String? subtext = currentCategoryData[index]['subtext'];
                                                final String? subtextTwo = currentCategoryData[index]['subtextTwo'];
                                                final String? saletext = currentCategoryData[index]['saletext'];
                                                final String? buttontext = currentCategoryData[index]['buttonText'];
                                                confirmation(BuildContext context) {
                                                  showDialog(
                                                      useSafeArea: false,
                                                      context: context,
                                                      builder: (BuildContext context) {
                                                        return ConfirmationAlert(
                                                          title: 'Подтверждение',
                                                          text: 'Вы действительно ',
                                                          richText: 'согласны приобрести данный товар за ${buttontext ?? subtext} руб? ',
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

                                                return viewCar == true
                                                    ? BuyCarCard(
                                                        image: currentCategoryData[index]['image'],
                                                        title: currentCategoryData[index]['title'],
                                                        speed: currentCategoryData[index]['speed'],
                                                        boost: currentCategoryData[index]['boost'],
                                                        trunk: currentCategoryData[index]['trunk'],
                                                        buttonText: currentCategoryData[index]['buttonText'],
                                                        onTap: () {
                                                          confirmation(context);
                                                        },
                                                      )
                                                    : Padding(
                                                        padding: EdgeInsets.only(left: sdp_fromPX(context, 40)),
                                                        child: StoreCard(
                                                          image: image,
                                                          icon: icon,
                                                          onTap: () {
                                                            title == 'Эконом'
                                                                ? {
                                                                    trclassText = '(Эконом)',
                                                                    activeTransportClass = true,
                                                                    set_category(2),
                                                                  }
                                                                : title == 'Средний'
                                                                    ? {
                                                                        trclassText = '(Средний)',
                                                                        activeTransportClass = true,
                                                                        set_category(2),
                                                                      }
                                                                    : title == 'Премиум'
                                                                        ? {
                                                                            trclassText = '(Премиум)',
                                                                            activeTransportClass = true,
                                                                            set_category(2),
                                                                          }
                                                                        : title == 'Яхты'
                                                                            ? {
                                                                                trclassText = '(Яхты)',
                                                                                activeTransportClass = true,
                                                                                set_category(2),
                                                                              }
                                                                            : {
                                                                                if (trclassText != null)
                                                                                  {
                                                                                    viewCar = true,
                                                                                  }
                                                                                else
                                                                                  {
                                                                                    confirmation(context),
                                                                                  },
                                                                              };
                                                            setState(() {});
                                                          },
                                                          title: title,
                                                          subtitle: subtitle,
                                                          gradient: gradient,
                                                          color: color,
                                                          subText: subtext,
                                                          subtextTwo: subtextTwo,
                                                          saleText: saletext,
                                                          buttonText: buttontext,
                                                        ),
                                                      );
                                              }),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
