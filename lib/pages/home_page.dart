import 'package:flutter/material.dart';
import 'package:active_programe/pages/diy_add_dialog.dart';
import 'package:active_programe/mode/diy_project.dart';
import 'package:active_programe/ui/diy_list_show.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  final String _title = '活动展示';

  List<DiyProject> _diyProjects = [
    new DiyProject('多肉种植', '2018-11-2', '万达广场', '苏苏', 'images/4.jpg', 30, 50, 1500, 500, 300, 700, false),
    new DiyProject('彩绘尤克里里', '2018-10-22', '寰宇城', '盼盼', 'images/2.jpg', 20, 30, 600, 500, 500, 1500, false),
    new DiyProject('小饼干制作', '2018-9-15', '滨江新城', '磊磊', 'images/3.jpg', 40, 50, 2000, 600, 200, 800, false),
    new DiyProject('小饼干制作', '2018-9-15', '滨江新城', '磊磊', 'images/1.jpg', 40, 50, 2000, 600, 200, 800, false),
    new DiyProject('小饼干制作', '2018-9-15', '滨江新城', '磊磊', 'images/5.png', 40, 50, 2000, 600, 200, 800, false),
  ];

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.face), onPressed: () {},)
          ],
          bottom: new TabBar(
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              new Text('全部(${_diyProjects.length})'),
              new Text('未结(${_diyProjects.length})'),
              
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index){
                return new DiyListShow(diyItem:_diyProjects[index]);
              },
            ),
            new Center(
              child: new Text('这是未结页面'),
            )
          ],
        ),
         
        bottomNavigationBar:  new BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.favorite),
                onPressed: () {},
              ),
              new IconButton(
                icon: new Icon(Icons.format_line_spacing),
                onPressed: () {},
              )
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              new MaterialPageRoute(builder: (context) {
                return new DiyAddDialog();
              })
            );
          },
          child: new Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
    
  }
}