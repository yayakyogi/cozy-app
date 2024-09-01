import 'package:flutter/material.dart';
import 'package:test_app/models/city_model.dart';

class CityCard extends StatelessWidget {
  final CityModel city;

  const CityCard(this.city, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        width: 120,
        height: 150,
        color: const Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                city.isFavorite
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: Color(0xff5843BE),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/star.png',
                              width: 22,
                              height: 22,
                            ),
                          ),
                        ),
                      )
                    : const SizedBox()
              ],
            ),
            const SizedBox(height: 11),
            Text(
              city.name,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
