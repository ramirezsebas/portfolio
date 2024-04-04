import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/extensions/extensions.dart';
import 'package:my_portfolio/layouts/layouts.dart';
import 'package:my_portfolio/models/skills.dart';
import 'package:my_portfolio/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BodyLayout(
      childrenForDesktop: [
        Expanded(
          child: NameBio(
            name: "Matias Ramirez",
            bio: l10n.bio,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
        ),
        SizedBox(
          width: 200,
          height: 200,
          child: Swiper(
            itemCount: topSkills.length,
            itemBuilder: (context, index) {
              final skill = topSkills[index];
              return Image.asset(skill.icon);
            },
            autoplay: true,
          ),
        ),
      ],
      childrenForMobile: [
        SizedBox(
          width: 200,
          height: 200,
          child: Swiper(
            itemCount: topSkills.length,
            itemBuilder: (context, index) {
              final skill = topSkills[index];
              return Image.asset(skill.icon);
            },
            autoplay: true,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        NameBio(
          name: "Matias Ramirez",
          bio: l10n.bio,
        ),
      ],
    );
  }
}
