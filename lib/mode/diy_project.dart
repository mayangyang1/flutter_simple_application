class DiyProject {
  int _id; //项目id
  String _name; //项目名称
  String _date; //项目时间
  String _place; //项目地点
  String _contact; //项目联系人
  String _imagePath; //项目照片地址

  int _singlePrice; //项目单价
  int _nums; //项目份数
  int _totalAmount; //项目总价
  int _itemConst; //物流成本
  int _laborCost; //人员成本
  int _profit; //项目利润

  bool _isCheckOut; //欠款是否结清

  //活动项目构造函数
  DiyProject(
    this._name,
    this._date,
    this._place,
    this._contact,
    this._imagePath,
    this._singlePrice,
    this._nums,
    this._totalAmount,
    this._itemConst,
    this._laborCost,
    this._profit,
    this._isCheckOut,
  );

  /*
   * 获取活动项目各属性值方法
   */

  String get name => _name;
  String get date => _date;
  String get place => _place;
  String get contact => _contact;
  String get imagePath => _imagePath;

  int get id => _id;
  int get singlePrice => _singlePrice;
  int get nums => _nums;
  int get totalAmount => _totalAmount;
  int get itemConst => _itemConst;
  int get laborCost => _laborCost;
  int get  profit => _profit;
  bool get isCheckOut => _isCheckOut;
}