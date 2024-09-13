import 'dart:ffi';

import 'package:animation_drawer_ui/models/caregories.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MealPage extends StatefulWidget {
  const MealPage({super.key});

  @override
  State<MealPage> createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  final List<Categories> categories = Categories.categoriesList;

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
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
              searchFoodWidget(context),
              moreWidget(context, 'Explore Categories'),
              categoriesListViewWidget(context),
              moreWidget(context, 'Most Popular'),
              mostPopulartListView(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget mostPopulartListView(BuildContext context) {
    return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 15),
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0)),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 120,
                      color: Colors.amberAccent,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "5 Papper",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "Mixed Pizza",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("\$156",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              Icon(
                                Icons.favorite,
                                color: Colors.pink,
                                size: 18,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }));
  }

  Widget categoriesListViewWidget(BuildContext context) {
    return SizedBox(
      height: 130,
      width: double.infinity,
      // color: Colors.yellow,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return Container(
              margin: const EdgeInsets.only(right: 15),
              padding: const EdgeInsets.all(8),
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.amberAccent[200],
                  borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(90), bottom: Radius.circular(90))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(category.image),
                    radius: 30,
                  ),
                  Text(
                    category.text,
                    style: const TextStyle(fontSize: 15),
                  )
                ],
              ),
            );
          }),
    );
  }

  Widget moreWidget(BuildContext context, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        InkWell(
          onTap: () {},
          child: const Icon(Icons.more_horiz, color: Colors.black),
        )
      ],
    );
  }

  Widget searchFoodWidget(BuildContext cotext) {
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
          child: const TextField(
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
