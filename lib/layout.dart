import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/routing/router.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:flutter_web_dashboard/widgets/side_menu_item.dart';

class SiteLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Container(
            color: dark,
            child: ListView(
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: _width / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: SvgPicture.asset("assets/icons/logo.svg"),
                    ),
                    Flexible(
                      child: CustomText(
                        text: "Admin Panel",
                        size: 20,
                        weight: FontWeight.bold,
                        color: lightGrey,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: sideMenuItemRoutes
                      .map((itemName) => SideMenuItem(
                          itemName: itemName,
                          onTap: () {
                            if (!menuController.isActive(itemName)) {
                              menuController.changeActiveItemTo(itemName);
                              navigationController.navigateTo(itemName);
                            }
                          }))
                      .toList(),
                )
              ],
            ),
          )),
          Expanded(
              flex: 5,
              child: Navigator(
                key: navigationController.navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: overviewPageRoute,
              )),
        ],
      ),
    );
  }
}
