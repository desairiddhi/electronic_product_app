import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(right: 350),
                    child:
                        const Icon(Icons.arrow_back, color: Color(0xFF212121))),
                Container(
                  height: 390,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/d_image.png'),
                          fit: BoxFit.cover)),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 87),
                  child: Text(
                    'DJI Mavic 2 Pro Drone',
                    style: TextStyle(
                        fontSize: 26,
                        fontFamily: 'Poppins_Regular',
                        fontWeight: FontWeight.w800),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 150),
                  child: Text(
                    'Make Your Moments Fly',
                    style: TextStyle(fontSize: 20, color: Color(0xFf7D8891)),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text('⭐ ⭐ ⭐ ⭐'),
                    Text(
                      '  4.8',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '(789 reviews)',
                      style: TextStyle(
                          color: Color(0xFF7D8891),
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Our dream has always been to make a drone that exists where engineering, technology, and the needs of the aerial photographer converge. A drone that embodies all of DJI advanced, signature technologies, and is able to redefine what is possible for the world of aerial ',
                  style: TextStyle(fontSize: 20, color: Color(0xFF7D8891)),
                ),
                const SizedBox(height: 41),
              ],
            ),
          ),
          Container(height: 85.6,width: double.infinity,color: const Color(0xFF000000),
          child: Center(
            child: GestureDetector(
              onTap: (){},
              child:const  Text('Buy now for 599\$',style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 20),)),
          ),
          )
        ],
      ),
    );
  }
}
