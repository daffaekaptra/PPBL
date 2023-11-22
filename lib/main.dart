import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum Navigasi',
      home: HalamanBeranda(),
    );
  }
}

class HalamanBeranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Praktikum Navigasi'),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Image.asset(
                'assets/Logo_Telkom_University.png',
                width: 80,
                height: 50,
              ),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
            ),
            ListTile(
              leading: Icon(Icons.library_books),
              title: Text('Lihat Koleksi'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HalamanJelajah()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.man_3),
              title: Text('Akun'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HalamanAkun()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Ini adalah tampilan Halaman Beranda'),
      ),
    );
  }
}

class HalamanJelajah extends StatefulWidget {
  @override
  _HalamanJelajahState createState() => _HalamanJelajahState();
}

class _HalamanJelajahState extends State<HalamanJelajah> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = [
    Text('Formal Page'),
    HalamanKasual(),
    HalamanVintage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Koleksi'),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Formal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.kitchen),
            label: 'Kasual',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard),
            label: 'Vintage',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HalamanKasual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Kasual'),
      ),
      body: Center(
        child: Text('Ini adalah tampilan Halaman Kasual'),
      ),
    );
  }
}

class HalamanVintage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Vintage'),
      ),
      body: Center(
        child: Text('Ini adalah tampilan Halaman Vintage'),
      ),
    );
  }
}

class HalamanAkun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Akun'),
      ),
      body: Center(
        child: Text('Ini adalah tampilan Halaman Akun'),
      ),
    );
  }
}
