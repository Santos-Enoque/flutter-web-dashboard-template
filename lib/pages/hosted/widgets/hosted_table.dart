import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/pages/hosted/widgets/event_hosted_page.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int customScreenSize = 1100;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < mediumScreenSize;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= mediumScreenSize &&
        MediaQuery.of(context).size.width < largeScreenSize;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= largeScreenSize) {
      return largeScreen;
    } else if (screenWidth >= mediumScreenSize) {
      return mediumScreen ?? largeScreen;
    } else {
      return smallScreen ?? largeScreen;
    }
  }
}

class HostedTable extends StatelessWidget {
  const HostedTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: LargeScreen(),
      mediumScreen: MediumScreen(),
      smallScreen: SmallScreen(),
    );
  }
}

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: light,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.grey),
        title: const Text(
          'Hosted Events',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
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
          margin: const EdgeInsets.only(bottom: 27),
          child: Column(
            children: [
              const SizedBox(height: 16),
              _buildEventCards(eventData, 240, 240, 155, 155, 8),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEventCards(List<EventData> events, double width, double height,
      double imageWidth, double imageHeight, int columns) {
    return Wrap(
      spacing: 12.0,
      runSpacing: 12.0,
      alignment: WrapAlignment.spaceEvenly,
      children: events.map((event) {
        return _buildEventCard(event, width, height, imageWidth, imageHeight);
      }).toList(),
    );
  }

  Widget _buildEventCard(EventData event, double width, double height,
      double imageWidth, double imageHeight) {
    return SizedBox(
      width: width,
      height: height,
      child: EventCard(
        eventName: event.name,
        imagePath: event.imagePath,
        imageWidth: imageWidth,
        imageHeight: imageHeight,
        imagePadding: 18,
      ),
    );
  }
}

class MediumScreen extends StatelessWidget {
  const MediumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: light,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.grey),
        title: const Text(
          'Hosted Events',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
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
          margin: const EdgeInsets.only(bottom: 25),
          child: Column(
            children: [
              const SizedBox(height: 16),
              _buildEventCards(eventData, 230, 230, 155, 155, 8),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEventCards(List<EventData> events, double width, double height,
      double imageWidth, double imageHeight, int columns) {
    return Wrap(
      spacing: 16.0,
      runSpacing: 16.0,
      children: events.map((event) {
        return _buildEventCard(event, width, height, imageWidth, imageHeight);
      }).toList(),
    );
  }

  Widget _buildEventCard(EventData event, double width, double height,
      double imageWidth, double imageHeight) {
    return SizedBox(
      width: width,
      height: height,
      child: EventCard(
        eventName: event.name,
        imagePath: event.imagePath,
        imageWidth: imageWidth,
        imageHeight: imageHeight,
        imagePadding: 18,
      ),
    );
  }
}

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: light,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.grey),
        title: const Text(
          'Hosted Events',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
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
          margin: const EdgeInsets.only(bottom: 30),
          child: Column(
            children: [
              const SizedBox(height: 16),
              Center(
                child: Column(
                  children: eventData.map((event) {
                    return _buildEventCard(
                        event, 240, 240, 155, 155, 8); // Added padding argument
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEventCard(EventData event, double width, double height,
      double imageWidth, double imageHeight, double imagePadding) {
    return SizedBox(
      width: width,
      height: height,
      child: EventCard(
        eventName: event.name,
        imagePath: event.imagePath,
        imageWidth: imageWidth,
        imageHeight: imageHeight,
        imagePadding: imagePadding, // Pass padding to EventCard
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String eventName;
  final String imagePath;
  final double imageWidth;
  final double imageHeight;
  final double imagePadding; // New property

  const EventCard({
    Key? key,
    required this.eventName,
    required this.imagePath,
    required this.imageWidth,
    required this.imageHeight,
    required this.imagePadding, // Initialize the new property
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EventHostedPage(
              eventName: eventName,
            ),
          ),
        );
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          width: 230,
          height: 230,
          decoration: BoxDecoration(
            color: const Color(0xFFEEEEEE),
            borderRadius: BorderRadius.circular(8),
          ),
          margin: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: imageWidth,
                height: imageHeight,
                margin: EdgeInsets.only(top: imagePadding), // Apply top margin
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 11),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: CustomText(
                  text: eventName,
                  size: 17,
                  weight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EventData {
  final String name;
  final String imagePath;

  EventData(this.name, this.imagePath);
}

// Define your event data here
List<EventData> eventData = [
  EventData('CULTURAL', 'assets/images/2.jpg'),
  EventData('SPORTS', 'assets/images/3.jpg'),
  EventData('ANOTHER', 'assets/images/33.jpg'),
  EventData('CULTURAL', 'assets/images/2.jpg'),
  EventData('CULTURAL', 'assets/images/2.jpg'),
  EventData('CULTURAL', 'assets/images/2.jpg'),
  EventData('SPORTS', 'assets/images/3.jpg'),
  EventData('SPORTS', 'assets/images/2.jpg'),
];
