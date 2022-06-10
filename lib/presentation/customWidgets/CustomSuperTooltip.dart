import 'dart:async';

import 'package:flutter/material.dart';
import 'package:super_tooltip/super_tooltip.dart';
import 'package:google_fonts/google_fonts.dart';

class SuperTooltipWidget extends StatefulWidget {
  const SuperTooltipWidget({Key? key}) : super(key: key);

  @override
  _SuperTooltipWidgetState createState() => new _SuperTooltipWidgetState();
}

class _SuperTooltipWidgetState extends State<SuperTooltipWidget> {
  SuperTooltip? tooltip;

  Future<bool> _willPopCallback() async {
    // If the tooltip is open we don't pop the page on a backbutton press
    // but close the ToolTip
    if (tooltip!.isOpen) {
      tooltip!.close();
      return false;
    }
    return true;
  }

  void onTap() {
    if (tooltip != null && tooltip!.isOpen) {
      tooltip!.close();
      return;
    }

    var renderBox = context.findRenderObject() as RenderBox;
    final overlay = Overlay.of(context)!.context.findRenderObject() as RenderBox?;

    var targetGlobalCenter = renderBox
        .localToGlobal(renderBox.size.center(Offset.zero), ancestor: overlay);

    // We create the tooltip on the first use
// We create the tooltip on the first use
    tooltip = SuperTooltip(
      popupDirection: TooltipDirection.down,
      borderColor: Color(0xFFB1B1B1),
      top: 50.0,
      right: 5.0,
      left: 100.0,
      borderWidth: 2.0,
      hasShadow: false,
      content: new Material(
          child:
          Container(
            padding: const EdgeInsets.all(5.0),
            width: 200.0,
            child:
            Text.rich(
              TextSpan(
                  text: 'Được thể hiện trên ',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF3D3D3D),
                  ),
                  children: <InlineSpan>[
                    TextSpan(
                        text: ' CMND/CCCD/Hộ chiếu',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.red,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: ' của quý khách',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF3D3D3D),
                            ),
                          )
                        ]
                    )
                  ]
              ),),
          )),
    );
    tooltip!.show(context);
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: _willPopCallback,
      child: new GestureDetector(
        onTap: onTap,
        child: Container(
          child:
          Image(
              width: 16,
              height: 16,
              image: AssetImage('assets/icons/icNotes.png')),),
      ),
    );
  }
}