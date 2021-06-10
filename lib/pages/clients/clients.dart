import 'package:flutter/material.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        MediaQuery.of(context).size.width.toString() +
                            "Clients",
                        style: TextStyle(fontSize: 39))
                  ],
                ),
              );
  }
}