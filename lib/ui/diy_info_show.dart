import 'package:flutter/material.dart';
import 'package:active_programe/mode/diy_project.dart';

class DiyInfoShow extends StatelessWidget {
  DiyInfoShow({Key key, this.diyItem}) : super(key: key);

  DiyProject diyItem;

  @override
  Widget build(BuildContext context) {
    //使用stack将滑动视图和浮动按钮组合起来 实现按钮附加在FlexibleSpaceBar效果
    return new Stack(
      children: <Widget>[
        //sliverAppBar需要配合CustomScrollView来实现
        new CustomScrollView(
          slivers: <Widget>[
            new SliverAppBar(
              //展开的高度
              expandedHeight: 400.0,
              // 是否随着滑动消失
              pinned: true,
              actions: <Widget>[
                new IconButton(
                  icon: new Icon(Icons.content_paste),
                  onPressed: () {},
                )
              ],
              //展开的空间区域
              flexibleSpace: new FlexibleSpaceBar(
                //设置区域背景图片

                
                background: new Image.asset(
                  diyItem.imagePath,
                  fit: BoxFit.cover
                ),
                title: new Text(
                  '利润: ${diyItem.profit.toString()}',
                  style: new TextStyle(fontSize: 16.0,color: Colors.blue),
                ),
                centerTitle: true,
              ),
            ),
            //SliverAppBar下面的内容区域
            new SliverList(
              delegate: new SliverChildListDelegate([
                //名称和联系人
                new ListTile(
                  leading: new Icon(
                    Icons.toys,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: new Text(diyItem.name,
                    style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 22.0
                    ),
                  ),
                  subtitle: new Text(diyItem.contact),
                ),
                new Divider(
                  indent: 16.0,
                ),
                //活动地点时间
                new ListTile(
                  leading: new Icon(
                    Icons.open_with,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: new Text(diyItem.place,
                   style: new TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: new Text(diyItem.date),
                ),
                new Divider(
                  indent: 16.0,
                ),
                //活动单价和份数
                new ListTile(
                  leading: new Icon(
                    Icons.repeat,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: new Text('单价：${diyItem.singlePrice}'),
                  subtitle: new Text('份数: ${diyItem.nums}'),
                ),
                //活动总价和物流人员成本
                new ListTile(
                  leading: new Icon(
                    Icons.attach_money,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: new Text('总价: ${diyItem.totalAmount}元'),
                  subtitle: new Row(children: <Widget>[
                    new Text('物料: ${diyItem.itemConst}元'),
                    new SizedBox(
                      width: 10.0,
                    ),
                    new Text('人员: ${diyItem.laborCost}元')
                  ],),
                ),
                new ListTile(
                  leading: new Icon(
                    Icons.attach_money,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: new Text('总价: ${diyItem.totalAmount}元'),
                  subtitle: new Row(children: <Widget>[
                    new Text('物料: ${diyItem.itemConst}元'),
                    new SizedBox(
                      width: 10.0,
                    ),
                    new Text('人员: ${diyItem.laborCost}元')
                  ],),
                ),
                new ListTile(
                  leading: new Icon(
                    Icons.attach_money,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: new Text('总价: ${diyItem.totalAmount}元'),
                  subtitle: new Row(children: <Widget>[
                    new Text('物料: ${diyItem.itemConst}元'),
                    new SizedBox(
                      width: 10.0,
                    ),
                    new Text('人员: ${diyItem.laborCost}元')
                  ],),
                ),
                new ListTile(
                  leading: new Icon(
                    Icons.attach_money,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: new Text('总价: ${diyItem.totalAmount}元'),
                  subtitle: new Row(children: <Widget>[
                    new Text('物料: ${diyItem.itemConst}元'),
                    new SizedBox(
                      width: 10.0,
                    ),
                    new Text('人员: ${diyItem.laborCost}元')
                  ],),
                ),
                new ListTile(
                  leading: new Icon(
                    Icons.attach_money,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: new Text('总价: ${diyItem.totalAmount}元'),
                  subtitle: new Row(children: <Widget>[
                    new Text('物料: ${diyItem.itemConst}元'),
                    new SizedBox(
                      width: 10.0,
                    ),
                    new Text('人员: ${diyItem.laborCost}元')
                  ],),
                ),
                new ListTile(
                  leading: new Icon(
                    Icons.attach_money,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: new Text('总价: ${diyItem.totalAmount}元'),
                  subtitle: new Row(children: <Widget>[
                    new Text('物料: ${diyItem.itemConst}元'),
                    new SizedBox(
                      width: 10.0,
                    ),
                    new Text('人员: ${diyItem.laborCost}元')
                  ],),
                ),
                new ListTile(
                  leading: new Icon(
                    Icons.attach_money,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: new Text('总价: ${diyItem.totalAmount}元'),
                  subtitle: new Row(children: <Widget>[
                    new Text('物料: ${diyItem.itemConst}元'),
                    new SizedBox(
                      width: 10.0,
                    ),
                    new Text('人员: ${diyItem.laborCost}元')
                  ],),
                ),
                new ListTile(
                  leading: new Icon(
                    Icons.attach_money,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: new Text('总价: ${diyItem.totalAmount}元'),
                  subtitle: new Row(children: <Widget>[
                    new Text('物料: ${diyItem.itemConst}元'),
                    new SizedBox(
                      width: 10.0,
                    ),
                    new Text('人员: ${diyItem.laborCost}元')
                  ],),
                ),
                new ListTile(
                  leading: new Icon(
                    Icons.attach_money,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: new Text('总价: ${diyItem.totalAmount}元'),
                  subtitle: new Row(children: <Widget>[
                    new Text('物料: ${diyItem.itemConst}元'),
                    new SizedBox(
                      width: 10.0,
                    ),
                    new Text('人员: ${diyItem.laborCost}元')
                  ],),
                )
              ]),
            )
          ],
        ),
        //位置控价用于摆放浮动按钮
        new Positioned(
          top: 400.0,
          right: 26.0,
          child: new FloatingActionButton(
            backgroundColor: diyItem.isCheckOut ? Colors.green : Colors.redAccent,
            onPressed: (){},
            child: new Text(
              diyItem.isCheckOut? '已结清' : '未结清',
              style: new TextStyle(fontSize: 12.0)
            ),
          ),
        )
      ],
    );
  }
}