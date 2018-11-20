
import 'package:flutter/material.dart';
import 'package:active_programe/ui/diy_info_show.dart';
import 'package:active_programe/mode/diy_project.dart';

class DiyItemInfo extends StatelessWidget {
  DiyItemInfo({Key key, this.diyItem}) : super(key: key);
  DiyProject diyItem;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new DiyInfoShow(diyItem: diyItem,),
    );
  }
}