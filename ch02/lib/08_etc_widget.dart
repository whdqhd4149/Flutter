import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: '08.기타 나머지 위젯 실습'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Text Left!!!', style: TextStyle(fontSize: 26)),

          // Center : 위젯을 가운데로 정렬
          Center(
            child: Text('Text Center!!!', style: TextStyle(fontSize: 26)),
          ),

          // Expanded
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                width: 50,
                height: 100,
                color: Colors.red,
                )
              ),
              Expanded(
                flex: 1,
                  child: Container(
                    width: 50,
                    height: 100,
                    color: Colors.green,
                  )
              ),
              Expanded(
                flex: 2,
                  child: Container(
                    width: 50,
                    height: 100,
                    color: Colors.blue,
                  )
              )
            ],
          ),

          // Icon : 웹 아이콘 출력 위젯

          Icon(
            Icons.home,
            size: 60,
          ),
          Icon(
            Icons.favorite
          ),

          // Spacer
          Row(
            children: [

            ],
          ),






        ],
      )

    );
  }
}
