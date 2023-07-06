import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'BMI App',
        debugShowCheckedModeBanner: false,
        home: const Myhomepage());
  }
}

class Myhomepage extends StatefulWidget {
  const Myhomepage({Key? key}) : super(key: key);

  @override
  State<Myhomepage> createState() => _State();
}

class _State extends State<Myhomepage> {
  var wtcontroller = TextEditingController();
  var ftcontroller = TextEditingController();
  var incontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(padding: EdgeInsets.all(10)),
        SizedBox(
          height: 10,
        ),
        Text(
          "Your BMI",
          style: TextStyle(fontSize: 40, color: Colors.deepOrange),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30,
        ),
        Text("Lets calculate your BMI"),
        SizedBox(
          height: 30,
        ),
        TextField(
          controller: wtcontroller,
          decoration: InputDecoration(
            label: Text("Enter your weight(in kgs)"),
            prefixIcon: Icon(Icons.line_weight),
          ),
          keyboardType: TextInputType.number,
        ),
        SizedBox(
          height: 30,
        ),
        TextField(
          controller: incontroller,
          decoration: InputDecoration(
            label: Text("Enter your height(in Inches)"),
            prefixIcon: Icon(Icons.height_rounded),
          ),
          keyboardType: TextInputType.number,
        ),
        SizedBox(
          height: 30,
        ),
        TextField(
            controller: ftcontroller,
            decoration: InputDecoration(
              label: Text("Enter your height(in Feet)"),
              prefixIcon: Icon(Icons.height_outlined),
            ),
            keyboardType: TextInputType.number),
        SizedBox(
          height: 40,
        ),
        ElevatedButton(onPressed: () {}, child: Text('Calculate'))
      ]),
    );
  }
}
