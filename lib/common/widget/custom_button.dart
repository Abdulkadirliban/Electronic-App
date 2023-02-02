import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomBottom extends StatelessWidget {
  final String text;
  // final RectCallback onTap;
  const CustomBottom({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        text,
      
      ),
      onPressed: (){},
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
      ),
    );
  }
}