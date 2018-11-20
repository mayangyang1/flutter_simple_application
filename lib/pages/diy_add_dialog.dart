import 'package:flutter/material.dart';
import 'package:active_programe/ui/diy_add_show.dart';

class DiyAddDialog extends StatefulWidget {
  @override
  DiyAddDialogState createState() => new DiyAddDialogState();
}

class DiyAddDialogState extends State<DiyAddDialog> {
  final _title = '新增活动';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(_title),
      ),
      body: new DiyAddShow(),
    );
  }
}