import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expense_manager/screens/category.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<String> _tabs = ["Home", "Category", "Report"];

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: _tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Expense Manager"),
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.category)),
              Tab(icon: Icon(Icons.report)),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Center(
                child: Text(
                  "Home",
                  style: Theme
                      .of(context)
                      .textTheme
                      .display1,
                )),
            CategoryPage(),
            Center(
                child: Text(
                  "Reports",
                  style: Theme
                      .of(context)
                      .textTheme
                      .display1,
                ))
          ],
        ));
  }
}

class DashboardPage extends StatelessWidget {
  String getStringDate(DateTime dt) {
    return "${dt.year}/${dt.month}/${dt.day}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Container(
            padding: EdgeInsets.all(12.0),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    getStringDate(DateTime.now()),
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward),
                )
              ],
            ))
      ]),
    );
  }
}