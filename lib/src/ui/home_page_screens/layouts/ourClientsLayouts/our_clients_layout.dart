import 'package:flutter/material.dart';
import 'package:lawyer_erp/src/ui/client_page/client_page.dart';
import 'package:lawyer_erp/src/ui/widgets/card_with_Icon_and_desc.dart';

class ClientsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> filter = [
      "All",
      "Individual",
      "Group",
      "Company",
    ];
    String selectedFilter;
    return Container(
      padding: EdgeInsets.all(50),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 200,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0))),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30.0,
                            color: Colors.indigo.shade300,
                          ),
                          hintText: 'Search ',
                          hintStyle: TextStyle(color: Colors.blueGrey),
                        ),
                      ),
                    ),
                    MediaQuery.of(context).size.width>650?Container(width: MediaQuery.of(context).size.width-650,):Container(),
                    Container(
                      width: 200,
                      child: DropdownButton(
                        hint: Text("Filter"),
                        isExpanded: true,
                        onChanged: (String newValue) {
                          selectedFilter = newValue;
                        },
                        value: selectedFilter,
                        items: filter
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  fontSize: 16, color: Colors.indigo.shade300),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 700,
              child:MediaQuery.of(context).size.width<250?Container(): GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 500.0,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 2,
                  ),itemCount: 20,shrinkWrap: true,addRepaintBoundaries: true,addAutomaticKeepAlives: false,
                  itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ClientPage()));
                          },
                          child: CardsWithIconAndDesc(
                            type: CardsWithIconAndDescType.Client,
                            placeHolder: "assets/placeholder.png",
                            cardTitle: "Client Name",
                            cardContent:
                            "Some infromation about our clients or short description",
                            titleFontSize: 20,
                            contentSize: 14,
                            cardColor: Colors.white,
                          ),
                        );
                      }),
            ),
          ],
        ),
      ),
    );
  }
}
