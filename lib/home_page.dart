
import 'package:flutter/material.dart';
import 'package:flutter_application_07_icons/sheets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Тапшырма 4',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff056C5C),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(300),
            topLeft: Radius.circular(300),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Asel Oskonova',
                style: GoogleFonts.pacifico(
                  fontSize: 48,
                  color: const Color(0xffF7F9F9),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                ' Flutter Developer ',
                style: GoogleFonts.roboto(
                  fontSize: 28,
                  color: const Color(0xffF7F9F9),
                  height: 0,
                ),
              ),
              const Divider(
                indent: 70,
                endIndent: 70,
                height: 0,
                color: Color(0xffF7F9F9),
                thickness: 2,
              ),
              const SizedBox(height: 23),
              const CustomTile(
                iconName: 'phone',
                value: '+7985 145 61 48',
              ),
              const SizedBox(height: 24),
              const CustomTile(
                iconName: 'mail',
                value: 'aseloskonova.03@gmail.com',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppBottomSheet.showBottomSheet(
            context,
            const Row(
              children: [
                Text('Hi'),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CustomTile extends StatelessWidget {
  const CustomTile({
    required this.iconName,
    required this.value,
    super.key,
  });

  final String iconName;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(),
      margin: const EdgeInsets.all(0),
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(left: 32),
          child: SvgPicture.asset(
            'assets/icons/$iconName.svg',
          ),
        ),
        title: Text(
          value,
          style: const TextStyle(
            fontSize: 22,
            color: Color(0xff056C5C),
          ),
        ),
      ),
    );
  }
}
