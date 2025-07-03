import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modul4_jabborov/ui_11/pages/details_page.dart';

class Vegetables extends StatefulWidget {
  const Vegetables({super.key});

  @override
  State<Vegetables> createState() => _VegetablesState();
}

class _VegetablesState extends State<Vegetables> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color.fromRGBO(217, 208, 227, 1), 
              width: 1, 
            ),
          ),
        ),
        child: BottomNavigationBar(
          unselectedLabelStyle: const TextStyle(fontSize: 0),
          selectedLabelStyle: const TextStyle(fontSize: 0),
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "icons/grid.svg",
                colorFilter: ColorFilter.mode(
                  selectedIndex == 0
                      ? const Color.fromRGBO(114, 3, 255, 1)
                      : const Color.fromRGBO(149, 134, 168, 1),
                  BlendMode.srcIn,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "icons/shopping-cart.svg",
                colorFilter: ColorFilter.mode(
                  selectedIndex == 1
                      ? const Color.fromRGBO(114, 3, 255, 1)
                      : const Color.fromRGBO(149, 134, 168, 1),
                  BlendMode.srcIn,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "icons/user.svg",
                colorFilter: ColorFilter.mode(
                  selectedIndex == 2
                      ? const Color.fromRGBO(114, 3, 255, 1)
                      : const Color.fromRGBO(149, 134, 168, 1),
                  BlendMode.srcIn,
                ),
              ),
              label: "",
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset("images/Vegetables.png"),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 97),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios_new),
                ),
                const SizedBox(height: 22),
                const Text(
                  "Vegetables",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 34,
                    letterSpacing: 0.41,
                    color: Color.fromRGBO(45, 12, 87, 1),
                  ),
                ),
                const SizedBox(height: 27),
                Container(
                  height: 48,
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(217, 208, 227, 1),
                    ),
                    borderRadius: BorderRadius.circular(27),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset("icons/ui_11_search.svg"),
                      const SizedBox(width: 16),
                      const Text(
                        "Search",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          letterSpacing: -0.41,
                          color: Color.fromRGBO(149, 134, 168, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 42),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 40);
                    },
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailsPage(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(8),
                              child: Image.asset("images/Media.png", width: 177, height: 128, fit: BoxFit.cover,)
                            ),
                            const SizedBox(width: 21),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Boston Lettuce",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    letterSpacing: -0.41,
                                    color: Color.fromRGBO(45, 12, 87, 1),
                                  ),
                                ),
                                const SizedBox(height: 12),
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "1.10 ",
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700,
                                          color: Color.fromRGBO(45, 12, 87, 1),
                                        ),
                                      ),
                                      TextSpan(
                                        text: "€",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(
                                            149,
                                            134,
                                            168,
                                            1,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: " / piece",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(
                                            149,
                                            134,
                                            168,
                                            1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 29,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color.fromRGBO(
                                            217,
                                            208,
                                            227,
                                            1,
                                          ),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Text(""),
                                    ),
                                    const SizedBox(width: 20),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 29,
                                      ),
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(11, 206, 131, 1),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Text(""),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
