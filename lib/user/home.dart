import 'package:barcodeapp/user/cart.dart';
import 'package:barcodeapp/user/productbarcodescan.dart';
import 'package:barcodeapp/user/scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  void _scanner() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      
       Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ScanScreen()),
      );
    });
  }
  String location = "london";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 245, 247),
      body: SingleChildScrollView(
        child: Container(
          // width: 350.0, // Adjust width as needed
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 253, 245, 247),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              // Top section with Text and Subtext
              const SizedBox(
                height: 40,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Row(),
                  Icon(
                    Icons.location_on,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 40,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Text(
                      //   'Location',
                      //   style: TextStyle(fontSize: 20.0),
                      // ),
                      Text(
                        'London, United Kingdom',
                        style: TextStyle(fontSize: 16.0, color: Colors.blue),
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 100,
                  ),
                  Icon(
                    Icons.notifications,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 25,
                  ),
                ],
              ),

              const SizedBox(height: 10.0),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // Text('Which place are you searching for?',),
                  children: [Text('Which place are you Searching for?')]),
              const SizedBox(
                height: 20,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // Text('Which place are you searching for?',),
                  children: [
                    // Text('Which place are you Searching for?')
                    InkWell(
                      child: const Text(
                        'New Location',
                        style: TextStyle(color: Colors.blue),
                      ),
                      onTap: () => print('Clicked!'),
                    ),
                    InkWell(
                      child: const Text(
                        'Saved Locations',
                        style: TextStyle(color: Colors.blue),
                      ),
                      onTap: () => print('Clicked!'),
                    )
                  ]),
              const SizedBox(
                height: 25,
              ),
              const Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Select State',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Select State',
                  // prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.arrow_drop_down,
                  size: 40,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,  // Customize selected item color
        unselectedItemColor: Colors.grey, // Customize unselected item color
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Bag',
          ),  
        ],
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: _scanner,
        tooltip: 'Increment',
        child: const Icon(Icons.qr_code_scanner),
      ),
    );
  }
}
