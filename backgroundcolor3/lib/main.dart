import 'package:flutter/material.dart';

void main() {
  runApp(ColorChangeApp());
}

class ColorChangeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Change App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ColorChangePage(),
    );
  }
}

class ColorChangePage extends StatefulWidget {
  @override
  _ColorChangePageState createState() => _ColorChangePageState();
}

class _ColorChangePageState extends State<ColorChangePage> {
  Color _backgroundColor = Colors.white; // Initial background color

  void _changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Change App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 500,
              height: 500,
              color: _backgroundColor,
              child: Center(
                child: Text(
                  '',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    _changeBackgroundColor(Colors.yellow);
                  },
                  child: Text('YELLOW'),
                  style: ElevatedButton.styleFrom(primary: Colors.yellow),
                ),
                ElevatedButton(
                  onPressed: () {
                    _changeBackgroundColor(Colors.red);
                  },
                  child: Text('RED'),
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                ),
                ElevatedButton(
                  onPressed: () {
                    _changeBackgroundColor(Colors.blue);
                  },
                  child: Text('BLUE'),
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
