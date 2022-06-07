import 'package:flutter/material.dart';
import 'package:flutter_codigo5_weatherapp/ui/general/colors.dart';
import 'package:flutter_codigo5_weatherapp/ui/widgets/item_forecast_widget.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.03,
            ),
            Image.asset(
              'assets/images/dom.png',
              height: height * 0.11,
            ),
            const SizedBox(
              height: 22.0,
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
            Text(
              "Arequipa, PE",
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter city name",
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Icon(
                  Icons.search,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ItemForecastWidget(),
                  ItemForecastWidget(),
                  ItemForecastWidget(),
                  ItemForecastWidget(),
                  ItemForecastWidget(),
                  ItemForecastWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
