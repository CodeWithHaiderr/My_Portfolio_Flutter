

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/screens/constants.dart';

class EducationWidget extends StatelessWidget {
  const EducationWidget({
    super.key, required this.text,
  });

  final String text;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/icons/check.svg"),
        const Padding(
          padding: EdgeInsets.only(bottom: defaultPadding / 2),
          child: SizedBox(width: defaultPadding / 2,),
        ),

        Expanded(child: Text(text,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.white),),),
      ],
    );
  }
}