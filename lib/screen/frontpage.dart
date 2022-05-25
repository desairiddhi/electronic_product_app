import 'package:flutter/material.dart';

import 'detailspage.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  List<String> nameList = [
    'Phones',
    'Gifts',
    'Camera',
    'Smartwatch',
  ];
  List iconList=[
    Icons.phone,
    Icons.wallet_giftcard,
    Icons.camera_alt,
    Icons.watch,
  ];

  List<String> text = ['Make Your Moments Fly', 'Create Magnetic Moments'];
  List<String> photo = ['assets/imageone.png', 'assets/imagetwo.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
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
            Expanded(
              child: ListView.builder(
                itemCount: photo.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DetailsPage()));
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 300,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                image: DecorationImage(
                                    image: AssetImage(photo[index]),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 10, right: 100),
                            child: Text(
                              text[index],
                              style: const TextStyle(
                                  fontFamily: 'Poppins_Regular',
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF262626)),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
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
            
        child: Row
        (
        children: [
        const  SizedBox(width: 5),
          Icon(icon!),
        const  SizedBox(width: 10),
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
}
