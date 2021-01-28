import 'package:flutter/material.dart';

class GetCaseFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.blueGrey.shade50,
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Get Files:",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
                    ),
                  ),
                  Container(
                    width: 300,
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16.0))),
                            //errorText: snapshot.error,
                            hintStyle: TextStyle(color: Colors.red))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: FlatButton.icon(
                      label: Text("Select "),
                      icon: Icon(Icons.attach_file),
                      onPressed: () {},
                      color: Colors.blueGrey.shade50,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  border: Border.all(color: Colors.blueGrey, width: 1)),
              child: MediaQuery.of(context).size.width<100?Container():GridView.builder(
                  shrinkWrap: true,
                  addRepaintBoundaries: false,
                  itemCount: 20,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 5,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.all(8),
                      alignment: Alignment.topCenter,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          color: Colors.white,
                          border:
                              Border.all(color: Colors.blueGrey, width: .2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              "file " + index.toString(),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: IconButton(
                              onPressed: () {},
                              alignment: Alignment.topCenter,
                              icon: Icon(
                                Icons.close,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
