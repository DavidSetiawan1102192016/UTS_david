import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_uts/detail.dart';


import 'main.dart';

class NewPage extends StatelessWidget {
  NewPage({Key? key}) : super(key: key);

  final List<String> menuItems = ['JNT', 'JNE', 'NINJA', 'SiCepat'];

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
              MaterialPageRoute(builder: (BuildContext context) => HelloPage()),
            );
          },
          icon: const Icon(Icons.arrow_left_sharp),
          label: const Text(''),
          style: ElevatedButton.styleFrom(
            elevation: 0,
          ),
        ),
        title: const Text('Biaya pengiriman'),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (contex) => Nextpage())
                          );
                      },
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('ringan 9k'),
                        Text('berat 15k'),
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


