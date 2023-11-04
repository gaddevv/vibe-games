import 'package:flutter/material.dart';
import 'package:vibes_studio/elements/buttons/button-animator.dart';
import 'package:vibes_studio/elements/sdp.dart';

class WinnerAlert extends StatefulWidget {
  const WinnerAlert({super.key});

  @override
  State<WinnerAlert> createState() => _WinnerAlertState();
}

class _WinnerAlertState extends State<WinnerAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(children: [
        Container(
          height: sdp_fromPX(context, 500),
          width: sdp_fromPX(context, 500),
          decoration: BoxDecoration(
              // color: Colors.black,
              gradient: RadialGradient(
            stops: [0.01, 0.4, 1],
            colors: [
              Color.fromRGBO(115, 0, 255, 0.6),
              Color.fromRGBO(116, 0, 255, 1),
              Color.fromRGBO(115, 0, 255, 0.6),
            ],
          )),
        ),
        Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 60))),
        ButtonAnimator(
          onTap: () {},
          childWidget: Container(
            height: sdp_fromPX(context, 83),
            width: sdp_fromPX(context, 331),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color.fromRGBO(128, 255, 125, 1), Color.fromRGBO(66, 131, 64, 1)],
                ),
                borderRadius: BorderRadius.circular(sdp_fromPX(context, 50000))),
            child: Center(
              child: Text('Получить',
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 33), fontWeight: FontWeight.w400)),
            ),
          ),
        ),
      ]),
    );
  }
}
