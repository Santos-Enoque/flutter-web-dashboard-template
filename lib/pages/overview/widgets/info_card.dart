import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final bool isActive;
  final Function onTap;

  const InfoCard({Key key,@required this.title,@required this.value, this.isActive = false,@required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 136,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 6),
                color: lightGrey.withOpacity(.1),
                blurRadius: 12
              )
            ],
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: isActive ? active : lightGrey, width: .5),
          ),
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                    text: "$title\n",
                    style: TextStyle(
                        fontSize: 16, color: isActive ? active : lightGrey)),
                TextSpan(
                    text: "$value",
                    style:
                        TextStyle(fontSize: 40, color: isActive ? active : dark)),
              ])),
        ),
      ),
    );
  }
}
