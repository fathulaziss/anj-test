import 'package:anj_test/app/modules/list_data/controllers/list_data_controller.dart';
import 'package:anj_test/widgets/pages/page_default.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ListDataView extends GetView<ListDataController> {
  const ListDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return PageDefault(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              ...controller.listData.map((element) {
                return InkWell(
                  onTap: () {
                    controller.goToDetail(element);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        Text(
                          DateFormat('dd-MM-yyyy HH:mm:ss')
                              .format(DateTime.parse(element['date'])),
                        ),
                        const SizedBox(height: 4),
                        const Divider(color: Colors.black),
                      ],
                    ),
                  ),
                );
              })
            ],
          ),
        ),
      );
    });
  }
}
