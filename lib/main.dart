import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'title',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(title: 'Demo Login'),
        '/home': (context) => const HomePage(),
      },
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
        titleTextStyle: const TextStyle(color: Colors.white)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10,),
            const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                border: OutlineInputBorder(),
                hintText: 'Nama',
              ),
            ),
            const SizedBox(height: 10,),
            const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.phone),
                border: OutlineInputBorder(),
                hintText: 'No. HP',
              ),
            ),
            const SizedBox(height: 10,),
            const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                border: OutlineInputBorder(),
                hintText: 'Email',
              ),
            ),
            const SizedBox(height: 10,),
            TextButton(
              style: const ButtonStyle(
                foregroundColor: WidgetStatePropertyAll<Color>(Colors.white),
                backgroundColor: WidgetStatePropertyAll<Color>(Colors.blue)
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              }, 
              child: const Text("Validasi Data")
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            bottom: const TabBar(
              labelStyle: TextStyle(color: Colors.white),
              unselectedLabelStyle: TextStyle(color: Colors.white),
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'Product'),
                Tab(text: 'Contact')
              ]
            ),
            title: const Text('Assessment 2'),
            leading: const IconButton(
              icon: Icon(Icons.menu),
              onPressed: null,
            ),
            titleTextStyle: const TextStyle(color: Colors.white),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text('Home Page')), 
              Center(child: Text('Product')), 
              Center(child: Text('Contact'))
            ],
          ),
        ),
      ),
    );
  }
}
// Icon(Icons.home),
// Icon(Icons.add_shopping_cart),
// Icon(Icons.phone),