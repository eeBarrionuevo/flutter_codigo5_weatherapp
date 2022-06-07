import 'package:flutter/material.dart';
import 'package:flutter_codigo5_weatherapp/services/api_service.dart';
import 'package:flutter_codigo5_weatherapp/ui/general/colors.dart';
import 'package:flutter_codigo5_weatherapp/ui/widgets/item_forecast_widget.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final APIService apiService = APIService();
  final TextEditingController cityNameController = TextEditingController();

  @override
  initState(){
    super.initState();

  }

  _getDataWeather(){
    String cityName = cityNameController.text;
    apiService.getDataWeather(cityName);
  }



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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              Image.asset(
                'assets/images/dom.png',
                height: height * 0.10,
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
                      fontSize: height * 0.07,
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
                controller: cityNameController,
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
                onSubmitted: (value){
                  _getDataWeather();
                },
              ),
              const SizedBox(
                height: 24.0,
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
              const SizedBox(
                height: 30.0,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14.0, vertical: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.09),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "15 minutes ago",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.0),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          maxLines: 2,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: -45,
                      right: 0,
                      child: Image.asset(
                        'assets/images/dom.png',
                        height: height * 0.1,
                      ),
                    ),
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
