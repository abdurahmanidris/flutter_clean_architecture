import 'package:flutter/material.dart';
import 'package:flutter_gorouter_riverpod/features/dashboard/presentation/ui/widget/drawer_widget.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('Home Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home Screen'),
            ElevatedButton.icon(
              onPressed: () {
                GoRouter.of(context).push('/productDetail/100');
              },
              icon: const Icon(Icons.next_plan),
              label: const Text('Product Detail'),
            )
          ],
        ),
      ),
    );
  }
}
