import 'package:flutter/material.dart';

class MySecondPage extends StatefulWidget {
  const MySecondPage({super.key, required this.title});

  final String title;

  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {

  @override
  Widget build(BuildContext context) {

    final List<Map<String, String>> albums = [
      {'title': 'Go to Heaven', 'artist': 'Grateful Dead'},
      {'title': 'Carolina Confessions', 'artist': 'The Marcus King Band'},
      {'title': 'In Memory Of Loss', 'artist': 'Nathaniel Rateliff'},
      {'title': 'Led Zeppelin', 'artist': 'Led Zeppelin'},
      {'title': 'Batman', 'artist': 'Prince'},
      {'title': 'Born And Raised', 'artist': 'John Mayer'}
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Albums',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: albums.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(albums[index]['title']!),
            subtitle: Text(albums[index]['artist']!),
            leading: const Icon(Icons.album),
          );
        },
      ),

    );
  }
}