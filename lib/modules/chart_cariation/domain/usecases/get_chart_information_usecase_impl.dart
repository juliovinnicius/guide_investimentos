import 'package:dartz/dartz.dart';

import 'package:guide_investimentos/modules/chart_cariation/domain/entities/chart_entity.dart';
import 'package:guide_investimentos/modules/chart_cariation/domain/errors/error.dart';
import 'package:guide_investimentos/modules/chart_cariation/domain/repositories/get_chart_information_repository.dart';
import 'package:guide_investimentos/modules/chart_cariation/domain/usecases/get_chart_information_usecase.dart';

class GetChartInformationUsecaseImpl implements GetChartInformationUsecase {
  final GetChartInformationRepositoy repository;

  GetChartInformationUsecaseImpl({required this.repository});

  @override
  Future<Either<Failure, ChartEntity?>> call(int initialPeriod, int finalPeriod) async {
    if (finalPeriod == 0 || initialPeriod == 0 || finalPeriod < initialPeriod) {
      return Left(InvalidDate());
    }

    return repository.getChartInformation(initialPeriod, finalPeriod);
  }
}
