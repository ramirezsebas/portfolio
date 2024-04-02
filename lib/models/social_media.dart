class SocialMedia {
  final String name;
  final String url;
  final String icon;

  SocialMedia({required this.name, required this.url, required this.icon});
}

final socialMedias = [
  SocialMedia(
    name: "LinkedIn",
    url:
        "https://www.linkedin.com/in/matias-sebastian-ramirez-brizuela-75b62a199/",
    icon: "assets/icons/linkedin.png",
  ),
  SocialMedia(
    name: "GitHub",
    url: "https://github.com/ramirezsebas",
    icon: "assets/icons/github.png",
  ),
];
