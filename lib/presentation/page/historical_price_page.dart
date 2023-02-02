import 'package:adroit/data/repository/remote/remote_historical_price_repository.dart';
import 'package:adroit/domain/usecases/get_historical_price_symbol.dart';
import 'package:adroit/presentation/bloc/historical_price_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoricalPricePage extends StatelessWidget {
  const HistoricalPricePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoricalPriceCubit, HistoricalPriceState>(
      bloc: HistoricalPriceCubit(
        getHistoricalPriceSymbol: GetHistoricalPriceSymbol(
          RemoteHistoricalPriceRepository(),
        ),
      )..getHistoricalPrice(),
      builder: _buildHistorical,
    );
  }

  Widget _buildHistorical(
    BuildContext context,
    HistoricalPriceState state,
  ) {
    if (state is HistoricalPriceDataLoaded) {
      return ListView.builder(
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              '${state.listHistoricalPrice[index].open}',
              style: const TextStyle(color: Colors.black),
            ),
          );
        },
        itemCount: state.listHistoricalPrice.length,
      );
    } else {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
