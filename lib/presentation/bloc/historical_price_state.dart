part of 'historical_price_cubit.dart';

@immutable
abstract class HistoricalPriceState {}

class HistoricalPriceInitial extends HistoricalPriceState {}

class HistoricalPriceError extends HistoricalPriceState {
  final String message;

  HistoricalPriceError(this.message);
}

class HistoricalPriceDataLoaded extends HistoricalPriceState {
  final List<HistoricalPriceEntity> listHistoricalPrice;

  HistoricalPriceDataLoaded(this.listHistoricalPrice);
}
