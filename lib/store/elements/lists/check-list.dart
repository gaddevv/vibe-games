import 'package:flutter/material.dart';
import 'package:vibes_studio/components/buttons/button-animator.dart';
import 'package:vibes_studio/components/sdp.dart';

class CheckList extends StatefulWidget {
  final dynamic data;
  final bool? secondText;

  final double? height;
  final double? width;

  final double? widthFirstCell;

  const CheckList({
    super.key,
    required this.data,
    this.secondText = false,
    this.height,
    this.width,
    this.widthFirstCell,
  });

  @override
  State<CheckList> createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  int selectedRow = -1;
  ScrollController controller = ScrollController();

  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(color: Color(0xFF291D37), borderRadius: BorderRadius.circular(sdp_fromPX(context, 15))),
      child: Padding(
        padding: EdgeInsets.only(
          right: sdp_fromPX(context, 40),
          top: sdp_fromPX(context, 10),
        ),
        child: RawScrollbar(
          thumbVisibility: true,
          trackVisibility: true,
          controller: controller,
          thickness: sdp_fromPX(context, 14),
          radius: Radius.circular(sdp_fromPX(context, 5)),
          trackRadius: Radius.circular(sdp(context, 5)),
          trackColor: Color(0xFF18121F),
          thumbColor: Color(0xFF7400FF),
          padding: EdgeInsets.only(top: sdp_fromPX(context, 18), bottom: sdp_fromPX(context, 18)),
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: ListView.builder(
                controller: controller,
                padding: EdgeInsets.symmetric(horizontal: sdp_fromPX(context, 20)),
                itemCount: widget.data.length,
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
                            width: widget.widthFirstCell ?? sdp_fromPX(context, 849),
                            decoration: BoxDecoration(
                              color: isSelected ? Color.fromARGB(255, 102, 30, 191) : Color.fromRGBO(77, 61, 95, 1),
                              borderRadius: BorderRadius.circular(sdp_fromPX(context, 7)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: sdp_fromPX(context, 24), top: sdp_fromPX(context, 8)),
                              child: Text(
                                widget.data[index]['description'],
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: sdp_fromPX(context, 26),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: sdp_fromPX(context, 40)),
                          ),
                          if (widget.secondText == true)
                            Container(
                              height: sdp_fromPX(context, 50),
                              width: sdp_fromPX(context, 212),
                              decoration: BoxDecoration(
                                color: isSelected ? Color.fromARGB(255, 102, 30, 191) : Color.fromRGBO(77, 61, 95, 1),
                                borderRadius: BorderRadius.circular(sdp_fromPX(context, 7)),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: sdp_fromPX(context, 5)),
                                child: Center(
                                  child: Text(
                                    widget.data[index]['price'],
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontSize: sdp_fromPX(context, 26),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Roboto',
                                    ),
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
    );
  }
}
