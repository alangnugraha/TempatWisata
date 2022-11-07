import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(primaryColor: Color(0xff072e69)),
      home: DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('images/cover 13.jpg'),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Text(
                  "Lawang Sewu",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.calendar_today),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text("Open Everyday"),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.access_time),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text("7.00 - 18.00"),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.monetization_on),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(" RP 5.000 "),
                        ],
                      ),
                    ]),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Lawang Sewu adalah bangunan perkantoran yang terletak di seberang Tugu Muda, Kota Semarang, Jawa Tengah, Indonesia, yang dibangun sebagai kantor pusat Nederlandsch-Indische Spoorweg Maatschappij..",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Robot',
                      fontWeight: FontWeight.w100),
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                            "https://sikidang.com/wp-content/uploads/Lawang-Sewu.jpg"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                            "https://www.bakpiamutiarajogja.com/wp-content/uploads/2017/01/lawang-sewu.jpg"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                            "https://images.bisnis-cdn.com/posts/2021/07/27/1422597/lawangsewu.jpg"),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    ));
  }
}
