import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul4_jabborov/ui_9/components/bottom_nav_bar.dart';
import 'package:modul4_jabborov/ui_9/components/search_box.dart';
import 'package:modul4_jabborov/ui_9/details_screen/details_screen.dart';

class Ui9 extends StatelessWidget {
  const Ui9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("icons/ui_9_menu.svg"),
          onPressed: () {},
        ),
        title: RichText(
          text: TextSpan(
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
            children: const [
              TextSpan(
                text: "Punk",
                style: TextStyle(color: Color(0xFFB5BFD0)),
              ),
              TextSpan(
                text: "Food",
                style: TextStyle(color: Color(0xFFFFC61F)),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset("icons/notification.svg"),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBox(onChanged: (value) {}),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CategoryItem(
                    title: "Combo Meal",
                    isActive: true,
                    press: () {},
                  ),
                  CategoryItem(title: "Chicken", press: () {}),
                  CategoryItem(title: "Beverages", press: () {}),
                  CategoryItem(title: "Snacks & Sides", press: () {}),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ItemCard(
                    svgSrc: "icons/burger_beer.svg",
                    title: "Burger & Beer",
                    shopName: "MacDonald's",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const DetailsScreen();
                          },
                        ),
                      );
                    },
                  ),
                  ItemCard(
                    svgSrc: "icons/chinese_noodles.svg",
                    title: "Chinese & Noodles",
                    shopName: "Wendys",
                    press: () {},
                  ),
                  ItemCard(
                    svgSrc: "icons/burger_beer.svg",
                    title: "Burger & Beer",
                    shopName: "MacDonald's",
                    press: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Offers & Discounts",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF50505D),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    height: 166,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/beyond-meat-mcdonalds.png"),
                      ),
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFFFF961F).withAlpha(179),
                            const Color(0xFFFFC61F).withAlpha(179),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: SvgPicture.asset("icons/macdonalds.svg"),
                            ),
                            Expanded(
                              child: RichText(
                                text: const TextSpan(
                                  style: TextStyle(color: Colors.white),
                                  children: [
                                    TextSpan(
                                      text: "Get Discount of \n",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    TextSpan(
                                      text: "30% \n",
                                      style: TextStyle(
                                        fontSize: 43,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          "at MacDonald's on your first order & Instant cashback",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final GestureTapCallback press;
  const CategoryItem({
    super.key,
    required this.title,
    this.isActive = false,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            Text(
              title,
              style:
                  isActive
                      ? const TextStyle(
                        color: Color(0xFF50505D),
                        fontWeight: FontWeight.bold,
                      )
                      : const TextStyle(fontSize: 12),
            ),
            if (isActive)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                height: 3,
                width: 22,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFC61F),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final String title, shopName, svgSrc;
  final VoidCallback press;
  const ItemCard({
    super.key,
    required this.title,
    required this.shopName,
    required this.svgSrc,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 20,
            color: const Color(0xFFB0CCE1).withAlpha(82),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFC61F).withAlpha(33),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    svgSrc,
                    width: size.width * 0.18,

                  ),
                ),
                Text(title),
                const SizedBox(height: 10),
                Text(shopName, style: const TextStyle(fontSize: 12)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
