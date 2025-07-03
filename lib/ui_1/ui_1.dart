import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modul4_jabborov/ui_1/pages/detail_page.dart';

class Ui1 extends StatelessWidget {
  const Ui1({super.key});

  @override
  Widget build(BuildContext context) {
    List<CourseModel> courses = [
      CourseModel(
        name: "Marketing",
        count: "17 courses",
        bgImage: "assets/images/marketing.png",
      ),
      CourseModel(
        name: "UX Design",
        count: "25",
        bgImage: "assets/images/ux_design.png",
      ),
      CourseModel(
        name: "Photography",
        count: "13",
        bgImage: "assets/images/photography.png",
      ),
      CourseModel(
        name: "Business",
        count: "20",
        bgImage: "assets/images/business.png",
      ),
      CourseModel(
        name: "Music",
        count: "30",
        bgImage: "assets/images/music.png",
      ),
    ];
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("UI 1"))),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/icons/menu.svg"),
                  Image.asset("assets/images/user.png"),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                "Hey Alex,",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Nunito",
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Find a course you want to learn",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 22,
                  fontFamily: "Nunito",
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: 50,
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/search.svg"),
                    const SizedBox(width: 10),
                    Text(
                      "Seach for anything",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontFamily: "Nunito",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Nunito",
                    ),
                  ),
                  TextButton(onPressed: () {}, child: const Text("See all")),
                ],
              ),
              const SizedBox(height: 20),
              StaggeredGrid.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  for (int i = 0; i < courses.length; i++)
                    _template(i, courses, context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _template(int index, List<CourseModel> courses, context) {
    final currentCourse = courses[index];
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DetailPage()),
        );
      },
      child: Container(
        width: 100,
        height: index.isOdd ? 250 : 200,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(currentCourse.bgImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              currentCourse.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              currentCourse.count,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseModel {
  final String name;
  final String count;
  final String bgImage;

  CourseModel({required this.name, required this.count, required this.bgImage});
}
