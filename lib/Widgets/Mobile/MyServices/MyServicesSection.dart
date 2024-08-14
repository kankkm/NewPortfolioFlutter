import 'package:flutter/material.dart';

import '../../Desktop/MyServices/ServiceWidget.dart';

class MobileMyServicesSec extends StatelessWidget {
  const MobileMyServicesSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "My Services",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Expanded(
                  child: ServiceWidget(
                    title: "IT Support",
                    des:
                        "I have 1 year experience in IT Support at BangkokHospital Rayong.",
                    icon: Icons.design_services,
                  ),
                ),
                Expanded(
                  child: ServiceWidget(
                    title: "Front End",
                    des:
                        "Learn skill of web development and android development in youtube.",
                    icon: Icons.design_services,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ServiceWidget(
                    title: "Android Development",
                    des:
                        "Use Flutter and Java in Android Studio",
                    icon: Icons.design_services,
                  ),
                ),
                Expanded(
                  child: ServiceWidget(
                    title: "Backend Development",
                    des:
                        "Use Java backend to rest api,postman api to check",
                    icon: Icons.design_services,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ServiceWidget(
                    title: "UX/UI Designer ",
                    des:
                        "Love to design UX/UI in figma,flutterflow",
                    icon: Icons.design_services,
                  ),
                ),
                Expanded(
                  child: ServiceWidget(
                    title: "Footballer and Guitar",
                    des:
                        "Love to play football and play GuitarLove to play football and play Guitar ",
                    icon: Icons.design_services,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
