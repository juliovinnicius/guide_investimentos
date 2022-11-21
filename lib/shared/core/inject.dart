import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:guide_investimentos/modules/chart_cariation/domain/repositories/get_chart_information_repository.dart';
import 'package:guide_investimentos/modules/chart_cariation/domain/usecases/get_chart_information_usecase.dart';
import 'package:guide_investimentos/modules/chart_cariation/domain/usecases/get_chart_information_usecase_impl.dart';
import 'package:guide_investimentos/modules/chart_cariation/external/datasource/get_information_chart_datasource_impl.dart';
import 'package:guide_investimentos/modules/chart_cariation/infra/datasource/get_chart_information_datasource.dart';
import 'package:guide_investimentos/modules/chart_cariation/infra/repositories/get_chart_information_repository_impl.dart';
import 'package:guide_investimentos/modules/chart_cariation/presentation/controller/chart_creation_controller.dart';

class Inject extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dio>(() => Dio());

    Get.lazyPut<GetChartInformationDatasource>(() => GetInformationChartDatasourceImpl(dio: Get.find()));

    Get.lazyPut<GetChartInformationRepositoy>(() => GetChartInformationRepositoryImpl(datasource: Get.find()));

    Get.lazyPut<GetChartInformationUsecase>(() => GetChartInformationUsecaseImpl(repository: Get.find()));

    Get.lazyPut<ChartCreationController>(() => ChartCreationController(Get.find()));
  }
}
