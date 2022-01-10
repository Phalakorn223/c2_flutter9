import 'package:flutter/material.dart';

class AppBarDemo extends StatefulWidget {
  const AppBarDemo({Key? key}) : super(key: key);

  @override
  State<AppBarDemo> createState() => _AppBarDemo();
}

class _AppBarDemo extends State<AppBarDemo> {
  int count = 0;
  String message = "Hi";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter AppBar'),
        elevation: 10.0,
        shadowColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  message = "New Year 2022";
                  count = count + 1;
                });
              },
              icon: Icon(Icons.add_alert)),
          IconButton(
              onPressed: () => setState(() {
                    message = "Thank You";
                    count = count - 1;
                  }),
              icon: Icon(Icons.delete_forever_sharp)),
          IconButton(
              onPressed: () {
                setState(() {
                  message = "2022";
                  count = 0;
                });
              },
              icon: Icon(Icons.power_settings_new))
        ],
      ),
      body: Center(
        child: Text(
          "$count,\n$message",
          style: TextStyle(fontSize: 90.0, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () => {count = count + 1, print("Count:$count")},
          );
        },
        child: Icon(Icons.add),
        tooltip: 'เพิ่มค่า',
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
