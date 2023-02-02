import 'package:adroit/domain/entities/historical_prices_symbol_entity.dart';
import 'historical_price_dto.dart';

class HistoricalPricesSymbolDto extends HistoricalPricesSymbolEntity {
  HistoricalPricesSymbolDto({
    required super.symbol,
    required super.historicalPrices,
  });

  factory HistoricalPricesSymbolDto.fromJson(Map<String, dynamic> json) {
    return HistoricalPricesSymbolDto(
      symbol: json['symbol'],
      historicalPrices: (json['historical'] as List)
          .map(
            (historicalPrice) => HistoricalPriceDto.fromJson(historicalPrice),
          )
          .toList(),
    );
  }
}
