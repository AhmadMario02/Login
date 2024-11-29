import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2210130001 - Ahmad Marioale Sulolipu - Assessment 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(title: 'Demo Login')
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});
  final String title;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                border: OutlineInputBorder(),
                hintText: 'Nama',
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.phone),
                border: OutlineInputBorder(),
                hintText: 'No. HP',
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                border: OutlineInputBorder(),
                hintText: 'Email',
              ),
            ),
            SizedBox(height: 10,),
            TextButton(
              style: ButtonStyle(
                foregroundColor: WidgetStatePropertyAll<Color>(Colors.white),
                backgroundColor: WidgetStatePropertyAll<Color>(Colors.blue)
              ),
              onPressed: null, 
              child: Text("Validasi Data"))
          ],
        ),
      ),
    );
  }
}