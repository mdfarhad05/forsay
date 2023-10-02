import 'package:app/tabs.dart/livematches_tab.dart';
import 'package:app/tabs.dart/recentmatches_tab.dart';
import 'package:app/tabs.dart/upcomingmatches_tabs.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: Text(
              'FORSAY',
            ),
            centerTitle: true),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // 1st tab
                  livematches(),
                  // 2nd tab
                  upcominmatches(),
                  //3rd tab
                  recentmatches()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
