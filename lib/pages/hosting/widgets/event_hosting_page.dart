import 'package:data_table_2/data_table_2.dart';

import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

class EventHostingPage extends StatelessWidget {
  const EventHostingPage({Key? key, required this.eventName}) : super(key: key);

  final String eventName;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> eventData = [
      {
        'name': 'John Doe',
        'email': 'john.doe@example.com',
        'collegeName': "St.Peter's Engineering College",
        'participants': 150,
      },
      {
        'name': 'Jane Smith',
        'email': 'jane.smith@example.com',
        'collegeName': "ABC Institute of Technology",
        'participants': 120,
      },
      {
        'name': 'Bob Johnson',
        'email': 'bob.johnson@example.com',
        'collegeName': "St.peter's Engineering College",
        'participants': 120280,
      },
      {
        'name': 'Alice Brown',
        'email': 'alice.brown@example.com',
        'collegeName': "MLRIT  Institute of Technology",
        'participants': 500,
      }
      // Add more event data as needed
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.grey),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: active.withOpacity(.4), width: .5),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 6),
              color: lightGrey.withOpacity(.1),
              blurRadius: 12,
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(top: 10, bottom: 30),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - 100,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 10),
                    CustomText(
                      text: eventName,
                      color: lightGrey,
                      weight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(
                  height: (56 * (eventData.length + 1)) + 40,
                  child: DataTable2(
                    columnSpacing: 12,
                    dataRowHeight: 56,
                    headingRowHeight: 40,
                    horizontalMargin: 12,
                    minWidth: 600,
                    columns: const [
                      DataColumn2(
                        label: Text("Name"),
                        size: ColumnSize.L,
                      ),
                      DataColumn(
                        label: Text('Email ID'),
                      ),
                      DataColumn(
                        label: Text('College Name'),
                      ),
                      DataColumn(
                        label: Text('Participants'),
                      ),
                    ],
                    rows: List<DataRow>.generate(
                      eventData.length,
                      (index) => DataRow(
                        cells: [
                          DataCell(CustomText(text: eventData[index]['name'])),
                          DataCell(CustomText(text: eventData[index]['email'])),
                          DataCell(CustomText(
                              text: eventData[index]['collegeName'])),
                          DataCell(
                            CustomText(
                                text: eventData[index]['participants']
                                    .toString()),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
