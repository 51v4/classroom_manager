import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'dashboard_viewmodel.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: const [
          Scaffold(),
          Scaffold(),
          Scaffold(),
        ].elementAt(model.currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey[200],
          currentIndex: model.currentIndex,
          onTap: model.setIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Students',
              icon: Icon(Icons.person_outline),
            ),
            BottomNavigationBarItem(
              label: 'Subjects',
              icon: Icon(Icons.book_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Classrooms',
              icon: Icon(Icons.meeting_room_outlined),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => DashboardViewModel(),
    );
  }
}
