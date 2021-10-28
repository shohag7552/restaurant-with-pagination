import 'dart:convert';

import 'package:get/get.dart';
import 'package:with_pagination_getx/app/combine/headers.dart';
import 'package:with_pagination_getx/app/models/model.dart';

class TaskProvider extends GetConnect {
  Future<List<dynamic>> getTask(var page) async {
    try {
      final response = await get(
        'https://demo.6amtech.com/stackfood/api/v1/restaurants/get-restaurants/all?offset=$page&limit=10',
        headers: await CustomHeaders.getHeader(),
      );
      if (response.status.hasError) {
        return Future.error(response.statusText);
      } else {
        response.body['restaurants'];
        print(response.body['restaurants']);
        return response.body['restaurants'];
        // var data = json.decode(response.body);
        // print(data);
        // List restaurants = data['restaurants'];
        // print(restaurants);
        // return restaurants.map((e) => Restaurant.fromJson(e)).toList();
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
