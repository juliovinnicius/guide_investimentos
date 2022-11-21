import 'package:dio/dio.dart';
import 'package:guide_investimentos/modules/chart_cariation/domain/errors/error.dart';

import 'package:guide_investimentos/modules/chart_cariation/infra/datasource/get_chart_information_datasource.dart';
import 'package:guide_investimentos/modules/chart_cariation/infra/model/yahoo_fin_model.dart';

class GetInformationChartDatasourceImpl implements GetChartInformationDatasource {
  final Dio dio;
  GetInformationChartDatasourceImpl({required this.dio});

  @override
  Future<YahooFinModel> getInformation(int initialPeriod, int finalPeriod) async {
    Response response = await dio.get(
        'https://query2.finance.yahoo.com/v8/finance/chart/EGIE3.SA?period1=1644548400&period2=1668881468&useYfid=true&interval=1d');

    if (response.statusCode == 200) {
      final result = YahooFinModel.fromJson(response.data);

      return result;
    } else {
      throw DataSourceError();
    }
  }
}
