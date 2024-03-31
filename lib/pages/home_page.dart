import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/extensions/extensions.dart';
import 'package:my_portfolio/helpers/helpers.dart';
import 'package:my_portfolio/layouts/layouts.dart';
import 'package:my_portfolio/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final isMobileSize = MediaQuery.of(context).isMobileSize;

    return Scaffold(
      key: scaffoldKey,
      endDrawer: const MyDrawer(),
      body: Column(
        children: [
          NavBar(
            leading: [
              if (isMobileSize) ...[
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.code_outlined),
                ),
              ] else ...[
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.code_outlined),
                  label: const Text("Matias Ramirez"),
                )
              ]
            ],
            title: isMobileSize
                ? [const Text("Matias Ramirez")]
                : navItems
                    .map(
                      (e) => TextButton.icon(
                        onPressed: () {},
                        icon: e.icon,
                        label: Text(e.label),
                      ),
                    )
                    .toList(),
            trailing: [
              if (isMobileSize) ...[
                IconButton(
                  icon: const Icon(Icons.menu_outlined),
                  onPressed: () => scaffoldKey.currentState?.openEndDrawer(),
                ),
              ] else ...[
                IconButton(
                  icon: const Icon(Icons.search_outlined),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.nightlight_outlined),
                  onPressed: () {},
                ),
              ]
            ],
            height: 45,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Expanded(
              child: BodyLayout(
                childrenForMobile: [
                  SizedBox(
                    height: 200,
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return Image.network(
                          "https://via.placeholder.com/350x150",
                          fit: BoxFit.fill,
                        );
                      },
                      itemCount: 3,
                      control: const SwiperControl(),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const NameBio(
                      name: "Matias Ramirez",
                      bio:
                          "I am Matías Sebastián Ramírez Brizuela, an emerging software engineer with three years of experience. Specializing in Flutter and Dart for mobile apps, I thrive on problem-solving and collaborative documentation, poised for greater success.",
                    ),
                  ),
                ],
                childrenForDesktop: [
                  const Expanded(
                    flex: 2,
                    child: NameBio(
                      name: "Matias Ramirez",
                      bio:
                          "I am Matías Sebastián Ramírez Brizuela, an emerging software engineer with three years of experience. Specializing in Flutter and Dart for mobile apps, I thrive on problem-solving and collaborative documentation, poised for greater success.",
                    ),
                  ),
                  Expanded(
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return Image.network(
                          "https://via.placeholder.com/350x150",
                          fit: BoxFit.fill,
                        );
                      },
                      itemCount: 3,
                      control: const SwiperControl(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
