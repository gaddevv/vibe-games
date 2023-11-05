import 'package:flutter/material.dart';
import 'package:vibes_studio/elements/sdp.dart';

class DonatCard extends StatefulWidget {
  final int percent;
  final int interval;
  final Gradient? gradient;
  final Gradient? bottomGradient;
  final String? bottomText;
  const DonatCard({super.key, required this.percent, required this.interval, this.gradient, this.bottomGradient, this.bottomText});

  @override
  State<DonatCard> createState() => _DonatCardState();
}

class _DonatCardState extends State<DonatCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFF291D37), borderRadius: BorderRadius.circular(sdp_fromPX(context, 15)), gradient: widget.gradient),
      child: Container(
        height: sdp_fromPX(context, 178),
        width: sdp_fromPX(context, 360),
        decoration: BoxDecoration(color: Color(0xFF291D37), borderRadius: BorderRadius.circular(sdp_fromPX(context, 15)), gradient: widget.gradient),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 25))),
          Text(
            'от ${widget.interval}р',
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontSize: sdp_fromPX(context, 28),
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: sdp_fromPX(context, 5))),
          Padding(
            padding: EdgeInsets.only(left: sdp_fromPX(context, 65)),
            child: Row(
              children: [
                Container(
                  width: sdp_fromPX(context, 69),
                  height: sdp_fromPX(context, 57),
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-1.00, -0.10),
                      end: Alignment(1, 0.1),
                      colors: [
                        Color(0xFF0084FF),
                        Color(0xFFA700FF),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(sdp_fromPX(context, 12)),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'x2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: sdp_fromPX(context, 42),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: sdp_fromPX(context, 16)),
                ),
                Text(
                  '+${widget.percent}%',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: sdp_fromPX(context, 56),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          if (widget.gradient != null && widget.bottomText != null)
            Expanded(
                child: Container(
              height: sdp_fromPX(context, 39),
              width: sdp_fromPX(context, 399),
              decoration: BoxDecoration(
                gradient: widget.bottomGradient,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(sdp_fromPX(context, 15)), bottomRight: Radius.circular(sdp_fromPX(context, 15))),
              ),
              child: Center(
                child: Text(
                  widget.bottomText!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: sdp_fromPX(context, 22),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ))
        ]),
      ),
    );
  }
}
