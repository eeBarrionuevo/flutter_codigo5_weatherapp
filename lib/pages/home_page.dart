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
          Image.asset(
            'assets/images/dom.png',
            height: height * 0.16,
          ),
          Text(
            "24",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
