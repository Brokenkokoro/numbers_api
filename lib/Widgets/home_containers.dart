import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  final String title;
  final String leyend;
  final String navigation;
  const HomeContainer(
      {super.key,
      required this.title,
      required this.leyend,
      required this.navigation});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        height: 250,
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 3),
            )
          ],
          color: const Color.fromRGBO(54, 110, 193, 0.772),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: Column(children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            leyend,
            style: const TextStyle(color: Colors.white, fontSize: 20),
            textAlign: TextAlign.justify,
          )
        ]),
      ),
      onTap: () => Navigator.pushNamed(context, navigation),
    );
  }
}
