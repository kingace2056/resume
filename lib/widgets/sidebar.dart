import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_website/providers/buttonProvider.dart';
import 'package:resume_website/providers/infoprovider.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => SideBarState();
}

class SideBarState extends State<SideBar> {
  Color hColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.white, width: 3, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(200),
              image: DecorationImage(
                image: NetworkImage(
                  Provider.of<InfoProvider>(context).image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            context.watch<InfoProvider>().name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          sideBtn(context, Icons.home, 'Home'),
          sideBtn(context, Icons.home, 'Home'),
          sideBtn(context, Icons.home, 'Home'),
          sideBtn(context, Icons.home, 'Home'),
        ],
      ),
    );
  }

  sideBtn(BuildContext context, IconData btnIcon, String btnText) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: TextButton(
        onPressed: () {
          context.read<ButtonProvider>().SetActive();
        },
        child: Container(
          decoration: BoxDecoration(
            color: context.watch<ButtonProvider>().buttonColor,
            border: Border.all(
                color: context.watch<ButtonProvider>().buttonColor,
                width: 3,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                btnIcon,
                color: context.watch<ButtonProvider>().textColor,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                btnText,
                style: TextStyle(
                  color: context.watch<ButtonProvider>().textColor,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
