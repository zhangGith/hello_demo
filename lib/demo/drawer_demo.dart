
import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text('waddf', style: TextStyle(fontWeight: FontWeight.bold)), 
                  accountEmail: Text('wwwww.email.net'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('http://www.chachaba.com/news/uploads/180807/5034_180807170636_1.jpg'),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow[400],
                    image: DecorationImage(
                      image: NetworkImage('http://file06.16sucai.com/2016/0430/d786891a4907f0f6bbdb1006a3e8cfed.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.5), BlendMode.hardLight),
                    )
                  ),
                ),

                ListTile(
                  title: Text('message'.toLowerCase(), textAlign: TextAlign.right,),
                  trailing: Icon(Icons.access_time, size: 20.0,),
                  onTap: () => Navigator.pop(context),
                ), 

                ListTile(
                  title: Text('message'.toLowerCase(), textAlign: TextAlign.right,),
                  trailing: Icon(Icons.access_time, size: 20.0,),
                  onTap: () => Navigator.pop(context),
                ), 
                ListTile(
                  title: Text('message'.toLowerCase(), textAlign: TextAlign.right,),
                  trailing: Icon(Icons.access_time, size: 20.0,),
                  onTap: () => Navigator.pop(context),
                ), 
              ],
            ),
          );
  }
}