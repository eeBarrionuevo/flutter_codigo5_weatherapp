import 'package:http/http.dart' as http;

class APIService{


  //Crear su modelo
  //Terminar de implementar la función

  getDataWeather() async{
    String path = "https://api.openweathermap.org/data/2.5/weather?q=Lima&appid=";
    Uri _uri = Uri.parse(path);
    http.Response response = await http.get(_uri);
    print(response.statusCode);
    print(response.body);
  }


}