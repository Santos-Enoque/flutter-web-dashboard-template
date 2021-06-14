import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/helpers/reponsiveness.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context,  GlobalKey<ScaffoldState> key) =>
AppBar(
        leading: !ResponsiveWidget.isSmallScreen(context) ? Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Image.asset("assets/icons/logo.png", width: 28,),
            ),
          ],
        ) : IconButton(icon: Icon(Icons.menu), onPressed: (){
          key.currentState.openDrawer();
        }),
        title: Container(
          child: Row(
            children: [
              Visibility(
                visible: !ResponsiveWidget.isSmallScreen(context),
                child: CustomText(text: "Dash", color: lightGrey, size: 20, weight: FontWeight.bold,)),
              Expanded(child: Container()),
              IconButton(icon: Icon(Icons.settings, color: dark,), onPressed: (){}),

              Stack(
                children: [
                  IconButton(icon: Icon(Icons.notifications, color: dark.withOpacity(.7),), onPressed: (){}),
                  Positioned(
                    top: 7,
                    right: 7,
                    child: Container(
                      width: 12,
                      height: 12,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: active,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: light, width: 2)
                      ),
                    ),
                  )
                ],
              ),

            Container(
                      width: 1,
                      height: 22,
                      color: lightGrey,
                    ),
              SizedBox(width: 24,),
              CustomText(text: "Santos Enoque", color: lightGrey,),
              SizedBox(width: 16,),
              Container(
                  decoration: BoxDecoration(
                    color: active.withOpacity(.5),
                    borderRadius: BorderRadius.circular(30)
                  ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.all(2),
                  child: CircleAvatar(
                    backgroundColor: light,
                    child: Icon(Icons.person_outline, color: dark,),
                    ),
                ),
              )
            ],
          ),
        ),
        iconTheme: IconThemeData(color: dark),
        elevation: 0,
        backgroundColor: Colors.transparent,
      );