import 'package:flutter/material.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        MediaQuery.of(context).size.width.toString() +
                            "Drivers",
                        style: TextStyle(fontSize: 39))
                  ],
                ),
              );
  }
}