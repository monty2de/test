
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsonse/controller/api_controller.dart';


class HomePageX extends StatelessWidget {
  final productController = Get.put(ApiControllerWithGetx());
  HomePageX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: GetX<ApiControllerWithGetx>(initState: (state) {
                  Get.find<ApiControllerWithGetx>().index();
                }, builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.alldata.length,
                    itemBuilder: (BuildContext context, int position) {
                      return Column(
                        children: List.generate(1, (index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, bottom: 30),
                            child: Row(
                              children: <Widget>[
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      controller.alldata[position].title,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          controller.alldata[position].id,
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    )
                                  ],
                                ))
                              ],
                            ),
                          );
                        }),
                      );
                    },
                  );
                }),
              )
            ],
          ),
        ));
  }
}