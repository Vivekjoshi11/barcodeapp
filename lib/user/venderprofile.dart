import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Venderprofile extends StatefulWidget {
  const Venderprofile({super.key});

  @override
  State<Venderprofile> createState() => _VenderprofileState();
}

class _VenderprofileState extends State<Venderprofile> {
  final List<Map<String, String>> shirts = [
    {
      'image': 'lib/assets/images/shirt1.jpeg', // Replace with your asset image path
      'name': 'Casual Shirt',
      'rating': '★★★★★ (11)',
      'price': '₹899',
      'originalPrice': '₹1599',
    },
    {
      'image': 'lib/assets/images/shirt1.jpeg', // Replace with your asset image path
      'name': 'Casual Shirt',
      'rating': '★★★★★ (11)',
      'price': '₹899',
      'originalPrice': '₹1599',
    },
    {
      'image': 'lib/assets/images/shirt1.jpeg', // Replace with your asset image path
      'name': 'Casual Shirt',
      'rating': '★★★★★ (11)',
      'price': '₹899',
      'originalPrice': '₹1599',
    },
  ];
  @override
  Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: SingleChildScrollView(
  //       child: Container(
  //         padding: const EdgeInsets.all(10),
  //         decoration: BoxDecoration(
  //           color: const Color.fromARGB(255, 253, 245, 247),
  //           borderRadius: BorderRadius.circular(20.0),
  //         ),
  //         child:  const Column(
  //           children: [
  //              SizedBox(height: 20),
  //              Row(
  //               mainAxisAlignment: MainAxisAlignment.start,
  //               children: [
  //                 Image(
  //                   image: AssetImage(
  //                     'lib/assets/images/xchoot.png',
  //                   ),
  //                   width: 40,
  //                 ),
  //                 Column(
  //                   children: [
  //                     Text("Store No: XUOOT03"),
  //                     Text('Xuoot Demo'),
  //                     Text('Darakh 10900 Nepal')
  //                   ],
  //                 ),
  //               ],
  //             ),
  //              SizedBox(
  //               height: 20,
  //             ),
  //             Row(
  //               // mainAxisAlignment: MainAxisAlignment.start,
  //               children: [
  //                  Text(
  //                   'All Products',
  //                   style: TextStyle(
  //                     fontSize: 12,
  //                     fontWeight: FontWeight.bold,
  //                   ),
  //                 ),
  //                 // TextField(
  //                 //   decoration: InputDecoration(
  //                 //     hintText: 'hi',
  //                 //     suffixIcon: Icon(Icons.abc),
  //                 //   ),
  //                 // )
                  
  //               ],
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
   return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Company information row
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'lib/assets/images/xchoot.png', // Replace with your asset image path
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(
                      "Store No: XUOOT03",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Xuoot Demo',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Darakh 10900 Nepal',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            
            const SizedBox(height: 25,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const Row(
                  children: [
                    Text(
                      'All Product',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '7',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                    ),
                  ),
                ),
                const Icon(Icons.qr_code_scanner, size: 30),
              ],
            ),
            const SizedBox(height: 20,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              
                Text(
                  'All',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Men',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  'Women',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Baby Cloth',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],),
              const SizedBox(height: 10,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              
                Text(
                  'Casual Top',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'shirts',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  'pants',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'suits',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],),
            
            const SizedBox(height: 20),
            // List of shirts
            ...shirts.map((shirt) {
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: ListTile(
                  leading: Image.asset(shirt['image']!, fit: BoxFit.cover),
                  title: Text(shirt['name']!),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(shirt['rating']!),
                      Row(
                        children: [
                          Text(
                            shirt['price']!,
                            style: const TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            shirt['originalPrice']!,
                            style: const TextStyle(
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
