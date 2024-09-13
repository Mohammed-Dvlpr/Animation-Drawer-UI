import 'dart:async';

import 'package:animation_drawer_ui/models/menu_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class MenuOptions {
  static const home = MenuOption(Icons.home, 'Home');
  static const cart = MenuOption(Icons.shopping_cart, 'Cart');
  static const order = MenuOption(Icons.today, 'Order');
  static const promo = MenuOption(Icons.description, 'promo');
  static const wallet = MenuOption(Icons.account_balance_wallet, 'Wallet');
  static const favorit = MenuOption(Icons.star, 'Favorit');
  static const faq = MenuOption(Icons.help, 'FAQs');
  static const suppert = MenuOption(Icons.phone, 'Support');
  static const setting = MenuOption(Icons.settings, 'Setting');
  static const logout = MenuOption(Icons.logout, 'Logout');

  static const allOptions = [
    home,
    cart,
    order,
    promo,
    wallet,
    favorit,
    faq,
    suppert,
    setting,
    logout
  ];
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[400],
      appBar: AppBar(
        backgroundColor: Colors.amberAccent[400],
        leading: IconButton(
          onPressed: () {
            ZoomDrawer.of(context)!.close();
          },
          icon: const Icon(Icons.close),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        " Mohammed,",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
              ...MenuOptions.allOptions.map(optionsList).toList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget optionsList(MenuOption item) {
    return ListTile(
      leading: Icon(
        item.icon,
        color: Colors.black,
      ),
      title: Text(item.title),
      minLeadingWidth: 10,
    );
  }
}
