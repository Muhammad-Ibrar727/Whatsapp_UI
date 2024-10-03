import 'package:flutter/material.dart';
import 'package:whatsapp/home_screen.dart';
import 'package:whatsapp/updates_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    //screen1
    const HomeScreen(),
    //screen2
    const UpdatesScreen(),
    //screen3
    Container(),
    //screen4
    Container(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget buildNavBarItem(IconData filledIcon, IconData outlinedIcon, String text, int index){
    return GestureDetector(
      onTap: ()=> _onItemTapped(index),
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 25),
              decoration: BoxDecoration(
                color: _selectedIndex == index ? const Color(0xffD8FDD2) : Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Icon(
                _selectedIndex == index ? filledIcon : outlinedIcon,
                size: 26,
                color: _selectedIndex == index ? const Color(0xff125E3A) : Colors.black,
              ),
            ),
        
            const SizedBox(height: 8,),
        
            Text(text,
            style : TextStyle( fontSize : 15,
            fontWeight : _selectedIndex == index ? FontWeight.w700 : FontWeight.w400,
            )
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.black, width: 0.4)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavBarItem(Icons.message, Icons.message_outlined, 'Chat', 0),
            buildNavBarItem(Icons.update, Icons.update_outlined, 'Updates', 1),
            buildNavBarItem(Icons.people, Icons.people_outlined, 'Communities', 2),
            buildNavBarItem(Icons.call, Icons.call_outlined, 'Calls', 3)
          ],
        ),
      ),
    );
  }
}