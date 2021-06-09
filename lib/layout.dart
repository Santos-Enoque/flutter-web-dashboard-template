import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Container(
            color: dark,
            child: ListView(
              children: [
                SizedBox(height: 40,),
               Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:12),
                        child: SvgPicture.asset("assets/icons/logo.svg"),
                      ),
                      CustomText(
                        text: "Admin Panel",
                        size: 20,
                        weight: FontWeight.bold,
                        color: lightGgrey,
                      )
                    ],
                  )

              ],
            ),
          )),
          Expanded(
              flex: 5,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                      Text(MediaQuery.of(context).size.width.toString() + "Hallend", style: TextStyle(fontSize: 39)),
                  ],

                ),
              )),
        ],
      ),
    );
  }
}
