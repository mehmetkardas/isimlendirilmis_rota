import 'package:flutter/material.dart';

class Greenpage extends StatelessWidget {
  final String ad;
  const Greenpage({super.key, required this.ad});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yeşil Sayfa"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Yeşil Sayfa",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 25),
            Text(
              "Benim adım : $ad",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
