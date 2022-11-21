import 'package:get/get.dart';
import 'package:guide_investimentos/modules/chart_cariation/domain/entities/chart_entity.dart';

import 'package:guide_investimentos/modules/chart_cariation/domain/usecases/get_chart_information_usecase.dart';
import 'package:guide_investimentos/modules/chart_cariation/infra/model/yahoo_fin_model.dart';

class ChartCreationController extends GetxController {
  final GetChartInformationUsecase getChartInformationUsecase;

  ChartCreationController(this.getChartInformationUsecase);

  ChartEntity? chartEntity;
  RxBool isLoading = false.obs;

  getInformation() async {
    isLoading.value = true;

    var result = await getChartInformationUsecase(1644548400, 1668881468);
    result.fold((l) => print(l), (r) => chartEntity = r);

    isLoading.value = false;

    update();
  }
}
