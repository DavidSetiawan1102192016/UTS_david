import 'package:flutter/material.dart';
import 'package:flutter_uts/page1.dart';
import 'package:flutter_uts/detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'UTS David';
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title), backgroundColor: Color.fromARGB(255,245,83,83),),
        backgroundColor: Color.fromARGB(255, 245, 83, 83),
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isLoginError = false;

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username == "david" && password == "uts") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (BuildContext context) => HelloPage()),
      );
    } else {
      setState(() {
        _isLoginError = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Welcome In Here',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Login User',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: _passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          if (_isLoginError)
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: Text(
                'username atau password salah, ulangi lagi',
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
          Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}

class HelloPage extends StatelessWidget {
  final List<String> menuItems = ['Jalur Darat', 'Jalur Udara', 'Jalur Laut'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Utama'), backgroundColor: Color.fromARGB(255, 245, 83, 83),),
      backgroundColor: Color.fromARGB(255, 245, 83, 83),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pilihan jalur Pengiriman',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              itemCount: menuItems.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(menuItems[index]),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (contex) => NewPage())
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (BuildContext context) => NewPage()),
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
