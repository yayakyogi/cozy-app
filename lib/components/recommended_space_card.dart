import 'package:flutter/material.dart';
import 'package:test_app/models/recomened_space_model.dart';
import 'package:test_app/pages/detailscreen.dart';

class RecommendedSpaceCard extends StatelessWidget {
  final RecomenedSpaceModel recomendedSpace;

  const RecommendedSpaceCard(this.recomendedSpace, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailScreen(recomendedSpace.id),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 130,
              height: 110,
              color: Colors.amber,
              child: Stack(
                children: [
                  Image.asset(
                    recomendedSpace.imageUrl,
                    width: 130,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Color(0xff5843BE),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/star.png',
                            width: 22,
                            height: 22,
                          ),
                          Text(
                            '${recomendedSpace.rate}/5',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recomendedSpace.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      '\$${recomendedSpace.price} ',
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xff5843BE),
                      ),
                    ),
                    const Text(
                      '/ month',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  recomendedSpace.address,
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
