import 'package:flutter/material.dart';

import 'productpage.dart';

//import 'productpage.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  List<String> nameList = [
    'Computer',
    'Headset',
    'Featured',
    'Blender',
  ];
  List iconList = [
    Icons.computer,
    Icons.headset,
    Icons.monitor_heart_outlined,
    Icons.blender,
  ];

  List image = [
    'assets/i_one.png',
    'assets/i_two.png',
    'assets/i_three.png',
    'assets/i_four.png',
  ];
  List<String> imageList = [
    'assets/i_one.png',
    'assets/i_two.png',
    'assets/i_three.png',
    'assets/i_four.png',
    'assets/i_four.png',
    'assets/i_four.png',
    'assets/i_four.png',
    'assets/i_four.png',
    'assets/i_four.png',
  ];
  List<String> name = [
    'DJI Mavic 2 Pro Drone',
    'DJI Pocket 2',
    'Sony Black 5 Camera',
    'UBL small speaker',
    'UBL small speaker',
    'UBL small speaker',
    'UBL small speaker',
    'UBL small speaker',
    'Perfect Sound Quality',
  ];

  List<String> text = [
    'See the Bigger Picture',
    'Magic At Hand',
    'Black Technology',
    'Perfect Sound Quality',
    'Perfect Sound Quality',
    'Perfect Sound Quality',
    'Perfect Sound Quality',
    'Perfect Sound Quality',
    'Perfect Sound Quality',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 12, left: 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              //  crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(Icons.search),
                SizedBox(width: 20),
                Icon(Icons.shopping_bag)
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(right: 80),
              child: Text(
                'Discover the product you like',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: iconList.length,
                itemBuilder: (context, index) {
                  return _productItem(
                    name: nameList[index],
                    icon: iconList[index],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  // ignore: prefer_const_constructors
                  return SizedBox(width: 10);
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, right: 250),
              child: Text('689 results',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
            ),
            SizedBox(
              height: 500,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  // SliverGridDelegateWithMaxCrossAxisExtent(
                  //   maxCrossAxisExtent: 200,
                  //   childAspectRatio: 3 / 2,
                  //   crossAxisSpacing: 20,
                  //   mainAxisSpacing: 120,
                  // ),
                  itemCount: text.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProductPage()));
                      },
                      child: listItem(
                        image: imageList[index].toString(),
                        name: name[index].toString(),
                        text: text[index].toString(),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _productItem({String? name, icon}) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 40,
      width: 120,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xFFF5F6FA)),
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFF5F6FA)),
      child: Row(
        children: [
          Icon(icon!),
          const SizedBox(width: 10),
          Text(
            name!,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFF000000)),
          ),
        ],
      ),
    ),
  );
}

Widget listItem({
  String? image,
  String? name,
  String? text,
}) {
  return Card(
    child: Column(children: [
      SizedBox(
        height: 130,
        width: double.infinity,
        child: Image(
          image: AssetImage(image!),
        ),
      ),
      Text(
        name!,
        style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 3),
      Text(
        text!,
        style: const TextStyle(color: Color(0xFF7D8891)),
      )
    ]),
  );
}
