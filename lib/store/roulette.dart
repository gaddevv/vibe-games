import 'package:flutter/material.dart';
import 'package:vibes_studio/elements/alert/confirmation.dart';
import 'package:vibes_studio/elements/card/store-card.dart';
import 'package:vibes_studio/elements/sdp.dart';

class RouletteScreen extends StatefulWidget {
  const RouletteScreen({super.key});

  @override
  State<RouletteScreen> createState() => _RouletteScreenState();
}

class _RouletteScreenState extends State<RouletteScreen> {
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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: sdp_fromPX(context, 100)),
        itemCount: rouletteData.length,
        itemBuilder: (context, index) {
          
          confirmation(BuildContext context) {
            showDialog(
                useSafeArea: false,
                context: context,
                builder: (BuildContext context) {
                  return ConfirmationAlert(
                    title: 'Подтверждение',
                    text: 'Вы действительно ',
                    // richText: 'согласны приобрести данный товар за ${buttontext ?? subtext} руб? ',
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

          return Padding(
            padding: EdgeInsets.only(left: sdp_fromPX(context, 40)),
            child: StoreCard(
              image: rouletteData[index]['image'],
              icon: rouletteData[index]['icon'],
              onTap: () {},
              title: rouletteData[index]['title'],
              subtitle: rouletteData[index]['subtitle'],
            ),
          );
        });
  }
}
