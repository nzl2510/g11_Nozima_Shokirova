import 'package:flutter/material.dart';

class CoinListTile extends StatelessWidget {
  final String coinName;
  final String coinSymbol;
  final String price;
  final String change;

  const CoinListTile(this.coinName, this.coinSymbol, this.price, this.change,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding:
          const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      title:
          Text(coinName, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(coinSymbol),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(price,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(change,
              style: TextStyle(
                  color: change.contains('+') ? Colors.green : Colors.red)),
        ],
      ),
    );
  }
}
