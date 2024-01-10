import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../model/json/json.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: Text("Bhagwatgeeta"),
      ),
      body: FutureBuilder(
        future: rootBundle.loadString("bhagwatgeeta.json"),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("${snapshot.error}"),
            );
          } else if (snapshot.hasData) {
            var decodedData = jsonDecode(snapshot.data!);
            List allData =
                decodedData.map((e) => AllData.fromjson(data: e)).toList();
            return GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, 'detail',
                    arguments: allData);
              },
              child: ListView.builder(
                itemCount: allData.length,
                itemBuilder: (context, i) => Card(
                  child: ListTile(
                    title: Text("${allData[i].id}"),
                    subtitle: Text("${allData[i].sanskrit}"),
                  ),
                ),
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
