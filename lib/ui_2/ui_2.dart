import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modul4_jabborov/ui_2/pages/info_page.dart';
import 'package:modul4_jabborov/ui_2/widgets/counter.dart';
import 'package:modul4_jabborov/ui_2/widgets/my_header.dart';

class Ui2 extends StatefulWidget {
  const Ui2({super.key});

  @override
  State<Ui2> createState() => _Ui2State();
}

class _Ui2State extends State<Ui2> {
  String selectedItem = "Indonesia";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("UI 2"))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyHeader(
              image: "icons/Drcorona.svg",
              textTop: "All you need",
              textBottom: "is stay at home",
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: const Color(0xFFE5E5E5)),
              ),
              child: Row(
                children: [
                  SvgPicture.asset("icons/maps-and-flags.svg"),
                  const SizedBox(width: 28),
                  Expanded(
                    child: DropdownButton(
                      isExpanded: true,
                      underline: const SizedBox(),
                      icon: SvgPicture.asset("icons/dropdown.svg"),
                      value: selectedItem,
                      items:
                          [
                            "Indonesia",
                            "Bangladesh",
                            "United States",
                          ].map<DropdownMenuItem<String>>((value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedItem = value ?? "";
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Case Update\n\n",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF303030),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: "Newest update March 28",
                              style: TextStyle(color: Color(0xFF959595)),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InfoPage(),
                            ),
                          );
                        },
                        child: const Text(
                          "See details",
                          style: TextStyle(
                            color: Color(0xFF3382CC),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 30,
                          color: const Color(0xFFB7B7B7).withAlpha(41),
                        ),
                      ],
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Counter(
                          color: Color(0xFFFF8748),
                          number: 1046,
                          title: "Infected",
                        ),
                        Counter(
                          color: Color(0xFFFF4848),
                          number: 87,
                          title: "Deaths",
                        ),
                        Counter(
                          color: Color(0xFF36C12C),
                          number: 46,
                          title: "Recovered",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Spread of Virus",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF303030),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InfoPage(),
                            ),
                          );
                        },
                        child: const Text(
                          "See details",
                          style: TextStyle(
                            color: Color(0xFF3382CC),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 178,
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 30,
                          color: const Color(0xFFB7B7B7).withAlpha(41),
                        ),
                      ],
                    ),
                    child: Image.asset("images/map.png"),
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
