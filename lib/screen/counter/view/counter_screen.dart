import 'package:counterapp_1/screen/counter/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counterscreen extends StatefulWidget {
  const Counterscreen({Key? key}) : super(key: key);

  @override
  State<Counterscreen> createState() => _CounterscreenState();
}

class _CounterscreenState extends State<Counterscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          bottomOpacity: 2,
          actions: [
            InkWell(
              child: Icon(Icons.refresh),
              onTap: (){
                Provider.of<CounterProvider>(context, listen: false).clear();
              },
            ),
          ],
          title: Text(
            "COUNTER APP",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        body: Center(
          child: Consumer<CounterProvider>(
            builder: (context, value, child) => Text(
              "${value.i}",
              style: TextStyle(fontSize: 35, color: Colors.white),
            ),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.blueGrey,
              onPressed: () {
                Provider.of<CounterProvider>(context, listen: false)
                    .increment();
              },
              child: Icon(Icons.add,size: 30),
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              backgroundColor: Colors.blueGrey,
              onPressed: () {
                Provider.of<CounterProvider>(context, listen: false)
                    .decrement();
              },
              child: Icon(Icons.minimize,size: 30,),
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              backgroundColor: Colors.blueGrey,
              onPressed: () {
                Provider.of<CounterProvider>(context, listen: false).two();
              },
              child: Text("2X",style: TextStyle(fontSize: 20)),
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              backgroundColor: Colors.blueGrey,
              onPressed: () {
                Provider.of<CounterProvider>(context, listen: false).Three();
              },
              child: Text("3X",style: TextStyle(fontSize: 20)),
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              backgroundColor: Colors.blueGrey,
              onPressed: () {
                Provider.of<CounterProvider>(context, listen: false).Four();
              },
              child: Text("4X",style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
