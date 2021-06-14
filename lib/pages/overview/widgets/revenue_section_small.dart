import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/bar_chart.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/revenue_info.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

class RevenueSectionSmall extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
                padding: EdgeInsets.all(24),
                margin: EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 6),
                        color: lightGrey.withOpacity(.1),
                        blurRadius: 12)
                  ],
                  border: Border.all(color: lightGrey, width: .5),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 260,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomText(
                            text: "Revenue Chart",
                            size: 20,
                            weight: FontWeight.bold,
                            color: lightGrey,
                          ),
                          Container(
                              width: 600,
                              height: 200,
                              child: SimpleBarChart.withSampleData()),
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 1,
                      color: lightGrey,
                    ),
                    Container(
                      height: 260,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              RevenueInfo(
                                title: "Toda\'s revenue",
                                amount: "230",
                              ),
                              RevenueInfo(
                                title: "Last 7 days",
                                amount: "1,100",
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              RevenueInfo(
                                title: "Last 30 days",
                                amount: "3,230",
                              ),
                              RevenueInfo(
                                title: "Last 12 months",
                                amount: "11,300",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
  }
}