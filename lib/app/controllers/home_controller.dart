import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:with_pagination_getx/app/models/model.dart';
import 'package:with_pagination_getx/app/providers/provider.dart';

class HomeController extends GetxController {
  var lstTask = List<dynamic>.empty(growable: true).obs;
  // var lstTask = List<Restaurant>().obs;
  var page = 0;
  var isDataProcessing = false.obs;

  //pagination...
  ScrollController scrollController = ScrollController();
  var isMoreDataAvailable = true.obs;

  @override
  void onInit() {
    super.onInit();
    getData(page);
    //pagination call..
    paginateTask();
  }

  void paginateTask() {
    print('paginitation call');
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        print('end reached--------------------------------');
        page++;
        print('page$page');
        update();
        getMoreTask(page);
      }
    });
  }

  void getMoreTask(int page) {
    try {
      TaskProvider().getTask(page).then((value) {
        if (value.length > 0) {
          isMoreDataAvailable(true);
        } else {
          isMoreDataAvailable(false);
          print('no more items');
        }
        lstTask.addAll(value);
      }, onError: (err) {
        isMoreDataAvailable(false);
        print(err);
      });
    } catch (e) {
      isMoreDataAvailable(false);
      print(e);
    }
  }

  void getData(var page) {
    try {
      isDataProcessing(true);
      TaskProvider().getTask(page).then((value) {
        isDataProcessing(false);
        lstTask.addAll(value);
      }, onError: (err) {
        isDataProcessing(false);
        print(err);
      });
    } catch (e) {
      isDataProcessing(false);
      print(e);
    }
  }
}
