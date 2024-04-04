import 'package:flutter/material.dart';
import 'package:my_portfolio/extensions/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

const urlResumeEnglish =
    "https://ramireamatias1.notion.site/Matias-Ramirez-1a22d0e69c5147578ea0a176d2580734?pvs=4";

const urlResumeSpanish =
    "https://ramireamatias1.notion.site/Matias-Ramirez-157b7a62601a49b198107b9112082733?pvs=4";

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      children: [
        Text(
          l10n.resume,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("${l10n.download} ${l10n.resume}"),
                  content: Text(l10n.goToResume),
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
                      child: Text(l10n.english),
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
                      child: Text(l10n.spanish),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(l10n.close),
                    ),
                  ],
                );
              },
            );
          },
          child: Text(l10n.navToResume),
        ),
      ],
    );
  }
}
