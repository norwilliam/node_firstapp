import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  double _weightSliderValue = 10;
  double _heightSliderValue = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nattapat Wichiansopon 652021048"),
      ),
      body: Column(
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage(
                'https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/11_avatar-512.png'),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Register",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Name",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Name',
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Username",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Username',
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Password",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Password',
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Weight",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Slider(
            value: _weightSliderValue,
            max: 100,
            label: _weightSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _weightSliderValue = value;
              });
            },
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Height",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Slider(
            value: _heightSliderValue,
            max: 200,
            label: _heightSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _heightSliderValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
