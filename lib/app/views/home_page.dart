import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:with_pagination_getx/app/combine/hendel_theme.dart';
import 'package:with_pagination_getx/app/controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: const Text(
          'Restaurant Page',
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Get.isDarkMode
              //     ? Get.changeTheme(ThemeData.light())
              //     : Get.changeTheme(ThemeData.dark());
              HendelTheme().submitTheme();
            },
            icon: Icon(Icons.wb_sunny_outlined),
          ),
        ],
      ),
      body: Obx(() {
        if (controller.isDataProcessing.value == true) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          if (controller.lstTask.length > 0) {
            return ListView.builder(
                itemCount: controller.lstTask.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                controller: controller.scrollController,
                itemBuilder: (context, index) {
                  if (index == controller.lstTask.length - 1 &&
                      controller.isMoreDataAvailable.value == true) {
                    //  Get.find<HomeController>().paginateTask();
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              // padding: const EdgeInsets.all(10),
                              height: 100,
                              width: double.infinity,
                              child: Image.network(
                                'https://demo.6amtech.com/stackfood/storage/app/public/restaurant/cover/${controller.lstTask[index]['cover_photo']}',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              controller.lstTask[index]['name'],
                              style: const TextStyle(fontSize: 18),
                            ),
                            Text(
                              controller.lstTask[index]['phone'],
                              style: const TextStyle(fontSize: 12),
                            ),
                            Text(
                              controller.lstTask[index]['address'],
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                });
          } else {
            return Center(
              child: Text('Data not found'),
            );
          }
        }
      }),
    );
  }
}
