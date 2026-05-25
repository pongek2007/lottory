import 'package:flutter/material.dart';
import 'package:lottory/future_lotto_num.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      
      debugShowCheckedModeBanner: false,
    ); 
  } 
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lottory Generator'),),
      body: Center(
        child: 
          TextButton(
            onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) { return FutureLottoNum(); },
                  ),
                );             
            }, 
            child: Text('เริ่มต้นสุ่มตัวเลข', style: TextStyle(fontSize: 23, color: Colors.orange),),
          ),
        ),
    );
  }
}
