import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:portfolio/Widgets/Desktop/Knowledge/FiledCircle.dart';
import 'package:portfolio/Widgets/Desktop/SkilSection/MyLinearProgressInductor.dart';

import 'InternshipWidget.dart';

class InternshipData extends StatelessWidget {
  const InternshipData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Experience",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox()
          ],
        ),
        SizedBox(height: 30),
        InternshipWidget(
          isActive: true,
          date: "June2021 - July2021",
          company: "PTT GC",
          position: "Intership Data Analyst,Content creators ",
          description:
              "This is my first internship of my life and have covid19 i work from home and use microsoft team to call i analyst data in facebook group and make content in groups it fun",
          companyLogo: "",
          onTap: () {},
        ),
        SizedBox(height: 30),
        InternshipWidget(
          isActive: true,
          date: "2023 - 2023",
          company: "Greenline Synergy Company Limited",
          position: "IT Support",
          description:
              "I work at Bankok Hospital Rayong and service everthing in IT site ",
          companyLogo: "",
          onTap: () {},
        ),
        SizedBox(height: 30),
        InternshipWidget(
          isActive: true,
          date: "2023 - 2023",
          company: "Lansing business systems",
          position: "IT Support",
          description:
              "This company takeover about It systems in hospital and i move to lansing",
          companyLogo: "",
          onTap: () {},
        ),
        SizedBox(height: 30),
        InternshipWidget(
          isActive: true,
          date: "2023 - 2024",
          company: "Home",
          position: "Freelance",
          description:
              "I move to Sakonnakorn at home because My father retirement and get back to Sakonnakorn",
          companyLogo: "",
          onTap: () {},
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
