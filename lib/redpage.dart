import 'package:flutter/material.dart';

class Redpage extends StatefulWidget {
  Redpage({super.key});

  @override
  State<Redpage> createState() => _RedpageState();
}

class _RedpageState extends State<Redpage> {
  late String name;
  @override
  void initState() {
    super.initState();
    name = "Mehmet";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kırmızı Sayfa"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Kırmızı Sayfa",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.red,
                shape: RoundedRectangleBorder(),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("/yellowPage");
              },
              child: Text("Sarı Sayfaya git"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("/greenPage", arguments: name);
              },
              child: Text("Yeşil Sayfaya git"),
            ),
          ],
        ),
      ),
    );
  }
}
