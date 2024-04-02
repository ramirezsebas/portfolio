import 'package:flutter/material.dart';
import 'package:my_portfolio/extensions/extensions.dart';
import 'package:my_portfolio/models/social_media.dart';
import 'package:url_launcher/url_launcher.dart';

class NameBio extends StatelessWidget {
  const NameBio({
    super.key,
    required this.name,
    required this.bio,
  });

  final String name;
  final String bio;

  @override
  Widget build(BuildContext context) {
    final isMobileSize = MediaQuery.of(context).isMobileSize;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:
          !isMobileSize ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          bio,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: !isMobileSize ? TextAlign.start : TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        Wrap(
          spacing: 10,
          children: socialMedias
              .map(
                (skill) => ElevatedButton.icon(
                  onPressed: () {
                    final uri = Uri.parse(skill.url);
                    launchUrl(uri)
                        .then((value) => debugPrint("Launched ${skill.name}"))
                        .catchError((error) => debugPrint(
                            "Error launching ${skill.name}: $error"));
                  },
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Image.asset(
                        skill.icon,
                        color: isDarkMode
                            ? Colors.white
                            : isDarkMode
                                ? Colors.black
                                : null,
                      ),
                    ),
                  ),
                  label: Text(skill.name),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
