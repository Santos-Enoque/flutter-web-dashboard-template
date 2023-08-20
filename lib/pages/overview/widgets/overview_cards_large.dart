import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/info_card.dart';


class OverviewCardsLargeScreen extends StatelessWidget {
  const OverviewCardsLargeScreen({super.key});


  @override
  Widget build(BuildContext context) {
   double width = MediaQuery.of(context).size.width;

    return  Row(
              children: [
                InfoCard(
                  title: "Rides in progress",
                  value: "7",
                  onTap: () {},
                  topColor: Colors.orange,
                ),
                SizedBox(
                  width: width / 64,
                ),
                InfoCard(
                  title: "Packages delivered",
                  value: "17",
                  topColor: Colors.lightGreen,
                  onTap: () {},
                ),
                SizedBox(
                  width: width / 64,
                ),
                InfoCard(
                  title: "Cancelled delivery",
                  value: "3",
                  topColor: Colors.redAccent,
                  onTap: () {},
                ),
                SizedBox(
                  width: width / 64,
                ),
                InfoCard(
                  title: "Scheduled deliveries",
                  value: "32",
                  onTap: () {},
                ),
              ],
            );
  }
}