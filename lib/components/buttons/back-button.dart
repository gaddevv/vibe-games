import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vibes_studio/components/buttons/button-animator.dart';
import 'package:vibes_studio/components/sdp.dart';

class BackArrowButton extends StatefulWidget {
  final Function? onTap;
  const BackArrowButton({super.key, this.onTap});

  @override
  State<BackArrowButton> createState() => _BackArrowButtonState();
}

class _BackArrowButtonState extends State<BackArrowButton> {
  @override
  Widget build(BuildContext context) {
    return ButtonAnimator(
      onTap: widget.onTap,
      childWidget: Row(
        children: [
          Container(
            height: sdp_fromPX(context, 38),
            width: sdp_fromPX(context, 38),
            child: SvgPicture.asset('assets/icons/old-store/arrow-left.svg'),
          ),
          Padding(padding: EdgeInsets.only(left: sdp_fromPX(context, 10))),
          Text(
            'Веруться назад',
            style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: sdp_fromPX(context, 32), fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
