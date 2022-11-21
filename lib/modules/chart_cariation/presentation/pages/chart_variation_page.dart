import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guide_investimentos/modules/chart_cariation/presentation/controller/chart_creation_controller.dart';

class ChartVariationPage extends StatefulWidget {
  const ChartVariationPage({super.key});

  @override
  State<ChartVariationPage> createState() => _ChartVariationPageState();
}

class _ChartVariationPageState extends State<ChartVariationPage> {
  final controller = Get.find<ChartCreationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Guide Investimentos",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Obx(
        () => controller.isLoading.value
            ? Container(
                height: 20,
                width: 20,
                color: Colors.amber,
              )
            : Container(
                height: 20,
                width: 20,
                color: Colors.red,
              ),
      ),
    );
  }
}
