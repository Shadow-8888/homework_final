import 'package:flutter/material.dart';
import 'package:modul4_jabborov/ui_9/details_screen/components/order_button.dart';
import 'package:modul4_jabborov/ui_9/details_screen/components/title_price_rating.dart';


class ItemInfo extends StatelessWidget {
  const ItemInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          shopeName(name: "MacDonalds"),
          const TitlePriceRating(
            name: "Cheese Burger",
            numOfReviews: 24,
            rating: 4,
            price: 15,
          ),
          const Text(
            "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.",
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(height: size.height * 0.1),
          OrderButton(
            size: size,
            press: () {},
          )
        ],
      ),
    );
  }

  Row shopeName({String? name}) {
    return Row(
      children: [
        const Icon(
          Icons.location_on,
          color: Color(0xFFB5BFD0),
        ),
        const SizedBox(width: 10),
        Text("$name"),
      ],
    );
  }
}