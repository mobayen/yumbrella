import 'package:flutter/material.dart';

class NotPublishedMenu extends StatelessWidget {
  const NotPublishedMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Icon(
          Icons.close,
          color: Colors.red,
        ),
        title: Text('NOT PUBLISHED item'),
      ),
    );
  }
}
