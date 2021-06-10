import 'package:flutter/material.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        MediaQuery.of(context).size.width.toString() +
                            "Overview",
                        style: TextStyle(fontSize: 39))
                  ],
                ),
              );
  }
}