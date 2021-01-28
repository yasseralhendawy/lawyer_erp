import 'package:flutter/material.dart';
import 'package:lawyer_erp/src/models/service.dart';
import 'package:lawyer_erp/src/ui/service_page/service_page.dart';
import 'package:lawyer_erp/src/ui/widgets/card_with_Icon_and_desc.dart';

class MyServicesLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child:MediaQuery.of(context).size.width<250?Container(): GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 450.0,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
          childAspectRatio: 1,
        ),
        itemCount: Service.myDemo.length,
        shrinkWrap: true,addRepaintBoundaries: true,addAutomaticKeepAlives: false,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ServicePage(
                    index: index,
                  )));
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CardsWithIconAndDesc(
                  type: CardsWithIconAndDescType.Service,
                  placeHolder: "assets/placeholder.png",
                  cardTitle: Service.myDemo[index].title,
                  cardContent: Service.myDemo[index].shortDescription,
                  contentSize: 16,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
