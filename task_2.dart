// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Task_5'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: const Text('Option 1'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Option 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dashboard',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Last Update: 7 Aug 2023'),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: <Widget>[
                  _buildDashboardButton(Icons.help_outline, 'MCQS'),
                  _buildDashboardButton(Icons.search, 'Search'),
                  _buildDashboardButton(Icons.description, 'Paper'),
                  _buildDashboardButton(Icons.picture_as_pdf, 'PDF'),
                  _buildDashboardButton(Icons.work, 'Jobs'),
                  _buildDashboardButton(Icons.info, 'About'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardButton(IconData icon, String label) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        // elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.all(16),
      ),
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40),
          const SizedBox(height: 10),
          Text(label),
        ],
      ),
    );
  }
}
