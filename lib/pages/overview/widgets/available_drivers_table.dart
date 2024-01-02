import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

class HostingEventsTable extends StatelessWidget {
  const HostingEventsTable({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> eventData = [
      {
        'eventName': 'Hackathon',
        'collegeName': "St.Peter's Engineering College",
        'feedback': 4.5,
        'participants': 150,
      },
      {
        'eventName': 'Tech Fest',
        'collegeName': "ABC Institute of  Technology",
        'feedback': 4.2,
        'participants': 120,
      },

      {
        'eventName': 'Aquilla',
        'collegeName': "St.peter's Engineering College",
        'feedback': 3.8,
        'participants': 120280,
      },
      {
        'eventName': 'Cultural Events',
        'collegeName': "MLRIT  Institute of Technology",
        'feedback': 4.1,
        'participants': 500,
      }

      // Add more event data as needed
    ];

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: active.withOpacity(.4), width: .5),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 6),
            color: lightGrey.withOpacity(.1),
            blurRadius: 12,
          )
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              CustomText(
                text: "Conducted Events",
                color: lightGrey,
                weight: FontWeight.bold,
              ),
            ],
          ),
          SizedBox(
            height: (56 * (eventData.length + 1)) + 40, // +1 for heading row
            child: DataTable2(
              columnSpacing: 12,
              dataRowHeight: 56,
              headingRowHeight: 40,
              horizontalMargin: 12,
              minWidth: 600,
              columns: const [
                DataColumn2(
                  label: Text("Event Name"),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: Text('College Name'),
                ),
                DataColumn(
                  label: Text('Participants'),
                ),
                DataColumn(
                  label: Text('Feedback'),
                ),
              ],
              rows: List<DataRow>.generate(
                eventData.length,
                (index) => DataRow(
                  cells: [
                    DataCell(CustomText(text: eventData[index]['eventName'])),
                    DataCell(CustomText(text: eventData[index]['collegeName'])),
                    DataCell(CustomText(
                        text: eventData[index]['participants'].toString())),
                    DataCell(
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.star,
                              color: Colors.deepOrange, size: 18),
                          const SizedBox(width: 5),
                          CustomText(
                              text: eventData[index]['feedback'].toString()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
