import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Desktop/MyServices/ServiceWidget.dart';

class MyServiceSection extends StatelessWidget {
  const MyServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 200, vertical: 50),
        child: Column(
          children: [
            Text(
              "My Services",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ServiceWidget(
                    title: "IT Support",
                    des:
                        "I have 1 year experience in IT Support at BangkokHospital Rayong.",
                    icon: Icons.person,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: ServiceWidget(
                    title: "Front End",
                    des:
                        "Learn skill of web development and android development in youtube.",
                    icon: Icons.design_services,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: ServiceWidget(
                    title: "Android Development",
                    des:
                        "Use Flutter and Java in Android Studio",
                    icon: Icons.smartphone,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ServiceWidget(
                    title: "Backend Development",
                    des:
                        "Use Java backend to rest api,postman api to check",
                    icon: Icons.settings,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: ServiceWidget(
                    title: "UX/UI Designer ",
                    des:
                        "Love to design UX/UI in figma,flutterflow",
                    icon: Icons.laptop,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: ServiceWidget(
                    title: "Footballer and Guitar",
                    des:
                        "Love to play football and play Guitar",
                    icon: Icons.group,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
