import 'package:flutter/material.dart';

class InvestmentCard extends StatelessWidget {
  final String title;
  final String percentage;
  final Color percentageColor;

  const InvestmentCard(this.title, this.percentage, this.percentageColor,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            percentage,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: percentageColor,
            ),
          ),
        ],
      ),
    );
  }
}
/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Investment Strategies',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InvestmentScreen(),
    );
  }
}

class InvestmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('For You Today'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Stable Income',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Low risk\n10,982 participants',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '6.24% per year',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Text(
                      'View',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Investing Strategies',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  buildStrategyCard('The Big Long', '15.16% per year', Colors.orange),
                  buildStrategyCard('Aggressive Growth', '159% per year', Colors.red),
                  buildStrategyCard('Best Projects', '46.22% per year', Colors.green),
                  buildStrategyCard('Strategy 2022', '26.08% per year', Colors.blue),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStrategyCard(String title, String subtitle, Color color) {
    return Card(
      color: color.withOpacity(0.1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(subtitle),
          ],
        ),
      ),
    );
  }
}
*/
