import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: defaultPadding / 2,
        ),
        AreaInfoText(title: 'Contact', text: '00213781002619'),
        GestureDetector(
            onTap: () async {
              final Uri emailUri = Uri(
                scheme: 'mailto',
                path: 'bachirrabha28@gmail.com',
                query: Uri.encodeQueryComponent('subject=Hello&body=Hi Rabha,'),
              );

              if (await canLaunchUrl(emailUri)) {
                launchUrl(emailUri);
              } else {
                throw 'Could not launch $emailUri';
              }
            },
            child:
                AreaInfoText(title: 'Email', text: 'bachirrabha28@gmail.com')),
        GestureDetector(
            onTap: () {
              launchUrl(Uri.parse(
                  "https://www.linkedin.com/in/bachir-rabha-03575a196/?originalSubdomain=dz"));
            },
            child: AreaInfoText(title: 'LinkedIn', text: '@bachir-rabha')),
        GestureDetector(
            onTap: () {
              launchUrl(Uri.parse("https://github.com/rabhaBachir"));
            },
            child: AreaInfoText(title: 'Github', text: '@rabhaBachir')),
        SizedBox(
          height: defaultPadding,
        ),
        Text(
          'Skills',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
