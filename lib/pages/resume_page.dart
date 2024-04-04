import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const URL_RESUME_ENGLISH =
    "https://ramireamatias1.notion.site/Matias-Ramirez-1a22d0e69c5147578ea0a176d2580734?pvs=4";

const URL_RESUME_SPANISH =
    "https://ramireamatias1.notion.site/Matias-Ramirez-157b7a62601a49b198107b9112082733?pvs=4";

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Resume",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Open a dialog to ask to download in english or spanish
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog.adaptive(
                  title: Text("Download Resume"),
                  content: Text(
                      "Do you want to download the resume in English or Spanish?"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        final uri = Uri.parse(URL_RESUME_ENGLISH);
                        launchUrl(uri)
                            .then((value) =>
                                debugPrint("Launched English Resume"))
                            .catchError((error) => debugPrint(
                                "Error launching English Resume: $error"));
                      },
                      child: const Text("English"),
                    ),
                    TextButton(
                      onPressed: () {
                        final uri = Uri.parse(URL_RESUME_SPANISH);
                        launchUrl(uri)
                            .then((value) =>
                                debugPrint("Launched Spanish Resume"))
                            .catchError((error) => debugPrint(
                                "Error launching Spanish Resume: $error"));
                      },
                      child: const Text("Spanish"),
                    ),
                  ],
                );
              },
            );
          },
          child: const Text("Go to Resume"),
        ),
      ],
    );
  }
}
