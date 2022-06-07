import 'package:flutter/material.dart';
import 'package:flutter_codigo5_weatherapp/ui/general/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      appBar: AppBar(
        title: Text("WeatherApp"),
        elevation: 0,
        centerTitle: true,
        backgroundColor: kBrandPrimaryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.location_on,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.03,
          ),
          Image.asset(
            'assets/images/dom.png',
            height: height * 0.16,
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Cloudy",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "24",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.08,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                width: 6.0,
              ),
              const Text(
                "°C",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
