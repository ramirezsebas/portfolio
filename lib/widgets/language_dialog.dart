import 'package:flutter/material.dart';
import 'package:my_portfolio/extensions/extensions.dart';

class LangauageDialog extends StatelessWidget {
  const LangauageDialog({
    super.key,
    required this.onSelectedLanguage,
  });

  final void Function(Locale) onSelectedLanguage;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AlertDialog(
      title: Text(
        l10n.selectLanguage,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text(
              l10n.english,
            ),
            onTap: () {
              onSelectedLanguage(const Locale("en"));
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: Text(
              l10n.spanish,
            ),
            onTap: () {
              onSelectedLanguage(const Locale("es"));
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(l10n.close),
          ),
        ],
      ),
    );
  }
}
