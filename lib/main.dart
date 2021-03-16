import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: CoderId(),
  ));

class CoderId extends StatefulWidget {
  @override
  _CoderIdState createState() => _CoderIdState();
}

class _CoderIdState extends State<CoderId> {

  int coderLife = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Developer Id'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[400],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            coderLife += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
      ),
      // floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 20, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/1f600.svg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.lightBlue[800],
            ),
            Text('NAME',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0
            )
            ),
            SizedBox(height: 10.0,),
            Text(
              'Wechuli',
              style: TextStyle(
              color: Colors.yellow,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            )
            ),
            SizedBox(height: 10.0,),
            Text('CURRENT LIFE',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0
            )
            ),
            SizedBox(height: 10.0,),
            Text(
              '$coderLife',
              style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0,),
                  Text(
                    'vinchuli@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 10.0,
                      letterSpacing: 1.0,
                    ),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

