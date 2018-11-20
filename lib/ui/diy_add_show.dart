import 'package:flutter/material.dart';
import 'package:active_programe/mode/date_format.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class DiyAddShow extends StatefulWidget {
  @override
  DiyAddShowState createState() => new DiyAddShowState();

}

class DiyAddShowState extends State<DiyAddShow> {
  //实例化已选择的时间并赋予初始值是当前时间；
  DateTime _selectedDate = DateTime.now();
  //活动名称输入框控制器
  TextEditingController _nameTextEditingController = new TextEditingController();
  //活动地点输入控制器
  TextEditingController _placeTextEditingController = new TextEditingController();
  //活动联系人输入框控制器
  TextEditingController _contactTextEditingController = new TextEditingController();
  // 活动单价输入框控制器
  TextEditingController _singlePriceTextEditingController = new TextEditingController();
  //活动份数输入框控制器 
  TextEditingController _numsTextEditingController = new TextEditingController();
  //活动物料成本输入框控制器
  TextEditingController _itemCostTextEditingController = new TextEditingController();
  //活动人员成本输入框控制器
  TextEditingController _laborCostTextEditingController =new TextEditingController();
  //图片地址
  File _imagePath;

  //活动文字文字输入
  Widget _infoTextField ( IconData icon, TextEditingController controller, String hint ){
    return new Padding(
      padding: const EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 0.0),
      child: new TextField(
        autofocus: true,
        controller: controller,
        decoration: new InputDecoration(icon: new Icon(icon), hintText: hint),
      ),
    );
   }

  //活动价格份数信息输入框封装
  Widget _amountTextField(TextEditingController controller, String labelText, String prefixText, String suffixText) {
    return new TextField(
      //键盘类型适用于登录

      keyboardType: TextInputType.numberWithOptions(signed: true),
      controller: controller,
      /*
        输入框装饰：
        包含边框，标题。提示文本 后缀文本
       */
      decoration: new InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        prefixText: prefixText,
        suffixText: suffixText,
        suffixStyle: new TextStyle(color: Colors.green),
      ),
    );
  }
  //从本地相册获取图片
  Future _getImagePath () async {
    File  file = await ImagePicker.pickImage(source: ImageSource.gallery);
    // String path = file.path;
    if(file != null) {
      setState(() {
        _imagePath = file;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    //safeArea是安全区域小控件，通过足够的填充来保护其子控件，以避免显示内容被系统级元素覆盖或出现异常。
    return new SafeArea(
      top: false,
      bottom: false,
      child: new ListView(
        children: <Widget>[
          new DatePicker(
            selectedDate: _selectedDate,
            selectDate: (DateTime date) {
              setState(() {
                    _selectedDate = date;      
              });
            },
          ),
          _infoTextField(Icons.spa, _nameTextEditingController, '活动名称'),
          _infoTextField(Icons.my_location, _placeTextEditingController, '活动地点'),
          _infoTextField(Icons.tag_faces, _contactTextEditingController, '联系人'),
          new Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0.0),
            child: new Row(
              children: <Widget>[

                new Expanded(
                  child: _amountTextField(_singlePriceTextEditingController, '活动单价', '\¥', 'CNY'),
                ),
                new SizedBox(
                  width: 10.0,
                ),
                new Expanded(
                  child: _amountTextField(_numsTextEditingController, '活动份数', '\@', '份'),
                )
              ],
            ),
          ),
          new Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0.0),
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: _amountTextField(_itemCostTextEditingController, '物流成本', '\¥', 'CNY'),
                ),
                new SizedBox(
                  width: 10.0,
                ),
                new Expanded(
                  child: _amountTextField(_laborCostTextEditingController, '人员成本', '\¥', 'CNY'),
                )
              ],
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(18.0),
            child: new SizedBox(
              height: 120.0,
              child: new Container(
                decoration: new BoxDecoration(
                  border: new Border.all(color: Colors.grey),
                  borderRadius: new BorderRadius.circular(5.0),
                ),
                child: new InkWell(
                  onTap: () => _getImagePath(),
                  child: _imagePath == null
                  ?new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Icon(Icons.photo,size: 40.0, color: Theme.of(context).primaryColor),
                      new Text('从相册选取图片')
                    ],
                  )
                  : new Image.file(
                    _imagePath,
                    fit: BoxFit.cover
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}