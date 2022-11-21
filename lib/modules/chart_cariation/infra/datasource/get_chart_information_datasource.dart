import 'package:guide_investimentos/modules/chart_cariation/infra/model/yahoo_fin_model.dart';

abstract class GetChartInformationDatasource {
  Future<YahooFinModel> getInformation(int initialPeriod, int finalPeriod);
}
