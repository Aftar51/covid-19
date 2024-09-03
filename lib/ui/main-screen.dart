import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Covid 19',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'LemonMilk',
              color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Rumah Sakit',
              style: TextStyle(
                fontFamily: "LemonMilk",
                fontSize: 24.0,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      title: Text('Card Title', style: TextStyle(fontSize: 24)),
                      subtitle:
                          Text('Card Subtitle', style: TextStyle(fontSize: 16)),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
