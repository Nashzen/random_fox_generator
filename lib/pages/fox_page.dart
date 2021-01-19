import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:random_fox_generator/controller/fox_controller.dart';

class FoxPage extends StatefulWidget {
  @override
  _FoxPageState createState() => _FoxPageState();
}

class _FoxPageState extends State<FoxPage> {
  FoxController _controller = FoxController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Random Fox Generator :)',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Observer(
          builder: (_) => SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Center(
                  child: RaisedButton(
                    onPressed: () {
                      _controller.getFoxes();
                    },
                    child: IconButton(
                      splashColor: Colors.white,
                      color: Colors.white,
                      icon: new Image.asset('assets/icons/fox-48.png'),
                      tooltip: 'New fox',
                      onPressed: () => _controller.getFoxes(),
                    ),
                  ),
                ),
                Container(
                  height: 450,
                  width: 400,
                  child: _controller.foxModel.image == null
                      ? CircularProgressIndicator()
                      : CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              NetworkImage(_controller.foxModel.image),
                        ),
                )
              ],
            ),
          ),
        ));
  }
}
