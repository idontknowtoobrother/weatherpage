import 'package:flutter/material.dart';

void main() {
  runApp(WeatherPage());
}

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: buildAppBarWidget(),
        body: buildBodyWidget(),
      ),
    );
  }
}

AppBar buildAppBarWidget() {
  return AppBar(
    title: Text(
      'ชลบุรี',
      style: TextStyle(fontSize: 40, color: Colors.black),
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    leading: IconButton(
      icon: Icon(
        Icons.add,
        size: 30,
        color: Colors.black,
      ),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.keyboard_control_outlined,
          color: Colors.black,
        ),
      )
    ],
  );
}

Widget buildBodyWidget() {
  return Container(
    child: Stack(children: [
      Image.network(
        'https://png.pngtree.com/thumb_back/fw800/back_pic/04/16/77/785825b4ba713f1.jpg',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
      Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 170,
                      ),
                      Text(
                        '20 ํ',
                        style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        'มีแดด',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            buildForecast(),
            Column(
              children: [
                buildTempDay0(),
                buildTempDay1(),
                buildTempDay2(),
                buildTempDay3(),
              ],
            )
          ],
        ),
      )
    ]),
  );
}

buildForecast() {
  return Container(
      margin: EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: Colors.indigo.shade50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      height: 155,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            Row(
              children: [
                Icon(
                  Icons.access_time,
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildTime01(),
                buildTime02(),
                buildTime03(),
                buildTime04(),
              ],
            )
          ],
        ),
      ));
}

buildTime01() {
  return Column(
    children: [
      Text(
        "ตอนนี้",
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
      Text(""),
      Icon(
        Icons.sunny,
        color: Colors.orangeAccent,
      ),
      Text(""),
      Text(
        "25°",
        style: TextStyle(color: Colors.black, fontSize: 20),
      )
    ],
  );
}

buildTime02() {
  return Column(
    children: [
      Text(
        "08:00",
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
      Text(""),
      Icon(
        Icons.sunny,
        color: Colors.orangeAccent,
      ),
      Text(""),
      Text(
        "24°",
        style: TextStyle(color: Colors.black, fontSize: 20),
      )
    ],
  );
}

buildTime03() {
  return Column(
    children: [
      Text(
        "09.00",
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
      Text(""),
      Icon(
        Icons.cloud,
        color: Colors.orangeAccent,
      ),
      Text(""),
      Text(
        "26°",
        style: TextStyle(color: Colors.black, fontSize: 20),
      )
    ],
  );
}

buildTime04() {
  return Column(
    children: [
      Text(
        "10.00",
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
      Text(""),
      Icon(
        Icons.sunny,
        color: Colors.orangeAccent,
      ),
      Text(""),
      Text(
        "26°",
        style: TextStyle(color: Colors.black, fontSize: 20),
      )
    ],
  );
}

buildTempDay0() {
  return ListTile(
      leading: Icon(Icons.wb_twighlight),
      iconColor: Colors.black,
      title: Text(
        "เมื่อวานนี้  ํ แจ่มใส",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
      textColor: Colors.black,
      trailing: Text(
        '26 ํ / 29 ํ ',
        style: TextStyle(
          fontSize: 18,
        ),
      ));
}

buildTempDay1() {
  return ListTile(
      leading: Icon(Icons.wb_twighlight),
      iconColor: Colors.black,
      title: Text(
        "วันนี้  ํ เมฆบางส่วน",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
      textColor: Colors.black,
      trailing: Text(
        '22 ํ / 25 ํ ',
        style: TextStyle(
          fontSize: 18,
        ),
      ));
}

buildTempDay2() {
  return ListTile(
      leading: Icon(Icons.wb_twighlight),
      iconColor: Colors.black,
      title: Text(
        "อ.  ํ มีเมฆ",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
      textColor: Colors.black,
      trailing: Text(
        '25 ํ / 30 ํ ',
        style: TextStyle(
          fontSize: 18,
        ),
      ));
}

buildTempDay3() {
  return ListTile(
      leading: Icon(Icons.wb_twighlight),
      iconColor: Colors.black,
      title: Text(
        "พ.  ํ มีแดด",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
      textColor: Colors.black,
      trailing: Text(
        '21 ํ / 26 ํ ',
        style: TextStyle(
          fontSize: 18,
        ),
      ));
}
