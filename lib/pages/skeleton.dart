import 'package:flutter/material.dart';
import 'package:flutter_ui_9/components/categories.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class Skeleton extends StatelessWidget {
  Skeleton({super.key, required this.shownCategory, required this.controller});
  final PageController controller;
  List<Categories> shownCategory;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          PageView.builder(
            itemCount: shownCategory.length,
            scrollDirection: Axis.horizontal,
            controller: controller,
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      shownCategory[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 80),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black87,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              shownCategory[index].category,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black87,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                shownCategory[index].title,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          shownCategory[index].subtitle,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(127, 158, 158, 158),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: shownCategory.length,
                      effect: const ExpandingDotsEffect(
                          activeDotColor: Colors.white,
                          dotHeight: 4,
                          dotWidth: 4),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Reserve ↗")),
              )
            ],
          ),
        ],
      ),
    );
  }
}
