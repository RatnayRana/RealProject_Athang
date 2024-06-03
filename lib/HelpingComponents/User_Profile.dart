import 'package:flutter/material.dart';
import 'package:realprojectflutter/base/text_styles.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFB7549),
        title: Padding(
            padding: const EdgeInsets.only(bottom: 9, left: 20),
            child: Text(
              "Account",
              style: TypoStyles().kPageHeader,
            )),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: CircleAvatar(
              radius: 18,
              child: ClipOval(child: Image.asset("assets/teeth.jpg")),
            ),
          )
        ], //<Widget>[]
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/teeth.jpg"),
                  radius: 100,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(45),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Account Name"),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: "Type"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Opening Balance"),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(45),
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Text('Confirm'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
