import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'cart_screen.dart';
import 'home_screen.dart';
import 'login_register.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedindex=0;
static List<Widget> widgetoptions=<Widget>[
  HomeScreen(),
  CartScreen(),
  Container(),
  AuthScreen(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: widgetoptions.elementAt(selectedindex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow:[
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1)
            )
          ]
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.redAccent,
              color: Colors.black,

              tabs: [
                GButton(icon: LineIcons.home, text: 'Home'),
                GButton(icon: LineIcons.shoppingBag, text: 'Cart',),
                GButton(icon: LineIcons.heart, text: 'Wishlist',),
                GButton(icon: LineIcons.user, text: 'Account',),
              ],
              selectedIndex: selectedindex,
              onTabChange: (index){
                setState(() {
                  selectedindex=index;
                  
                });
              },
              ),

        ),
        
        ),
      ),
   
    );
  }
}
