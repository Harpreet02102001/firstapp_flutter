import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("Inventory AI"),
          actions: [Icon(Icons.search), Icon(Icons.person)],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                //  decoration: BoxDecoration(
                //  color: Colors.blue.shade100,
                //  borderRadius: BorderRadius.circular(30),
                // ),
                child: Row(
                  children: [
                    const Icon(Icons.inventory),
                    const SizedBox(width: 10),
                    const Text(
                      'Welcome, Admin',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
              // Container(
              //   padding: const EdgeInsets.all(20),
              //   decoration: BoxDecoration(
              //     color: Colors.blue.shade100,
              //     borderRadius: BorderRadius.circular(30),
              //   ),
              //   child: Row(
              //     children: [
              //       const Icon(Icons.production_quantity_limits_sharp),
              //      const SizedBox(width: 10, height: 20,),
              //
              //      const Text('Customer'),
              //     ],
              //   ),
              // ),
              DashboardCard(icon: Icons.people, title: 'Customer'),
              SizedBox(height: 20),
              // Container(
              //   padding: EdgeInsets.all(20),
              //   decoration: BoxDecoration(
              //   color: Colors.blue.shade100,
              //     borderRadius: BorderRadius.circular(30),
              //   ),
              //   child: Row(
              //     children: [
              //       const Icon(Icons.card_giftcard_rounded),
              //       const SizedBox(width: 10),
              //       const Text('Products'),
              //     ],
              //   ),
              // ),
              DashboardCard(icon: Icons.inventory_2, title: 'Products'),
              SizedBox(height: 20),
              // Container(
              //     padding: const EdgeInsets.all(20),
              //     decoration: BoxDecoration(
              //     color: Colors.blue.shade100,
              //     borderRadius: BorderRadius.circular(30),
              //   ),
              //   child: Row(
              //     children: [
              //       const Icon(Icons.bookmark_border ),
              //       const SizedBox(width: 10) ,
              //       const Text('Orders')
              //     ],
              //   ),
              // ),
              DashboardCard(icon: Icons.shopping_cart, title: "Reports"),
              SizedBox(height: 20),
              // Container(
              //   padding: const EdgeInsets.all(20),
              //   decoration: BoxDecoration(
              //     color: Colors.blue.shade100,
              //     borderRadius: BorderRadius.circular(30),
              //   ),
              //   child: Row(
              //     children: [
              //       Icon(Icons.report),
              //       const SizedBox(width: 10),
              //       const Text('Reports')
              //     ],
              //   ),
              // ),
              DashboardCard(icon: Icons.bar_chart, title: "Orders"),
            ],
          ),
        ),
      ),
    ),
  );
}

class DashboardCard extends StatelessWidget {
  // this is a constructor property
  const DashboardCard({
    super.key,
    required this.icon,
    required this.title,
    // required this.icon,
  });
  final IconData icon;
  final String title;
  // final IconData icon;

  @override
  Widget build(BuildContext context) {
    //this (widget build ) returns the UI Widget
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 10),
          Expanded(child: Text(title, style: const TextStyle(fontSize: 16))),
          // Text(
          //   title,
          //   style: const TextStyle(fontSize: 16),
          // ),
          // Text("120"),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
