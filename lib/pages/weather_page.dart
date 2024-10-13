import 'dart:ui';

import 'package:flutter/material.dart';

import 'additional_info.dart';
import 'hourly_forecast_item.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // main card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "300 K",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Icon(
                            Icons.cloudy_snowing,
                            size: 64,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Rain",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            const Text(
              "Weather Forecast",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),

            //   weather card
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForecastItem(icons: Icons.cloud, temperature: '301.22', time: '00:00',),
                  HourlyForecastItem(icons: Icons.sunny, temperature: '300.52', time: '03:00',),
                  HourlyForecastItem(icons: Icons.cloud, temperature: '302.22', time: '06:00',),
                  HourlyForecastItem(icons: Icons.sunny, temperature: '300.12', time: '09:00',),
                  HourlyForecastItem(icons: Icons.cloud, temperature: '304.12', time: '12:00',),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            const Text(
              "Additional Information",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(
              height: 8,
            ),

            //Additional Information
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInfo(icon: Icons.water_drop, label: 'Humidity', value: '94'),
                AdditionalInfo(icon: Icons.air, label: 'Wind Speed', value: '7.5'),
                AdditionalInfo(icon: Icons.beach_access, label: 'Pressure', value: '1006'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
