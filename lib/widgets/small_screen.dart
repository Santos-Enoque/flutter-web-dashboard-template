import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/local_navigator.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return localNavigator();
  }
}