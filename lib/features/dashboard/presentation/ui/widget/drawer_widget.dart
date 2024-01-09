import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    final name = 'Abdurahman Idris';
    final email = 'abcd@gmail.com';
    final urlImage =
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngwing.com%2Fen%2Ffree-png-aztay&psig=AOvVaw1V31gCV8rvuBaiNZIovoZO&ust=1704877073960000&source=images&cd=vfe&ved=0CBIQjRxqFwoTCOC82qX4z4MDFQAAAAAdAAAAABAE';

    return Drawer(
      child: ListView(
        padding:
            const EdgeInsets.all(0), //used to remove white space on the top
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                    'https://th.bing.com/th/id/R.4f01e37735b39d310e1998c599b14f26?rik=j3MLp1Pw1RYB6g&pid=ImgRaw&r=0'),
                // image: AssetImage('assets/images/world_map.png'),
                fit: BoxFit.cover,
              ), // Set your desired background color here
            ),
            accountName: const Text('Abdurahman Idris'),
            // accountName: const Text('${widget.name}'),
            accountEmail: const Text('abcd@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/ab.jpg',
                ),
              ),
            ),
          ),

          /*const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(),
          ),*/
          //DrawerHeader
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(' My Profile '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.pin),
            title: const Text(' Change PIN '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text(' Notifications '),
            onTap: () {
              Navigator.pop(context);
            },
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '8',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: const Icon(Icons.unsubscribe),
            title: const Text(' Unsubscribe '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('LogOut'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
