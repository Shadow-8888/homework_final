import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul4_jabborov/ui_9/details_screen/components/item_image.dart';
import 'package:modul4_jabborov/ui_9/details_screen/components/item_info.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFC61F),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFC61F),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset("icons/share.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("icons/more.svg"),
            onPressed: () {},
          ),
        ],
      ),
      body: const Column(
        children: [
          ItemImage(imgSrc: "images/burger.png"),
          Expanded(child: ItemInfo()),
        ],
      ),
    );
  }
}
