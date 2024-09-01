import 'package:flutter/material.dart';
import 'package:test_app/components/city_card.dart';
import 'package:test_app/components/guidance_card.dart';
import 'package:test_app/components/recommended_space_card.dart';
import 'package:test_app/models/city_model.dart';
import 'package:test_app/models/guidance_model.dart';
import 'package:test_app/models/recomened_space_model.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore Now',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Mencari kosan yang cozy',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 20),
                  CityCard(
                    CityModel(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'assets/images/city-1.png',
                      isFavorite: false,
                    ),
                  ),
                  const SizedBox(width: 20),
                  CityCard(
                    CityModel(
                      id: 2,
                      name: 'Bandung',
                      imageUrl: 'assets/images/city-1.png',
                      isFavorite: true,
                    ),
                  ),
                  const SizedBox(width: 20),
                  CityCard(
                    CityModel(
                      id: 2,
                      name: 'Surabaya',
                      imageUrl: 'assets/images/city-1.png',
                      isFavorite: false,
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Recommended Space',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 15),
                  RecommendedSpaceCard(
                    RecomenedSpaceModel(
                      id: 1,
                      address: 'Bandung, Germany',
                      rate: 4,
                      name: 'Kuretakeso Hott',
                      imageUrl: 'assets/images/city-1.png',
                      price: 52,
                    ),
                  ),
                  const SizedBox(height: 15),
                  RecommendedSpaceCard(
                    RecomenedSpaceModel(
                      id: 1,
                      name: 'Roemah Nenek',
                      rate: 5,
                      price: 11,
                      address: 'Seattle, Bogor',
                      imageUrl: 'assets/images/city-1.png',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tips & Guidance',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 15),
                  GuidanceCard(
                    GuidanceModel(
                      id: 1,
                      title: 'City Guidelines',
                      imageUrl: 'assets/icons/icon-1.png',
                      createdAt: '20 April 2024',
                    ),
                  ),
                  const SizedBox(height: 15),
                  GuidanceCard(
                    GuidanceModel(
                      id: 2,
                      title: 'Jakarta Fairship',
                      imageUrl: 'assets/icons/icon-1.png',
                      createdAt: '11 Mei 2024',
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
