import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController.addListener(_handleTabIndex);
  }

  void _handleTabIndex() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.message),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff075E54),
        title: Text('WhatsApp'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 15,
              child: Tab(
                icon: Icon(Icons.camera_alt),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width / 5,
                child: Tab(text: "CHATS")),
            Container(
                width: MediaQuery.of(context).size.width / 5,
                child: Tab(text: "STATUS")),
            Container(
                width: MediaQuery.of(context).size.width / 5,
                child: Tab(text: "CALLS")),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, i) => Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://media-exp2.licdn.com/dms/image/C5603AQFqKjtGNxHmqg/profile-displayphoto-shrink_800_800/0?e=1584576000&v=beta&t=gJ_uRcWij2iFG4BF28SR2x2oBQCkNUvPaFl5jjbr2ag"),
              ),
              title: Text("HS Bawa"),
              subtitle: Text("Sir Placement Kra do Sidhant Bhaiya ki."),
              trailing: Text("Now"),
            ),
            Divider(
              indent: 70.0,
              height: 0.0,
            ),
          ],
        ),
      ),
    );
  }
}
