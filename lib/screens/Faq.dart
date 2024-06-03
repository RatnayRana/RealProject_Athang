import 'package:flutter/material.dart';
import 'package:realprojectflutter/base/text_styles.dart';

class Faq extends StatelessWidget {
  const Faq({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Faq",
            style: TypoStyles().kPageHeader,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "what is our chat app about?",
              style: TextStyle(fontSize: 16, color: Color(0xFFFB7549)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "A quick broown  fox jumnps over the lazy dog",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
