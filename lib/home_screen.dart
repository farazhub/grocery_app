import 'package:flutter/material.dart';
import 'package:grocery_app/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Expanded(
                  child: Row(
                    children: [
                      Icon(
                        Icons.menu,
                        color: Kgreen,
                        size: 40,
                      ),
                      Spacer(),
                      Icon(
                        Icons.notifications_none,
                        color: Kgreen,
                        size: 40,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Kwhite,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.grey,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
                child: Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Kgreen,
                    ),
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Fruits and Vegetables up To 20% Off',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Kwhite,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Image(
                              image: AssetImage('images/vegetables.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    size: 10,
                    color: Kgreen,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.circle,
                    size: 10,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.circle,
                    size: 10,
                    color: Colors.grey,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Kgreen,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'View All',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Kgreen,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Kgreen,
                            borderRadius: BorderRadius.circular(35.5),
                          ),
                          width: 67,
                          height: 67,
                          child: Expanded(
                            child: Image(
                              image: AssetImage('images/home_categories_1.png'),
                            ),
                          ),
                        ),
                        Text(
                          'Fruits',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Kaqua,
                            borderRadius: BorderRadius.circular(35.5),
                            border: Border.all(color: Kgreen),
                          ),
                          width: 67,
                          height: 67,
                          child: Expanded(
                            child: Image(
                              image: AssetImage('images/home_categories_2.png'),
                            ),
                          ),
                        ),
                        Text(
                          'Vegetables',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Kaqua,
                            borderRadius: BorderRadius.circular(35.5),
                            border: Border.all(color: Kgreen),
                          ),
                          width: 67,
                          height: 67,
                          child: Expanded(
                            child: Image(
                              image: AssetImage('images/home_categories_3.png'),
                            ),
                          ),
                        ),
                        Text(
                          'Bakery',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Kaqua,
                            borderRadius: BorderRadius.circular(35.5),
                            border: Border.all(color: Kgreen),
                          ),
                          width: 67,
                          height: 67,
                          child: Expanded(
                            child: Image(
                              image: AssetImage('images/home_categories_4.png'),
                            ),
                          ),
                        ),
                        Text(
                          'Chocolates',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                child: Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Image(
                                image: AssetImage('images/home_apple.png'),
                              ),
                              Text(
                                'Red Apple',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "\$4.50  ",
                                    style: TextStyle(
                                      color: Kgreen,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    width: 2,
                                    height: 15,
                                    color: Colors.grey,
                                  ),
                                  Text('  500 g'),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Kgreen),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
                      SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Image(
                                  image: AssetImage('images/home_banana.png'),
                                ),
                                Text(
                                  'Banana',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "\$3.50  ",
                                      style: TextStyle(
                                        color: Kgreen,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      width: 2,
                                      height: 15,
                                      color: Colors.grey,
                                    ),
                                    Text('  1 dz'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Kgreen),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Icon(Icons.add),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              BottomAppBar(
                color: Kaqua,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home_outlined,
                      size: 45,
                      color: Color(0xFF878787),
                    ),
                    Icon(
                      Icons.apps_outlined,
                      size: 45,
                      color: Color(0xFF878787),
                    ),
                    Icon(
                      Icons.shopping_bag_outlined,
                      size: 45,
                      color: Color(0xFF878787),
                    ),
                    Icon(
                      Icons.person_2_outlined,
                      size: 45,
                      color: Color(0xFF878787),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
