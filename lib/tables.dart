import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
 TableScreen({Key? key}) : super(key: key);

  final List<Map> myTables =
      List.generate(21, (index) => {"id": index,"name":"Table $index"})
  .toList();


  @override
  Widget build(BuildContext context) {
    return Scaffold
      (appBar: AppBar(
      title: Text('Book Your Table'),

    ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
    maxCrossAxisExtent: 220,
    childAspectRatio: 3/2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
            itemCount: myTables.length,
    itemBuilder: (_, index) {
              return Container(

              margin: const EdgeInsets.symmetric(vertical: 10),
    alignment: Alignment.center,
    decoration: BoxDecoration(
    color: Colors.cyanAccent,
    borderRadius: BorderRadius.circular(15)

    ),

              );
    }
      ),
      ));
  }
}
