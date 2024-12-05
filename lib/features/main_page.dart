import 'package:flutter/material.dart';
import 'package:wallet_app/features/check/check_page.dart';
import 'package:wallet_app/features/home/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int itemSelected = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const CheckPage(),
  ];

  void handleItemChange(int index) {
    setState(() {
      itemSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[itemSelected],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            bottomNavigationItem(icon: const Icon(Icons.home), label: 'Home'),
            bottomNavigationItem(
                icon: const Icon(Icons.wallet), label: 'Check'),
          ],
        ));
  }

  bottomNavigationItem({required Icon icon, required String label}) {
    return BottomNavigationBarItem(icon: icon, label: label);
  }
}
