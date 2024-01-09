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
        title: Text("Bhagwatgeeta"),
      ),
      body: FutureBuilder(
        future: rootBundle.loadString(bhagwatgeeta.json),
        builder: (context, snapshot) {
    if (snapshot.hasError) {
    return Center(
    child: Text("${snapshot.error}"),
    );
    } else if (snapshot.hasData) {
    var decodedData = jsonDecode(snapshot.data!);
    List mapData = decodedData['allData'];
    List<verses> allData =
    mapData.map((e) => verses.fromJson(data: e)).toList();
          return ListView.builder(
            itemBuilder: (context, index) => Container(),
          );
        },
      ),
    );
  }
}
