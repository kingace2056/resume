import 'package:flutter/material.dart';

import '../constraints.dart';

class introSarthak extends StatelessWidget {
  const introSarthak({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: bgInfoTop,
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(profileAvatar),
            ),
            Spacer(
              flex: 2,
            ),
            Text(
              fName + lName,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              'Flutter Developer & Freelancer \n Computer Engineer',
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.w200, color: bodyTextColor),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
