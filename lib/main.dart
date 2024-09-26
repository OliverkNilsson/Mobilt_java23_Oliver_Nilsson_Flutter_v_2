import 'package:flutter/material.dart';
import 'package:flutter_v4/secondPage.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter v4',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Some random record store'),
        '/second': (context) => const MySecondPage(title: 'Records')
      },
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
        backgroundColor: Colors.black,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView( // Lägg till SingleChildScrollView här
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Welcome to a Random Record Store!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.network(
                  'https://www.statesmanjournal.com/gcdn/-mm-/2c35efd35543717726985b963b5dfbe3761ef0f1/c=0-225-2996-1918/local/-/media/Salem/2015/04/14/B9316751043Z.1_20150414142559_000_GINAFBAK7.1-0.jpg?width=1600&height=800&fit=crop&format=pjpg&auto=webp',
                  width: 150,
                  height: 150,
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'We offer a wide range of random albums.\nBrowse our collection now!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: const Text('Browse Albums'),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Do you want our newsletter?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your email',
                  ),
                ),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "Now we're gonna spam you!",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 5,
                      webBgColor: '#000000',
                      backgroundColor: Colors.black,
                      textColor: Colors.white,
                      fontSize: 20.0
                  );
                },
                child: const Text('Send'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}