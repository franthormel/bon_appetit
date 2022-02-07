import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.star_border),
          ),
        ],
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: SvgPicture.asset(
          'assets/logo.svg',
          height: 50.0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: const [
            Text(
              'Radley Regular',
              style: TextStyle(
                fontFamily: 'Radley',
                fontSize: 32,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              'Radley Italic',
              style: TextStyle(
                fontFamily: 'Radley',
                fontSize: 32,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'Futura PT Light',
              style: TextStyle(
                fontFamily: 'Futura PT',
                fontSize: 32,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              'Futura PT Regular',
              style: TextStyle(
                fontFamily: 'Futura PT',
                fontSize: 32,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Futura PT Medium',
              style: TextStyle(
                fontFamily: 'Futura PT',
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Futura PT Semi-bold',
              style: TextStyle(
                fontFamily: 'Futura PT',
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Futura PT Bold',
              style: TextStyle(
                fontFamily: 'Futura PT',
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'the red fox jumped over the lazy dog',
              style: TextStyle(
                fontFamily: 'Futura PT',
                fontSize: 32,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
