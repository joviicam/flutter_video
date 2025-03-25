import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nombre_de_tu_app/config/global_variables.dart';
import 'package:nombre_de_tu_app/demand/demand_screen.dart';
import 'package:nombre_de_tu_app/home/home_screen.dart';
import 'package:nombre_de_tu_app/menu/menu_screen.dart';
import 'package:nombre_de_tu_app/modules/tips/tips_screen.dart';
import 'package:nombre_de_tu_app/news/news_screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key, this.initialIndex = 0});
  final int initialIndex;

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetOptions = <Widget>[
      const HomeScreen(),
      const NewsScreen(),
      //ShoppingcartScreen(getPaymentMethod: widget.getPaymentMethod),
      const TipsScreen(),
      const DemandScreen(),
      const MenuScreen(),
    ];

    return Scaffold(
      body: widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.white),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/homeInactive.svg',
                width: 25,
                height: 25,
              ),
              label: 'Inicio',
              activeIcon: SvgPicture.asset(
                'assets/icons/home.svg',
                width: 25,
                height: 25,
                color: colors['red'] ?? Colors.red,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper, color: colors['gray']),
              label: 'Noticias',
              activeIcon: const Icon(Icons.newspaper, color: Colors.blue),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/tipsInactive.svg',
                width: 25,
                height: 25,
              ),
              label: 'Tips',
              activeIcon: SvgPicture.asset(
                'assets/icons/tips.svg',
                width: 25,
                height: 25,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/denunciaInactive.svg',
                width: 25,
                height: 25,
              ),
              label: 'Denuncia',
              activeIcon: SvgPicture.asset(
                'assets/icons/denuncia.svg',
                width: 25,
                height: 25,
                color: Colors.red,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu, color: colors['gray']),
              label: 'Menú',
              activeIcon: const Icon(Icons.menu, color: Colors.green),
            ),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
