import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff2BC193),
        unselectedItemColor: Color(0xff3E363F),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Gmart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.diversity_3), label: 'Community'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book), label: 'library'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
        ],
      ),
    );
  }
}
