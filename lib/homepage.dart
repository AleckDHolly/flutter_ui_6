import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_ui_9/components/categories.dart';
import 'package:flutter_ui_9/pages/bottom_page.dart';

import 'pages/skeleton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _controller = PageController();
  MainCategories mainCategories = MainCategories.events;
  bool isSelected1 = true;
  bool isSelected2 = false;
  bool isSelected3 = false;

  List<Categories> showCorrectCategory() {
    if (mainCategories == MainCategories.events) {
      setState(() {
        isSelected1 = true;
        isSelected2 = false;
        isSelected3 = false;
      });
      return events;
    } else if (mainCategories == MainCategories.restaurants) {
      setState(() {
        isSelected1 = false;
        isSelected2 = true;
        isSelected3 = false;
      });
      return restaurants;
    } else {
      setState(() {
        isSelected1 = false;
        isSelected2 = false;
        isSelected3 = true;
      });
      return parties;
    }
  }

  void goToFirstPage() {
    _controller.jumpToPage(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Skeleton(
                controller: _controller,
                shownCategory: showCorrectCategory(),
              ),
              SafeArea(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: isSelected1
                                ? Colors.indigoAccent
                                : Colors.transparent,
                            border: Border.all(
                                color: isSelected1
                                    ? Colors.transparent
                                    : Colors.white,
                                width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                              ),
                              onPressed: () {
                                setState(() {
                                  mainCategories = MainCategories.events;
                                  goToFirstPage();
                                });
                              },
                              child: Text(
                                "Events",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(),
                          child: Container(
                            decoration: BoxDecoration(
                              color: isSelected2
                                  ? Colors.indigoAccent
                                  : Colors.transparent,
                              border: Border.all(
                                  color: isSelected2
                                      ? Colors.transparent
                                      : Colors.white,
                                  width: 2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                              ),
                              onPressed: () {
                                setState(() {
                                  mainCategories = MainCategories.restaurants;
                                  goToFirstPage();
                                });
                              },
                              child: Text(
                                "Bars/Restaurants",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(),
                          child: Container(
                            decoration: BoxDecoration(
                              color: isSelected3
                                  ? Colors.indigoAccent
                                  : Colors.transparent,
                              border: Border.all(
                                  color: isSelected3
                                      ? Colors.transparent
                                      : Colors.white,
                                  width: 2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                              ),
                              onPressed: () {
                                setState(() {
                                  mainCategories = MainCategories.parties;
                                  goToFirstPage();
                                });
                              },
                              child: Text(
                                "Parties",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SafeArea(
                bottom: true,
                top: false,
                child: Column(
                  children: [
                    BottomPage(),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              switch (mainCategories) {
                                MainCategories.events => Column(
                                    children: [
                                      ...events.map(
                                        (event) => Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: SizedBox(
                                              height: 350,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.9,
                                              child: Image.asset(
                                                event.image,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                MainCategories.restaurants => Column(
                                    children: [
                                      ...restaurants.map(
                                        (restaurant) => Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: SizedBox(
                                              height: 350,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.9,
                                              child: Image.asset(
                                                restaurant.image,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                MainCategories.parties => Column(
                                    children: [
                                      ...parties.map(
                                        (party) => Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: SizedBox(
                                              height: 350,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.9,
                                              child: Image.asset(
                                                party.image,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                              },
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
