import 'package:flutter/material.dart';
import 'package:vibes_studio/components/sdp.dart';

class JackpotCard extends StatefulWidget {
  final String image;

  const JackpotCard({super.key, required this.image});

  @override
  State<JackpotCard> createState() => _JackpotCardState();
}

class _JackpotCardState extends State<JackpotCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: sdp_fromPX(context, 136),
      width: sdp_fromPX(context, 313),
      child: Image.asset(widget.image),
    );
  }
}
