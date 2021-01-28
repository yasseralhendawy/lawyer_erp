import 'package:flutter/material.dart';

import 'layouts/ourClientsLayouts/add_new_client.dart';
import 'layouts/ourClientsLayouts/our_clients_layout.dart';

class ClientsScreen extends StatefulWidget {
  @override
  _ClientsScreenState createState() => _ClientsScreenState();
}

class _ClientsScreenState extends State<ClientsScreen>
    with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: TabBar(
        controller: tabController,
        tabs: <Widget>[
          Text(
            "Our Clients",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            "Add new Client ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
        labelColor: Colors.indigo.shade300,
        unselectedLabelColor: Colors.black38,
        indicatorColor: Colors.indigo,
        labelPadding: EdgeInsets.all(10),
      ),
      body: TabBarView(controller: tabController, children: [
        ClientsLayout(),
        AddNewClientOffice(),
      ]),
    );
  }
}
