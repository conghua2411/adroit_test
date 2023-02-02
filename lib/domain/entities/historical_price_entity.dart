class HistoricalPriceEntity {
  DateTime date;
  num open;
  num high;
  num low;
  num close;
  num adjClose;
  num volume;
  num unadjustedVolume;
  num change;
  num changePercent;
  num vwap;
  String label;
  num changeOverTime;

  HistoricalPriceEntity({
    required this.date,
    required this.open,
    required this.high,
    required this.low,
    required this.close,
    required this.adjClose,
    required this.volume,
    required this.unadjustedVolume,
    required this.change,
    required this.changePercent,
    required this.vwap,
    required this.label,
    required this.changeOverTime,
  });
}
