import 'package:flutter/material.dart';

class MealPage extends StatefulWidget {
  const MealPage({super.key});

  @override
  State<MealPage> createState() => _MealPageState();
}

// first design
class _MealPageState extends State<MealPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: const MenuDrawer(),
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Location',
                  style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                ),
                const Icon(
                  Icons.location_on,
                  size: 15,
                )
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            const Text(
              'Good Evening! Mohammed',
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              'Grab your',
              style: TextStyle(fontSize: 30),
            ),
            const Text(
              'Delicious meal!',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SearchFoodWidget(context),
          ],
        ),
      ),
    );
  }

  Widget SearchFoodWidget(BuildContext cotext) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 8),
          width: 260,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: TextField(
              decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            hintText: 'Resturants, Foods ....',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
          )),
        ),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(18)),
          child: const Icon(
            Icons.tune,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {}, icon: Icon(Icons.menu));
  }
}
