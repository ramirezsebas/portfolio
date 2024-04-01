import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/layouts/layouts.dart';
import 'package:my_portfolio/layouts/page_layout.dart';
import 'package:my_portfolio/widgets/widgets.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PageLayout(
      body: BodyLayout(
        childrenForMobile: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const NameBio(
              name: "Matias Ramirez",
              bio:
                  "I am Matías Sebastián Ramírez Brizuela, an emerging software engineer with three years of experience. Specializing in Flutter and Dart for mobile apps, I thrive on problem-solving and collaborative documentation, poised for greater success.",
            ),
          ),
        ],
        childrenForDesktop: const [
          Expanded(
            flex: 2,
            child: NameBio(
              name: "Matias Ramirez",
              bio:
                  "I am Matías Sebastián Ramírez Brizuela, an emerging software engineer with three years of experience. Specializing in Flutter and Dart for mobile apps, I thrive on problem-solving and collaborative documentation, poised for greater success.",
            ),
          ),
        ],
      ),
    );
  }
}
