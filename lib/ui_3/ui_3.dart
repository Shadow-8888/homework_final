import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modul4_jabborov/ui_3/detail_page.dart';
import 'package:modul4_jabborov/ui_3/widgets/category_title.dart';
import 'package:modul4_jabborov/ui_3/widgets/food_card.dart';

class Ui3 extends StatelessWidget {
  const Ui3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("UI 3"))),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 50),
              child: Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset("icons/ui_3_menu.svg", height: 11),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Simple way to find \nTasty food",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                ),
              ),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryTitle(title: "All", active: true),
                  CategoryTitle(title: "Italian"),
                  CategoryTitle(title: "Asian"),
                  CategoryTitle(title: "Chinese"),
                  CategoryTitle(title: "Burgers"),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0xFFDDDDDD)),
              ),
              child: SvgPicture.asset("icons/ui_3_search.svg"),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FoodCard(
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const DetailPage();
                        }),
                      );
                    },
                    title: "Vegan salad bowl",
                    image: "assets/images/image_1.png",
                    price: 20,
                    calories: "420Kcal",
                    description:
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                  ),
                  FoodCard(
                    press: () {},
                    title: "Vegan salad bowl",
                    image: "assets/images/image_2.png",
                    price: 20,
                    calories: "420Kcal",
                    description:
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
