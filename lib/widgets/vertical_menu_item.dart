import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'custom_text.dart';

class VerticalMenuItem extends StatelessWidget {
    final String itemName;
  final Function onTap;
  const VerticalMenuItem({ Key key, this.itemName, this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
         onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },child: Obx(() => Container(
            color: menuController.isHovering(itemName)
                ? lightGrey.withOpacity(.1)
                : Colors.transparent,
                child: Row(
                  children: [
                        Visibility(
                  visible: menuController.isHovering(itemName) ||
                      menuController.isActive(itemName),
                  child: Container(
                    width: 3,
                    height: 72,
                    color: dark,
                  ),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                ),

                Expanded(child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                       Padding(
                  padding: EdgeInsets.all(16),
                  child: menuController.returnIconFor(itemName),
                ),
                if (!menuController.isActive(itemName))
                  Flexible(
                      child: CustomText(
                    text: itemName,
                    color:
                        menuController.isHovering(itemName) ? dark : lightGrey,
                  ))
                  else
                  Flexible(child: CustomText(
                    text: itemName,
                    color: dark,
                    size: 18,
                    weight: FontWeight.bold,
                  ))
                  ],
                ))
                  ],
                ),
      )),
      
    );
  }
}