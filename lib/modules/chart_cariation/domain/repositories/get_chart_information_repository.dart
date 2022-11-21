import 'package:dartz/dartz.dart';
import 'package:guide_investimentos/modules/chart_cariation/domain/entities/chart_entity.dart';
import 'package:guide_investimentos/modules/chart_cariation/domain/errors/error.dart';

abstract class GetChartInformationRepositoy {
  Future<Either<Failure, ChartEntity?>> getChartInformation(int initialPeriod, int finalPeriod);
}
