import 'package:flutter/material.dart';
import 'package:flutter_uts/page1.dart';
import 'package:flutter_uts/detail.dart';


void main() {
  runApp(Nextpage());
}

class Nextpage extends StatelessWidget {
  Nextpage({Key? key}) : super(key: key);

  final List<String> menuItems = ['dalam pulau', 'luar pulau', 'luar negri'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 83, 83),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 83, 83),
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: ElevatedButton.icon(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (BuildContext context) => NewPage()),
            );
          },
          icon: const Icon(Icons.arrow_left_sharp),
          label: const Text(''),
          style: ElevatedButton.styleFrom(
            elevation: 0,
          ),
        ),
        title: const Text('Biaya '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Daftar Menu berat',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              itemCount: menuItems.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(menuItems[index]),
                      onTap: () {
                        // Aksi ketika salah satu menu diklik
                      },
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('ringan -10kg'),
                        Text('berat +10kg'),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}