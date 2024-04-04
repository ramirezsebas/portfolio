import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const urlResumeEnglish =
    "https://ramireamatias1.notion.site/Matias-Ramirez-1a22d0e69c5147578ea0a176d2580734?pvs=4";

const urlResumeSpanish =
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
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog.adaptive(
                  title: const Text("Download Resume"),
                  content: const Text(
                      "Do you want to download the resume in English or Spanish?"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        final uri = Uri.parse(urlResumeEnglish);
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
                        final uri = Uri.parse(urlResumeSpanish);
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
