import 'package:flutter/material.dart';

import '../../../Configs/AssetsPath.dart';
import '../../Buttons/PrimaryButton.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileInfoSection extends StatelessWidget {
  const MobileInfoSection({super.key});
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          Image.asset(
            ImagePath.profile,
            width: 450,
          ),
          Text(
            "Hello, I’m Kan Khamkoonmuang Software developer & IT Support",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(height: 4),
          Text(
            "Am graduate from King mongkut university of technology thonburi Faculty information technology. Nice to meet everyone! I work at Bangkok Rayong Hospital with 1 year of experience in IT customer service support. Now I am looking for opportunities in UX/UI Design or Mobile Development.",
            style: Theme.of(context).textTheme.labelMedium,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              PrimaryButton(
                onTap: () {
                  const url = 'https://drive.google.com/file/d/1SG7-z4js5KXtJGu5IejoxjT9UdlruzwF/view?usp=sharing';
                  _launchURL(url); // Call the renamed method
                },
                btnName: "Download CV",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
