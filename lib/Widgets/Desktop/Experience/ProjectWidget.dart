import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Buttons/MyTextButton.dart';
import 'package:portfolio/Widgets/Desktop/Knowledge/FiledCircle.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectWidget extends StatelessWidget {
  final String date;
  final String projectTitle;
  final List<String> langauges;
  final List<String> features;
  final List<String> screenShots;
  final String likeLink;
  final String description;
  final String githubLink;
  final String linkedin;
  final VoidCallback onTap;
  final bool isActive;
  const ProjectWidget(
      {super.key,
      required this.onTap,
      this.isActive = false,
      required this.date,
      required this.projectTitle,
      required this.langauges,
      required this.features,
      required this.screenShots,
      this.likeLink = "",
      this.githubLink = "",
      this.linkedin = '',
      required this.description});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url); // Convert the String to a Uri
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri); // Use the correct method from the url_launcher package
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: isActive
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
              child: Text(
                date,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: isActive
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text(projectTitle),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Flexible(
              child: Text(description,
                  style: Theme.of(context).textTheme.labelMedium),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: langauges
              .map(
                (e) => Row(
                  children: [
                    const FiledCircle(
                      isFilled: true,
                      size: 17,
                    ),
                    SizedBox(width: 10),
                    Text(e)
                  ],
                ),
              )
              .toList(),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Flexible(
              child: Text("Features of Projects",
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
          ],
        ),
        Column(
          children: features
              .map((e) => Row(
                    children: [
                      Container(
                        width: 7,
                        height: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(e, style: Theme.of(context).textTheme.labelMedium),
                    ],
                  ))
              .toList(),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyTextButton(
              btnName: "GITHUB >",
              onTap: () {const url = 'https://github.com/kankkm?tab=repositories';
              _launchURL(url);},
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            MyTextButton(
              btnName: "SCREENSHOTS >",
              onTap: () {const url = 'https://www.canva.com/design/DAGNvZdkggw/7tFtZG_iEfprVqxgiMQVcw/edit';
              _launchURL(url);},
            ),
          ],
        )
      ],
    );
  }
}
