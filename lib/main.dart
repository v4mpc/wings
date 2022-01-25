import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my_arch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // final ThemeData theme = ThemeData(
  //   // primaryColor: Colors.white
  // );

  final Color orange = const Color(0xFFFFC723);
  final Color darkOrange = const Color(0xFFFFC723);
  final Color blue = Colors.blueAccent;
  final Color lightBlue = Colors.lightBlueAccent;

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFF5F5F5),
          body: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      color: Colors.black12,
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      color: Color(0xFFF8F8F8),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: _buildStackFrontend(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStackFrontend() {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Text('Hello Maxwell,'),
                    Text(
                      'Book you next flight',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/dog.jpeg',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: _buildElevatedButton(orange, darkOrange, Colors.white,'Round Trip'),
              ),
              SizedBox(
                width: 4,
              ),
              Expanded(
                child: _buildElevatedButton(
                    Colors.white, Colors.black12, Colors.black,'One Way'),
              ),
              SizedBox(
                width: 4,
              ),
              Expanded(
                child: _buildElevatedButton(
                    Colors.white, Colors.black12, Colors.black,'Multi City'),
              ),
            ],
          ),
          flex: 1,
        ),
        Expanded(child: _buildCard(), flex: 7),
        Expanded(
          child: _buildRouteIndicator(),
          flex: 3,
        ),
      ],
    );
  }

  Widget _buildRouteIndicator() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildCityIndicator(),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Container(
                    width: 0,
                    height: 28,
                    color: Colors.red,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: const [
                        Positioned(
                          child: Icon(
                            Icons.circle,
                            color: Color(0xFFF5F5F5),
                            size: 30,
                          ),
                          left: -17,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Center(
                    child: _buildDashedLine(),
                  ),
                  Container(
                    width: 0,
                    height: 28,
                    color: Colors.red,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: const [
                        Positioned(
                          child: Icon(
                            Icons.circle,
                            color: Color(0xFFF5F5F5),
                            size: 30,
                          ),
                          left: 9,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildTimeInfo(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCityIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Text(
                'NYC',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('New York'),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: _buildFromTo(),
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Text(
                'LDN',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('London'),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildTimeInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Text(
                '23 Dec',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Date'),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF4588EF),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      '9:00 AM',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
                Text('Depature'),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Text(
                'NL-41',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Number'),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildDashedLine() {
    return Row(
      children: [
        Icon(
          Icons.remove,
          color: Colors.black12,
        ),
        Icon(
          Icons.remove,
          color: Colors.black12,
        ),
        Icon(
          Icons.remove,
          color: Colors.black12,
        ),
        Icon(
          Icons.remove,
          color: Colors.black12,
        ),
        Icon(
          Icons.remove,
          color: Colors.black12,
        ),
        Icon(
          Icons.remove,
          color: Colors.black12,
        ),
        Icon(
          Icons.remove,
          color: Colors.black12,
        ),
        Icon(
          Icons.remove,
          color: Colors.black12,
        ),
        Icon(
          Icons.remove,
          color: Colors.black12,
        ),
        Icon(
          Icons.remove,
          color: Colors.black12,
        ),
        Icon(
          Icons.remove,
          color: Colors.black12,
        ),
        Icon(
          Icons.remove,
          color: Colors.black12,
        ),
        Icon(
          Icons.remove,
          color: Colors.black12,
        ),
      ],
    );
  }

  Widget _buildFromTo() {
    return Row(
      children: [
        Expanded(
          child: Icon(
            Icons.circle_outlined,
            size: 6,
            color: Color(0xFFFFC723),
          ),
        ),
        Expanded(
          child: Icon(
            Icons.remove,
            size: 8,
            color: Color(0xFFFFC723),
          ),
        ),
        Expanded(
          child: Icon(
            Icons.remove,
            size: 8,
            color: Color(0xFFFFC723),
          ),
        ),
        Expanded(
          child: Icon(
            Icons.remove,
            size: 8,
            color: Color(0xFFFFC723),
          ),
        ),
        Expanded(
          child: Icon(
            Icons.remove,
            size: 8,
            color: Color(0xFFFFC723),
          ),
        ),
        Expanded(
          child: Icon(
            Icons.remove,
            size: 8,
          ),
        ),
        Expanded(
          child: RotatedBox(
            quarterTurns: 1,
            child: Icon(
              Icons.airplanemode_active_rounded,
              color: Color(0xFFFFC723),
            ),
          ),
        ),
        Expanded(
          child: Icon(
            Icons.remove,
            size: 8,
            color: Color(0xFFFFC723),
          ),
        ),
        Expanded(
          child: Icon(
            Icons.remove,
            size: 8,
            color: Color(0xFFFFC723),
          ),
        ),
        Expanded(
          child: Icon(
            Icons.remove,
            size: 8,
            color: Color(0xFFFFC723),
          ),
        ),
        Expanded(
          child: Icon(
            Icons.remove,
            size: 8,
            color: Color(0xFFFFC723),
          ),
        ),
        Expanded(
          child: Icon(
            Icons.remove,
            size: 8,
            color: Color(0xFFFFC723),
          ),
        ),
        Expanded(
          child: Icon(
            Icons.circle_outlined,
            size: 6,
            color: Color(0xFFFFC723),
          ),
        ),
      ],
    );
  }

  Widget _buildCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('From(Location)'),
              SizedBox(
                height: 10,
              ),
              DropdownButtonFormField(
                items: <String>['One', 'Two', 'Free', 'Four']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                iconSize: 0.0,
                onChanged: (value) {},
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                  fillColor: Colors.black12,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.blueAccent, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.black12, width: 1),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('To(Destination)'),
              SizedBox(
                height: 10,
              ),
              DropdownButtonFormField(
                items: <String>['One', 'Two', 'Free', 'Four']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                iconSize: 0.0,
                onChanged: (value) {},
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                  fillColor: Colors.black12,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.blueAccent, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.black12, width: 1),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Depature'),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownButtonFormField(
                          items: <String>['One', 'Two', 'Free', 'Four']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          iconSize: 0.0,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 10),
                            fillColor: Colors.black12,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.blueAccent, width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide:
                                  BorderSide(color: Colors.black12, width: 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Return'),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownButtonFormField(
                          items: <String>['One', 'Two', 'Free', 'Four']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          iconSize: 0.0,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 10),
                            fillColor: Colors.black12,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.blueAccent, width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide:
                                  BorderSide(color: Colors.black12, width: 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Search flights'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildElevatedButton(
      Color buttonColor, Color iconBackgroundColor, Color fontColor,String text) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
      onPressed: () {
        true;
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 17,
              width: 17,
              decoration: BoxDecoration(
                color: iconBackgroundColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.map,
                size: 14,
                color: fontColor,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            flex: 3,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 10,
                color:fontColor
              ),
            ),
          ),
        ],
      ),
    );
  }
}
