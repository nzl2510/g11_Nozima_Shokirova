import 'package:flutter/material.dart';

import 'coin_list_tile.dart';
import 'investment_card.dart';

class InvestmentDashboard extends StatelessWidget {
  const InvestmentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.deepPurple[300],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Stable Income",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Low risk\n10,982 participants",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "6.24%",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "per year",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.purple,
                    ),
                    child: const Text("View", style: TextStyle(),),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Investing Strategies",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                InvestmentCard("The Big Long", "15.16%", Colors.green),
                InvestmentCard("Aggressive Growth", "159%", Colors.red),
                InvestmentCard("Best Projects", "46.22%", Colors.green),
                InvestmentCard("Strategy 2022", "26.08%", Colors.green),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              "Coin Lists",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const CoinListTile("Bitcoin", "BTCB", "\$16,963.58", "-0.12%"),
            const CoinListTile("Ethereum", "ETH", "\$1,259.10", "+1.15%"),
            const CoinListTile("Tether", "USDT", "\$1.01", "+0.01%"),
            const CoinListTile("Binance Coin", "BNB", "\$288.01", "+0.76%"),
            const CoinListTile("USD Coin", "USDC", "\$0.9999", "-0.02%"),
            const CoinListTile("Binance USD", "BUSD", "\$1.00", "-0.01"),
            const CoinListTile("XRP", "XRP", "\$0.3891", "+2.54%"),
            const CoinListTile("Dogecoin", "DOGE", "\$0.1012", "-0.17%"),
            const CoinListTile("Cardano", "ADA", "\$0.3196", "+0.09"),
            const CoinListTile("Polygon", "MATIC", "\$0.9082", "+2.18%"),
          ],
        ),
      ),
    );
  }
}
