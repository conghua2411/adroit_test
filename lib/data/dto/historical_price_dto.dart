import 'package:adroit/domain/entities/historical_price_entity.dart';

class HistoricalPriceDto extends HistoricalPriceEntity {
  HistoricalPriceDto({
    required String date,
    required super.open,
    required super.high,
    required super.low,
    required super.close,
    required super.adjClose,
    required super.volume,
    required super.unadjustedVolume,
    required super.change,
    required super.changePercent,
    required super.vwap,
    required super.label,
    required super.changeOverTime,
  }) : super(
          date: DateTime.parse(date),
        );

  factory HistoricalPriceDto.fromJson(Map<String, dynamic> json) {
    return HistoricalPriceDto(
      date: json['date'],
      open: json['open'],
      high: json['high'],
      low: json['low'],
      close: json['close'],
      adjClose: json['adjClose'],
      volume: json['volume'],
      unadjustedVolume: json['unadjustedVolume'],
      change: json['change'],
      changePercent: json['changePercent'],
      vwap: json['vwap'],
      label: json['label'],
      changeOverTime: json['changeOverTime'],
    );
  }
}
