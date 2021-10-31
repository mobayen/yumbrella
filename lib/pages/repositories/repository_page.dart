import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yumbrella/repositoriex/restaurant_repository.dart' as s_repo;
import 'package:yumbrella/repositories/restaurant_repository.dart' as i_repo;

class RepositoryPage extends StatelessWidget {
  const RepositoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RxString outputS = ''.obs;
    RxString outputD = ''.obs;

    i_repo.RestaurantRepository restaurantRepo = i_repo.RestaurantRepository();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing static/dynamic classes'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // NOTE: static test()
              s_repo.RestaurantRepository.test();
              // NOTE: static property
              outputS.value = s_repo.RestaurantRepository.collection ?? '';
            },
            child: const Text('static (s): collection name'),
          ),
          Obx(() => Text("(c): $outputS")),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              // NOTE: instance test() method
              restaurantRepo.test();
              // NOTE: instance property
              outputD.value = restaurantRepo.collection;
            },
            child: const Text('instance (i): collection name'),
          ),
          Obx(() => Text("(i): $outputD"))
        ],
      ),
    );
  }
}
