import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:go_router/go_router.dart';
// import 'package:flutter_gorouter_riverpod/features/dashboard/presentation/controller/dashboard_controller.dart';

class NavbarWidget extends ConsumerStatefulWidget {
  const NavbarWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends ConsumerState<NavbarWidget> {
  @override
  Widget build(BuildContext context) {
    // final position = ref.watch(dashboardControllerProvider);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Abdurahman',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
