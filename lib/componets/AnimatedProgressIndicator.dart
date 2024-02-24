import 'package:flutter/material.dart';
import 'package:resume_website/widgets/size_config.dart';

import '../constraints.dart';

class AnimatedProgressIndicator extends StatelessWidget {
  const AnimatedProgressIndicator({
    Key? key,
    required this.percent,
    required this.label,
    required this.barColor,
    required this.image,
  }) : super(key: key);
  final double? percent;
  final String? label;
  final Color? barColor;
  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: TrueSize.getWidth(context, 200),
      width: TrueSize.getWidth(context, 200),
      margin: EdgeInsets.all(
        TrueSize.getWidth(context, 20),
      ),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percent),
        duration: defaultDuration,
        builder: (context, double tweenValue, child) => Stack(
          fit: StackFit.expand,
          children: [
            CircularProgressIndicator(
              value: tweenValue,
              color: barColor,
              backgroundColor: darkColor,
              strokeWidth: TrueSize.getWidth(context, 25),
              strokeCap: StrokeCap.round,
            ),
            // Center(
            //   child: Text(
            //     (value * 100).toInt().toString() + "%",
            //     style: Theme.of(context).textTheme.subtitle1,
            //   ),
            // ),
            Center(
              child: image,
            ),
          ],
        ),
      ),
    );
  }
}

// class addressInfo extends StatelessWidget {
//   const addressInfo({
//     Key? key,
//     this.title,
//     this.bText,
//   }) : super(key: key);
//   final String? title, bText;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: defaultPadding),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title!,
//             style: const TextStyle(color: Colors.white),
//           ),
//           Text(
//             bText!,
//             style: const TextStyle(color: bodyTextColor),
//           )
//         ],
//       ),
//     );
//   }
// }
