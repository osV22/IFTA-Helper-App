import 'package:flutter/material.dart';

final GlobalKey _formKey = GlobalKey<FormState>();
List<int> _list = [0, 1, 2, 3];

class MilesAddSingle extends StatefulWidget {
  @override
  _MilesAddSingleState createState() => _MilesAddSingleState();
}

class _MilesAddSingleState extends State<MilesAddSingle> {
  int _value = _list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Add Fuel - Single State',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              'State',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Center(
              child: Form(
                key: _formKey,
                child: DropdownButtonFormField<int>(
                  value: _value,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  onChanged: (int newValue) =>
                      // setState(() => _value = newValue),
                      print('woot'),
                  items: [
                    for (int i in _list)
                      DropdownMenuItem(
                        value: i,
                        child: Text('$i'),
                      )
                  ],
                ),
              ),
            ),
            Text(
              'Miles',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              'Date',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            RaisedButton(),
          ],
        ),
      ),
    );
  }
}
