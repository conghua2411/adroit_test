import 'dart:convert';

import 'package:adroit/data/dto/historical_prices_symbol_dto.dart';
import 'package:adroit/domain/entities/historical_prices_symbol_entity.dart';
import 'package:adroit/domain/repository/historical_price_repository.dart';

import 'package:http/http.dart' as http;

class RemoteHistoricalPriceRepository extends HistoricalPriceRepository {
  @override
  Future<HistoricalPricesSymbolEntity> getHistoricalPricesSymbol({
    required String symbol,
  }) async {
    var response = await http.get(
      Uri.parse(
        'https://financialmodelingprep.com/api/v3/historical-price-full/$symbol?apikey=972a40ec3fd15d05e91131e1feb80be2',
      ),
    );

    if (response.statusCode == 200) {
      return HistoricalPricesSymbolDto.fromJson(
        jsonDecode(response.body),
      );
    } else {
      return Future.error(
        response.body,
      );
    }
  }
}
