import 'package:flutter/material.dart';
import 'package:active_programe/mode/diy_project.dart';
import 'package:active_programe/pages/diy_item_info.dart';

class DiyListShow extends StatefulWidget{
  //将项目对象作为参数配置DiyListShow的构造函数
  DiyListShow({Key key, this.diyItem}) : super(key: key);
  final DiyProject diyItem;
  @override
  State<StatefulWidget> createState() => new DiyListShowState();
}

class DiyListShowState extends State<DiyListShow> {
  @override
  Widget build(BuildContext context) {
    //card第一行时间和预留按钮菜单
    Widget _rowTime() {
      return new Container(
        padding: const EdgeInsets.only(left:8.0),
        child: new Row(
          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Text(widget.diyItem.date),
            new IconButton(
              icon: new Icon(Icons.more_horiz),
              onPressed: () {},
            )
          ],
        ),
      );
    }
    //第三行名称和地点
    Widget _rowNameAndPlace() {
      return new Container(
        padding: const EdgeInsets.all(8.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Text(widget.diyItem.name,
              style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            ),
            new Text(widget.diyItem.place),
          ],
        ),
      );
    }

    //进行card里的内容组合
    Widget _diyContentShow() {
      return Container(
        height: 340.0,
        child: new Column(
          children: <Widget>[
            _rowTime(),
            //使用expanded将填充控件的剩余空间
            new Expanded(
              flex: 4,
              child: new Image.asset(
                widget.diyItem.imagePath,
                fit: BoxFit.cover,
                width: 400.0,
              ),
            ),
            _rowNameAndPlace(),
            new Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
              child: new Row(
                children: <Widget>[
                  new Text(
                    '${widget.diyItem.singlePrice.toString()}元',
                    style: new TextStyle(
                      fontSize: 15.0,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  new SizedBox(
                    width: 20.0,
                  ),
                  new Text(
                    '${widget.diyItem.nums.toString()}份',
                    style: new TextStyle(
                      fontSize: 15.0,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }
    return new Card(
      margin: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 9.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
      ),
      child: new InkWell(
        onTap: () {
          Navigator.of(context)
              .push(new MaterialPageRoute(builder: (BuildContext context) {
              return new DiyItemInfo(
                diyItem: widget.diyItem,
              );
          }));
        },
        child: _diyContentShow(),
      ),
    );
  }
}