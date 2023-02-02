import 'package:adroit/domain/repository/historical_price_repository.dart';

import '../entities/historical_prices_symbol_entity.dart';

class GetHistoricalPriceSymbol {
  final HistoricalPriceRepository _historicalPriceRepository;

  GetHistoricalPriceSymbol(this._historicalPriceRepository);

  Future<HistoricalPricesSymbolEntity> call({required String symbol}) {
    return _historicalPriceRepository.getHistoricalPricesSymbol(
      symbol: symbol,
    );
  }
}
