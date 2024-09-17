import 'package:flutter/material.dart';

import 'investment_dashboard.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("For You Today"),
          actions: [
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          ],
        ),
        backgroundColor: Colors.grey[200],
        body: const InvestmentDashboard(),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Investment Strategies',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: InvestmentScreen(),
//     );
//   }
// }
//
// class InvestmentScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('For You Today'),
//         actions: [
//           IconButton(icon: Icon(Icons.search), onPressed: () {}),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Stable Income',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               'Low risk\n10,982 participants',
//               style: TextStyle(color: Colors.grey),
//             ),
//             SizedBox(height: 10),
//             Container(
//               padding: EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.purple,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     '6.24% per year',
//                     style: TextStyle(color: Colors.white, fontSize: 18),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(primary: Colors.white),
//                     child: Text(
//                       'View',
//                       style: TextStyle(color: Colors.purple),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Investing Strategies',
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Expanded(
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//                 children: [
//                   buildStrategyCard('The Big Long', '15.16% per year', Colors.orange),
//                   buildStrategyCard('Aggressive Growth', '159% per year', Colors.red),
//                   buildStrategyCard('Best Projects', '46.22% per year', Colors.green),
//                   buildStrategyCard('Strategy 2022', '26.08% per year', Colors.blue),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget buildStrategyCard(String title, String subtitle, Color color) {
//     return Card(
//       color: color.withOpacity(0.1),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               title,
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Text(subtitle),
//           ],
//         ),
//       ),
//     );
//   }
// }

/*
 Scaffold(
      appBar: AppBar(
        title: Text('For You Today'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
 */
