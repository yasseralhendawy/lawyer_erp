import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lawyer_erp/src/models/service.dart';
import 'package:lawyer_erp/src/ui/widgets/card_with_Icon_and_desc.dart';

class ServicePage extends StatelessWidget {
  final int index;

  ServicePage({this.index, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            // color: Colors.indigo.shade300,
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('assets/wall.jpg'),
                colorFilter: ColorFilter.mode(
                    Colors.indigo.withOpacity(0.1), BlendMode.dstATop),
                fit: BoxFit.fill),
          ),
        ),
        leading: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          //  color: Colors.white,
          child: FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('assets/wall.jpg'),
              colorFilter: ColorFilter.mode(
                  Colors.blueGrey.withOpacity(0.1), BlendMode.dstATop),
              fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Container(
                width: 400,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        height: 200,
                        alignment: Alignment.center,
                        child: CardsWithIconAndDesc(
                          type: CardsWithIconAndDescType.Service,
                          placeHolder: "assets/placeholder.png",
                          cardTitle: Service.myDemo[index].title,
                          cardContent: "",
                          cardColor: Colors.white,
                          titleFontSize: 20,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height>300?MediaQuery.of(context).size.height-300:0,
                   //     width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(16.0),
                              topRight: Radius.circular(16.0)),
                          border: Border.all(color: Colors.blueGrey, width: .5),
                          color: Colors.white,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                            right: BorderSide(width: .1))),
                                    padding: EdgeInsets.only(right: 18),
                                    child: Text(
                                      "Full description",
                                      textAlign: TextAlign.start,
                                      textWidthBasis:
                                          TextWidthBasis.longestLine,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Flexible(
                                    child: Container(
                                      child: Text(
                                        Service.myDemo[index].shortDescription,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 16,),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 400,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            border: Border(
                                                top: BorderSide(width: 0.2))),
                                        margin: EdgeInsets.only(top: 10),
                                        padding:
                                            EdgeInsets.only(right: 18, top: 28),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "requirment title",
                                              textAlign: TextAlign.start,
                                              textWidthBasis:
                                                  TextWidthBasis.longestLine,
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight:
                                                      FontWeight.w700),
                                            ),
                                            Flexible(
                                                child: Text(
                                                  "",
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                ))
                                          ],
                                        ),
                                      );
                                    }),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width>400?MediaQuery.of(context).size.width-400:0,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(16.0),
                      topRight: Radius.circular(16.0)),
                  border: Border.all(color: Colors.blueGrey, width: .5),
                  color: Colors.white,
                ),
                child: pageBody(context),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget pageBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 50,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16.0))),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30.0,
                          color: Colors.blueGrey.shade300,
                        ),
                        hintText: 'Search ',
                        hintStyle: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                  ),
                  MediaQuery.of(context).size.width>900?Container(width: MediaQuery.of(context).size.width-900,):Container(),
                  Container(
                    width: 200,
                    child: Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      Text("Only open Cases"),
                      CupertinoSwitch(
                        value: true,
                        onChanged: (value) {},
                        trackColor: Colors.blueGrey.shade50,
                        activeColor: Colors.indigo.shade300,
                      ),
                    ],),
                  )
                ],
              ),
            ),
          ),
          MediaQuery.of(context).size.width<450?Container(): Container(
            height: MediaQuery.of(context).size.height>100?MediaQuery.of(context).size.height-100:0,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300.0,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0,
                  childAspectRatio: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          border: Border.all(color: Colors.blueGrey, width: .5),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Flexible(
                              //fit: FlexFit.loose,
                              flex: 4,
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height,
                                // color: Colors.blueGrey,
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "Case Name",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                                flex: 7,
                                child: Row(
                                  //  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                      //fit: FlexFit.loose,
                                      flex: 2,
                                      child:  Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: MediaQuery.of(context).size.height,
                                        padding: EdgeInsets.all(10),
                                        alignment: Alignment.center,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Flexible(
                                              child: Text("Case ID"),
                                            ),
                                            Flexible(child: Text("Lawyer name"))
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      //fit: FlexFit.loose,
                                        flex: 2,
                                        child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context).size.height,
                                          alignment: Alignment.center,
                                          //   color: Colors.blueGrey,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Flexible(
                                                child: Text("Client ID"),
                                              ),
                                              Flexible(child: Text("1-1-2020"))
                                            ],
                                          ),
                                        ))
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 50,
                addRepaintBoundaries: false),
          ),
        ],
      ),
    );
  }

}
