import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // main이 실행되면서 MyApp이 그려진다
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // build 메서드의 return 값이 그려진다
    return MaterialApp(
      // 상단에 딱지를 제거하기
      debugShowCheckedModeBanner: false,
      // home에 그림을 그린다
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 뼈대를 클래스로 분리한다
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Woman", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Kids", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Shoes", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Bag", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.asset(
                "assets/bag.jpeg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Expanded(
              flex: 1,
              child: Image.asset(
                "assets/cloth.jpeg",
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
