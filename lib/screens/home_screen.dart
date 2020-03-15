import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seja Bem vindo"),
        centerTitle: true,
      ),
      body:  ListView(
        children: <Widget>[
          CustomCard(),
          CustomCard(),
          CustomCard(),
        ],
      ),
    );
  }
}


class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Container(
        child: new Stack(
          children: <Widget>[
            Card(
              child: Container(
                child: Row(
                  children: <Widget>[
                    Text("Projeto")
                  ],
                ),
                height: 100.0,
              ),
            ),
            FractionalTranslation(
              translation: Offset(0.0, -0.4),
              child: Align(
                child: CircleAvatar(
                  radius: 25.0,
                  child: Image.network("https://scontent.fpoa15-1.fna.fbcdn.net/v/t1.0-1/c0.0.100.100a/p100x100/16397_430699403672192_1716002170_n.jpg?_nc_cat=105&_nc_sid=dbb9e7&_nc_ohc=THXnUTJf_JsAX-bALvI&_nc_ht=scontent.fpoa15-1.fna&oh=50f09b7b2b4607326e5d13640c831272&oe=5E92C634"),
                ),
                alignment: FractionalOffset(0.5, 0.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}