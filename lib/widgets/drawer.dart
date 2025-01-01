import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    
    final imageUrl="https://media.licdn.com/dms/image/v2/D5603AQHXJweFDASvNg/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1726398906982?e=1740614400&v=beta&t=kILIryheDmiIcZ1sIQ8XWTk06RITsziONwimHT5Z0rU";
    return Drawer(
      child: Container(
        color: Colors.deepPurpleAccent,
        // margin:EdgeInsets.only(top: 30),
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent
                  ),
                  margin: EdgeInsets.zero,
                    accountName: Text("Azim"),
                    accountEmail: Text("azim@gmail.com"),
                    currentAccountPicture:CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ) ,
                ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,color: Colors.white,
              ),
              title: Text("HOME",
                textScaleFactor: 1.2,
                style: TextStyle(
                color: Colors.white,
              ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.settings,color: Colors.white,
              ),
              title: Text("SETTINGS",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,color: Colors.white,
              ),
              title: Text("PROFILE",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,color: Colors.white,
              ),
              title: Text("E-Mail",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
