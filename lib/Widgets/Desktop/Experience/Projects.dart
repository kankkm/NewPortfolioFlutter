import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:portfolio/Widgets/Desktop/Experience/ProjectWidget.dart';
import 'package:portfolio/Widgets/Desktop/Knowledge/FiledCircle.dart';
import 'package:portfolio/Widgets/Desktop/SkilSection/MyLinearProgressInductor.dart';

class ProjectsData extends StatelessWidget {
  const ProjectsData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Projects",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox()
          ],
        ),
        SizedBox(height: 30),
        ProjectWidget(
          isActive: true,
          date: "2024",
          description:
              "CartoonZa App This is a Android application project about reading manga book",
          projectTitle: "reading manga book with pdf file",
          langauges: [
            "Dart",
            'Flutter',
            'Firebase'
          ],
          onTap: () {},
          screenShots: [],
          features: [
            'FirebaseAuthen',
            'GoogleAuthen',
            'User Authentication with Email or Phone',
            "Pdf Reading View",
            'Add Book',
            'Update Book'
          ],
        ),
        SizedBox(height: 10),
        ProjectWidget(
          isActive: true,
          date: "2024",
          description:
              "UX/UI about Volunteer camp ",
          projectTitle: "booking Volunteer camp",
          langauges: [
            "Dart",
            'Flutter',
          ],
          onTap: () {},
          screenShots: [],
          features: [
          'FirebaseAuthen',
          'GoogleAuthen',
          'User Authentication with Email or Phone',
          "HomepageUI",
          'Add Camp',
          ],
        ),
        SizedBox(height: 10),
        ProjectWidget(
          isActive: true,
          date: "2022 Final Project",
          description:
              "Junlajobs app app for finding jobs",
          projectTitle: "app for finding jobs",
          langauges: [
            "Dart",
            'Flutter',
          ],
          onTap: () {},
          screenShots: [],
          features: [
          'FirebaseAuthen',
          'GoogleAuthen',
          'User Authentication with Email or Phone',
          "Add Job",
          'Findind Job',
          'User manange',
          ],
        ),
      ],
    );
  }
}
