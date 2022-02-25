import 'package:flutter/material.dart';
import 'data_model.dart';
import 'pill_details_page.dart';

class PillTile extends StatelessWidget {
  final Pill pill;

  PillTile({required this.pill});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(
        color: Colors.blueAccent,
        width: 1.0,
      ),
              borderRadius: BorderRadius.circular(15.0),

            ),
            child: ListTile(
              leading: Hero(
                tag: pill.id,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(pill.hinhurl),
                ),
              ),
              title: Text('${pill.name}'),
              subtitle: Text(pill.nhomthuoc),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.lightBlueAccent,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PillDetailsPage(pill: pill)));
              },
            ),
          ),
        ],
      ),
    );
  }
}
