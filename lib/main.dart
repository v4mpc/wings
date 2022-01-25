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

  final Color orange = Colors.orange;
  final Color darkOrange = Colors.deepOrange;
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
    return Scrollbar(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text('Hello Maxwell'),
                    Text(
                      'Book you next flight',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
              Expanded(
                child: Row(
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
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: _buildElevatedButton(),
              ),
              SizedBox(
                width: 4,
              ),
              Expanded(
                child: _buildElevatedButton(),
              ),
              SizedBox(
                width: 4,
              ),
              Expanded(
                child: _buildElevatedButton(),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          _buildCard(),
          SizedBox(
            height: 10,
          ),
          _buildRouteIndicator(),
        ],
      ),
    );
  }

  Widget _buildRouteIndicator() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      child: Container(
        width: 350,
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
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
                        child: Row(
                          children: [
                            Icon(Icons.circle_outlined, size: 15),
                            Icon(
                              Icons.remove,
                              size: 15,
                            ),
                            Icon(
                              Icons.remove,
                              size: 15,
                            ),
                            Icon(
                              Icons.remove,
                              size: 15,
                            ),
                            Icon(
                              Icons.remove,
                              size: 15,
                            ),
                            RotatedBox(
                              quarterTurns: 1,
                              child: Icon(
                                Icons.airplanemode_active_rounded,
                                size: 15,
                              ),
                            ),
                            Icon(
                              Icons.remove,
                              size: 15,
                            ),
                            Icon(
                              Icons.remove,
                              size: 15,
                            ),
                            Icon(
                              Icons.remove,
                              size: 15,
                            ),
                            Icon(
                              Icons.remove,
                              size: 15,
                            ),
                            Icon(
                              Icons.circle_outlined,
                              size: 15,
                            ),
                          ],
                        ),
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
                ),
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
                    child: Row(
                      children: [
                        Icon(Icons.remove),
                        Icon(Icons.remove),
                        Icon(Icons.remove),
                        Icon(Icons.remove),
                        Icon(Icons.remove),
                        Icon(Icons.remove),
                        Icon(Icons.remove),
                        Icon(Icons.remove),
                        Icon(Icons.remove),
                        Icon(Icons.remove),
                        Icon(Icons.remove),
                        Icon(Icons.remove),
                        Icon(Icons.remove),
                      ],
                    ),
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
                child: Row(
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
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: 350,
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

  Widget _buildElevatedButton() {
    return ElevatedButton(
      style: ButtonStyle(
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
          Container(
            height: 17,
            width: 17,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.map,
              size: 14,
            ),
          ),
          SizedBox(
            width: 2,
          ),
          const Text(
            'Round Trip',
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}