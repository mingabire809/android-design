

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Image',
      theme: ThemeData(),
      home: MyHomePage(title: 'Rocket'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CNDD FDD'),
      ),
      body: Center(
          child: ListView(
        children: [
          Image.asset('images/cnddfdd.png'),
          Text(
            'CNDD FDD',
            style: TextStyle(fontSize: 20.0),
          ),
          Text('Conseil National de Defense Democratique'),
          SizedBox(height: 20,),
          Text('The National Council for the Defense of Democracy –'
              ' Forces for the Defense of Democracy is the major '
              'political party in Burundi. During the Burundian '
              'Civil War, the CNDD–FDD was the most significant '
              'rebel group active and became a major political party in Burundi.'),
          ListTile(
            leading: Icon(Icons.ac_unit_outlined),
            title: Text('founded in 1994'),
            subtitle: Text('For the people'),


          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Was very organized'),
            subtitle: Text('Since its foundation'),
          ),
          ListTile(
            leading: Icon(Icons.category),
            title: Text('around 8 millions People'),
            subtitle: Text('started with 1 millions people'),
          ),
          ListTile(
            leading: Icon(Icons.account_balance_rounded),
            title: Text('The most powerful in the country'),
            subtitle: Text('The ruling one'),
          ),
          ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed))
                    return Colors.green;
                  return null; // Use the component's default.
                },
              ),
            ),
            icon: Text('Adhere to it'),
            label: Icon(Icons.account_box_rounded, size: 16),
            onPressed: () => {},
          ),
        ],
      )),
    );
  }
}
