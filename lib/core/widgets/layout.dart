import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter_ticket_booking/features/home/ui/home_page.dart';
import 'package:flutter_ticket_booking/features/profile/ui/profile_page.dart';
import 'package:flutter_ticket_booking/features/search/ui/search_page.dart';
import 'package:flutter_ticket_booking/features/tickets/ui/tickets_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = [
    const HomePage(),
    const SearchPage(),
    const TicketsPage(),
    const ProfilePage(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        onTap: _onItemTap,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(FluentIcons.home_20_regular),
            activeIcon: Icon(FluentIcons.home_20_filled),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(FluentIcons.search_20_regular),
            activeIcon: Icon(FluentIcons.search_20_filled),
          ),
          BottomNavigationBarItem(
            label: "Tickets",
            icon: Icon(FluentIcons.ticket_horizontal_20_regular),
            activeIcon: Icon(FluentIcons.ticket_horizontal_20_filled),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(FluentIcons.person_20_regular),
            activeIcon: Icon(FluentIcons.person_20_filled),
          )
        ],
      ),
    );
  }
}
