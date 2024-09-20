import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final int id;

  const DetailScreen(this.id, {super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            // Background
            Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg-detail.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ),
                        child: const Center(
                          child: Icon(Icons.chevron_left, size: 25),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ),
                        child: const Center(
                          child: Icon(Icons.favorite_outline, size: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Content
            Container(
              transform: Matrix4.translationValues(0.0, -40, 0.0),
              padding: const EdgeInsets.only(top: 30, right: 24, left: 24),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Kuretakeso Hot',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 5),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(fontSize: 16),
                              children: [
                                TextSpan(
                                  text: '\$52',
                                  style: TextStyle(
                                    color: Color(0xff5843BE),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: ' / month',
                                  style: TextStyle(
                                    color: Color(0xff7A7E86),
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Color(0xffFF9376),
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Color(0xffFF9376),
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Color(0xffFF9376),
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Color(0xffFF9376),
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Color(0xff989BA1),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text('Main Facilitie', style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 10),
                  // Facilities
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Kitchen
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/icons/icon-kitchen.png',
                            width: 32,
                            height: 32,
                          ),
                          const SizedBox(height: 5),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '5',
                                  style: TextStyle(
                                    color: Color(0xff5843BE),
                                  ),
                                ),
                                TextSpan(
                                  text: ' Kitchens',
                                  style: TextStyle(
                                    color: Color(0xff7A7E86),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      // Bedroom
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/icons/icon-bedroom.png',
                            width: 32,
                            height: 32,
                          ),
                          const SizedBox(height: 5),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '5',
                                  style: TextStyle(
                                    color: Color(0xff5843BE),
                                  ),
                                ),
                                TextSpan(
                                  text: ' Bedrooms',
                                  style: TextStyle(
                                    color: Color(0xff7A7E86),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      // Lemari
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/icons/icon-cupboard.png',
                            width: 32,
                            height: 32,
                          ),
                          const SizedBox(height: 5),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '5',
                                  style: TextStyle(
                                    color: Color(0xff5843BE),
                                  ),
                                ),
                                TextSpan(
                                  text: ' Big Lemari',
                                  style: TextStyle(
                                    color: Color(0xff7A7E86),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  // Photos
                  const SizedBox(height: 20),
                  const Text('Photos', style: TextStyle(fontSize: 16)),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/city-1.png',
                            width: 100,
                            height: 100,
                          ),
                        ),
                        const SizedBox(width: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/city-1.png',
                            width: 100,
                            height: 100,
                          ),
                        ),
                        const SizedBox(width: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/city-1.png',
                            width: 100,
                            height: 100,
                          ),
                        ),
                        const SizedBox(width: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/city-1.png',
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text('Location', style: TextStyle(fontSize: 16)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Jln. Kappan Sukses no 20.\nPalembang',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(Icons.pin_drop, color: Colors.grey),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff5843BE),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      child: const Text(
                        'Explore Now',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
