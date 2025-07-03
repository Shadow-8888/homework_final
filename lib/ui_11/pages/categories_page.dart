import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modul4_jabborov/ui_11/pages/vegetables_page.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
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
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(246, 245, 245, 1),
        surfaceTintColor: Colors.transparent,
        toolbarHeight: 150,
        leading: Padding(
          padding: const EdgeInsets.only(top: 62),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
      ),
      body: Container(
        color: const Color.fromRGBO(246, 245, 245, 1),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Categories",
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
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  mainAxisExtent: 211,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Vegetables();
                          },
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 1, color: Colors.grey),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("images/vegetable.png", width: 250, height: 140, fit: BoxFit.cover,),
                            const Padding(
                              padding: EdgeInsets.only(left: 16, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Vegetables",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Color.fromRGBO(45, 12, 87, 1),
                                    ),
                                  ),
                                  Text("(43)"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
