import 'package:flutter/material.dart';

import '../model/function_app.dart';

Widget itemData(FunctionAppData data) {
  return Card(
    child: ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(data.icon),
      ),
      title: Text(data.title),
      subtitle: Text(data.subtitle),
    ),
  );
}
