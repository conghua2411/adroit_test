import 'package:adroit/domain/entities/historical_prices_symbol_entity.dart';
import 'package:adroit/domain/usecases/get_historical_price_symbol.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/historical_price_entity.dart';

part 'historical_price_state.dart';

class HistoricalPriceCubit extends Cubit<HistoricalPriceState> {
  HistoricalPriceCubit({
    required GetHistoricalPriceSymbol getHistoricalPriceSymbol,
  })  : _getHistoricalPriceSymbol = getHistoricalPriceSymbol,
        super(HistoricalPriceInitial());

  final GetHistoricalPriceSymbol _getHistoricalPriceSymbol;

  Future<void> getHistoricalPrice() async {
    try {
      HistoricalPricesSymbolEntity historicalPricesSymbolEntity =
          await _getHistoricalPriceSymbol(
        symbol: 'AAPL',
      );

      emit(
        HistoricalPriceDataLoaded(
          historicalPricesSymbolEntity.historicalPrices,
        ),
      );
    } catch (e) {
      emit(HistoricalPriceError('$e'));
    }
  }
}
