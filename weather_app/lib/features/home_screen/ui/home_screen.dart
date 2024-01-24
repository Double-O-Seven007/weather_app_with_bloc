import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/global%20widgets/image_description_widget.dart';
import 'package:weather_app/global%20widgets/text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        //This changes the colour of the icons above the appbar such as battery, time and network
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          40,
          1.2 * kToolbarHeight,
          40,
          20,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              //This aligns container to the right
              Align(
                alignment: AlignmentDirectional(
                  3,
                  -0.3,
                ),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              //This aligns container to the left
              Align(
                alignment: AlignmentDirectional(
                  -3,
                  -0.3,
                ),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              //aligns the container to the top
              Align(
                alignment: AlignmentDirectional(
                  0,
                  -1.2,
                ),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.orange[300],
                  ),
                ),
              ),
              //This filter is the one the blurs out the colours of the containers.
              //It applies the filter to widgets beneath the child parameter
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                //Child parameter should not be null otherwise the filter does not get applied.
                child: Container(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: '📍South Africa',
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidget(
                      text: 'Good Morning',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    Image.asset('assets/sunnyD.png'),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: TextWidget(
                        text: '21°C',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Center(
                      child: TextWidget(
                        text: 'Sunny',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Center(
                      child: TextWidget(text: 'Friday 16 • 09.41am'),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageDescriptionWidget(
                          assetImagePath: 'assets/sunnyD.png',
                          description: 'Sunrise',
                          value: '08:24 am',
                        ),
                        ImageDescriptionWidget(
                          assetImagePath: 'assets/sunnyD.png',
                          description: 'Sunset',
                          value: '08:24 pm',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(
                        thickness: 0.3,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageDescriptionWidget(
                          assetImagePath: 'assets/sunnyD.png',
                          description: 'Temp Max',
                          value: '12°C',
                        ),
                        ImageDescriptionWidget(
                          assetImagePath: 'assets/sunnyD.png',
                          description: 'Temp Min',
                          value: '8°C',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
