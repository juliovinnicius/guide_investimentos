// ignore_for_file: overridden_fields

import 'package:guide_investimentos/modules/chart_cariation/domain/entities/chart_entity.dart';

class YahooFinModel {
  Chart? chart;

  YahooFinModel({this.chart});

  YahooFinModel.fromJson(Map<String, dynamic> json) {
    chart = json['chart'] != null ? Chart.fromJson(json['chart']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (chart != null) {
      data['chart'] = chart!.toJson();
    }
    return data;
  }
}

class Chart {
  List<Result>? result;
  String? error;

  Chart({this.result, this.error});

  Chart.fromJson(Map<String, dynamic> json) {
    if (json['result'] != null) {
      result = <Result>[];
      json['result'].forEach((v) {
        result!.add(Result.fromJson(v));
      });
    }
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (result != null) {
      data['result'] = result!.map((v) => v.toJson()).toList();
    }
    data['error'] = error;
    return data;
  }
}

class Result {
  Meta? meta;
  List<int>? timestamp;
  Indicators? indicators;

  Result({this.meta, this.timestamp, this.indicators});

  Result.fromJson(Map<String, dynamic> json) {
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    timestamp = json['timestamp'].cast<int>();
    indicators = json['indicators'] != null ? Indicators.fromJson(json['indicators']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    data['timestamp'] = timestamp;
    if (indicators != null) {
      data['indicators'] = indicators!.toJson();
    }
    return data;
  }
}

class Meta {
  String? currency;
  String? symbol;
  String? exchangeName;
  String? instrumentType;
  int? firstTradeDate;
  int? regularMarketTime;
  int? gmtoffset;
  String? timezone;
  String? exchangeTimezoneName;
  double? regularMarketPrice;
  double? chartPreviousClose;
  int? priceHint;
  CurrentTradingPeriod? currentTradingPeriod;
  String? dataGranularity;
  String? range;
  List<String>? validRanges;

  Meta(
      {this.currency,
      this.symbol,
      this.exchangeName,
      this.instrumentType,
      this.firstTradeDate,
      this.regularMarketTime,
      this.gmtoffset,
      this.timezone,
      this.exchangeTimezoneName,
      this.regularMarketPrice,
      this.chartPreviousClose,
      this.priceHint,
      this.currentTradingPeriod,
      this.dataGranularity,
      this.range,
      this.validRanges});

  Meta.fromJson(Map<String, dynamic> json) {
    currency = json['currency'];
    symbol = json['symbol'];
    exchangeName = json['exchangeName'];
    instrumentType = json['instrumentType'];
    firstTradeDate = json['firstTradeDate'];
    regularMarketTime = json['regularMarketTime'];
    gmtoffset = json['gmtoffset'];
    timezone = json['timezone'];
    exchangeTimezoneName = json['exchangeTimezoneName'];
    regularMarketPrice = json['regularMarketPrice'];
    chartPreviousClose = json['chartPreviousClose'];
    priceHint = json['priceHint'];
    currentTradingPeriod =
        json['currentTradingPeriod'] != null ? CurrentTradingPeriod.fromJson(json['currentTradingPeriod']) : null;
    dataGranularity = json['dataGranularity'];
    range = json['range'];
    validRanges = json['validRanges'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['currency'] = currency;
    data['symbol'] = symbol;
    data['exchangeName'] = exchangeName;
    data['instrumentType'] = instrumentType;
    data['firstTradeDate'] = firstTradeDate;
    data['regularMarketTime'] = regularMarketTime;
    data['gmtoffset'] = gmtoffset;
    data['timezone'] = timezone;
    data['exchangeTimezoneName'] = exchangeTimezoneName;
    data['regularMarketPrice'] = regularMarketPrice;
    data['chartPreviousClose'] = chartPreviousClose;
    data['priceHint'] = priceHint;
    if (currentTradingPeriod != null) {
      data['currentTradingPeriod'] = currentTradingPeriod!.toJson();
    }
    data['dataGranularity'] = dataGranularity;
    data['range'] = range;
    data['validRanges'] = validRanges;
    return data;
  }
}

class CurrentTradingPeriod {
  Pre? pre;
  Pre? regular;
  Pre? post;

  CurrentTradingPeriod({this.pre, this.regular, this.post});

  CurrentTradingPeriod.fromJson(Map<String, dynamic> json) {
    pre = json['pre'] != null ? Pre.fromJson(json['pre']) : null;
    regular = json['regular'] != null ? Pre.fromJson(json['regular']) : null;
    post = json['post'] != null ? Pre.fromJson(json['post']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (pre != null) {
      data['pre'] = pre!.toJson();
    }
    if (regular != null) {
      data['regular'] = regular!.toJson();
    }
    if (post != null) {
      data['post'] = post!.toJson();
    }
    return data;
  }
}

class Pre {
  String? timezone;
  int? start;
  int? end;
  int? gmtoffset;

  Pre({this.timezone, this.start, this.end, this.gmtoffset});

  Pre.fromJson(Map<String, dynamic> json) {
    timezone = json['timezone'];
    start = json['start'];
    end = json['end'];
    gmtoffset = json['gmtoffset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['timezone'] = timezone;
    data['start'] = start;
    data['end'] = end;
    data['gmtoffset'] = gmtoffset;
    return data;
  }
}

class Indicators {
  List<Quote>? quote;
  List<Adjclose>? adjclose;

  Indicators({this.quote, this.adjclose});

  Indicators.fromJson(Map<String, dynamic> json) {
    if (json['quote'] != null) {
      quote = <Quote>[];
      json['quote'].forEach((v) {
        quote!.add(Quote.fromJson(v));
      });
    }
    if (json['adjclose'] != null) {
      adjclose = <Adjclose>[];
      json['adjclose'].forEach((v) {
        adjclose!.add(Adjclose.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (quote != null) {
      data['quote'] = quote!.map((v) => v.toJson()).toList();
    }
    if (adjclose != null) {
      data['adjclose'] = adjclose!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Quote extends ChartEntity {
  @override
  List<double>? volume;
  @override
  List<double>? high;
  @override
  List<double>? open;
  @override
  List<double>? low;
  @override
  List<double>? close;

  Quote({this.volume, this.high, this.open, this.low, this.close});

  Quote.fromJson(Map<String, dynamic> json) {
    volume = json['volume'].cast<int>();
    high = json['high'].cast<double>();
    open = json['open'].cast<int>();
    low = json['low'].cast<double>();
    close = json['close'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['volume'] = volume;
    data['high'] = high;
    data['open'] = open;
    data['low'] = low;
    data['close'] = close;
    return data;
  }
}

class Adjclose {
  List<double>? adjclose;

  Adjclose({this.adjclose});

  Adjclose.fromJson(Map<String, dynamic> json) {
    adjclose = json['adjclose'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['adjclose'] = adjclose;
    return data;
  }
}
