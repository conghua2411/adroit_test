import '../entities/historical_prices_symbol_entity.dart';

abstract class HistoricalPriceRepository {
  Future<HistoricalPricesSymbolEntity> getHistoricalPricesSymbol({
    required String symbol,
  });
}
