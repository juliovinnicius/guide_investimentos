import 'package:dartz/dartz.dart';

import 'package:guide_investimentos/modules/chart_cariation/domain/entities/chart_entity.dart';
import 'package:guide_investimentos/modules/chart_cariation/domain/errors/error.dart';
import 'package:guide_investimentos/modules/chart_cariation/domain/repositories/get_chart_information_repository.dart';
import 'package:guide_investimentos/modules/chart_cariation/infra/datasource/get_chart_information_datasource.dart';

class GetChartInformationRepositoryImpl implements GetChartInformationRepositoy {
  final GetChartInformationDatasource datasource;
  GetChartInformationRepositoryImpl({required this.datasource});

  @override
  Future<Either<Failure, ChartEntity?>> getChartInformation(int initialPeriod, int finalPeriod) async {
    try {
      final result = await datasource.getInformation(initialPeriod, finalPeriod);

      return Right(result.chart!.result![0].indicators!.quote![0]);
    } catch (e) {
      return Left(DataSourceError());
    }
  }
}
