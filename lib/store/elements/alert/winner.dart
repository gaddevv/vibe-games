import 'package:flutter/material.dart';
import 'package:vibes_studio/components/buttons/button-animator.dart';
import 'package:vibes_studio/components/sdp.dart';

class WinnerAlert extends StatefulWidget {
  final String image;
  final String title;
  final String text;
  final String? richText;
  final Function? onTap;
  const WinnerAlert({super.key, required this.image, required this.title, required this.text, this.onTap, this.richText});

  @override
  State<WinnerAlert> createState() => _WinnerAlertState();
}

class _WinnerAlertState extends State<WinnerAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: EdgeInsets.only(top: sdp_fromPX(context, 170)),
        child: Column(children: [
          Container(
            height: sdp_fromPX(context, 577),
            width: sdp_fromPX(context, 603),
            padding: EdgeInsets.only(left: sdp_fromPX(context, 20), right: sdp_fromPX(context, 20)),
            decoration: ShapeDecoration(
              gradient: RadialGradient(
                radius: sdp_fromPX(context, 1.6),
                colors: [Color(0xFF7300FF), Color.fromRGBO(19, 0, 36, 1)],
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: sdp_fromPX(context, 3), color: Color(0xFF7F00FF)),
                borderRadius: BorderRadius.circular(sdp_fromPX(context, 15)),
              ),
            ),
            child: Column(children: [
              Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 55))),
              Text(
                widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: sdp_fromPX(context, 43),
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto',
                ),
              ),
              Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 60))),
              Image.asset(
                widget.image,
                height: sdp_fromPX(context, 210),
                width: sdp_fromPX(context, 330),
              ),
              Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 60))),
              FittedBox(
                fit: BoxFit.cover,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: widget.text,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: sdp_fromPX(context, 43),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      if (widget.richText != null)
                        TextSpan(
                          text: widget.richText,
                          style: TextStyle(
                            color: Color(0xFF7F00FF),
                            fontSize: sdp_fromPX(context, 43),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ]),
          ),
          Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 60))),
          ButtonAnimator(
            onTap: widget.onTap,
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
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: sdp_fromPX(context, 33),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto',
                    )),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
