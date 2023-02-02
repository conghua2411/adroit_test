import 'historical_price_entity.dart';

class HistoricalPricesSymbolEntity {
  String symbol;
  List<HistoricalPriceEntity> historicalPrices;

  HistoricalPricesSymbolEntity({
    required this.symbol,
    required this.historicalPrices,
  });
}
