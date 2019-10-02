import 'package:finvitation/ui/res/assets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
          )
        ),
        title: Text("Birthday Party"),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            onPressed: () {},
            child: Text("Skip"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(INVITE_ILLUSTRATION),
              ),
              title: Text(
                "Damodar Lohani",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Kathmandu",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(color: Colors.grey.shade300),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10.0,
                      color: Theme.of(context).primaryColor,
                      offset: Offset(2, 2),
                    ),
                  ]),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                          height: 200.0,
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.1),
                          padding: const EdgeInsets.all(16.0),
                          width: double.infinity,
                          child: Image.asset(
                            INVITE_ILLUSTRATION,
                            fit: BoxFit.contain,
                          )),
                      Positioned(
                        right: 0,
                        top: 60.0,
                        child: MaterialButton(
                          elevation: 0,
                          textColor: Colors.white,
                          minWidth: 0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 4.0,
                            horizontal: 10.0,
                          ),
                          child: Icon(Icons.keyboard_arrow_right),
                          color: Theme.of(context).primaryColor,
                          onPressed: () {},
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 60.0,
                        child: MaterialButton(
                          elevation: 0,
                          textColor: Colors.white,
                          minWidth: 0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 4.0,
                            horizontal: 10.0,
                          ),
                          child: Icon(Icons.keyboard_arrow_left),
                          color: Theme.of(context).primaryColor,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 8.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.thumb_up,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(width: 5.0),
                        Text("75631"),
                        Spacer(),
                        Container(
                          height: 20.0,
                          width: 1.0,
                          color: Colors.grey,
                        ),
                        Spacer(),
                        Icon(Icons.comment),
                        const SizedBox(width: 5.0),
                        Text("213"),
                        Spacer(),
                        Container(
                          height: 20.0,
                          width: 1.0,
                          color: Colors.grey,
                        ),
                        Spacer(),
                        Icon(Icons.calendar_today),
                        Spacer(),
                        Container(
                          height: 20.0,
                          width: 1.0,
                          color: Colors.grey,
                        ),
                        Spacer(),
                        Icon(Icons.location_on),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Card(
                    elevation: 5.0,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Birthday Party"),
                            Text("Event Name"),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text("2019/3/4"),
                            Text("Event Date")
                          ],
                        ),
                      ]),
                    ),
                  ),
                  Card(
                    elevation: 5.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("New Delhi"),
                            Text("Venue"),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[Text("14:33:00"), Text("Time")],
                        ),
                      ]),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        child: Row(
          children: <Widget>[
            const SizedBox(width: 10.0),
            _buildButton(context, "Accept", true),
            Spacer(),
            _buildButton(context, "Reject", false),
            Spacer(),
            _buildButton(context, "Maybe", false),
            const SizedBox(width: 10.0),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String title, bool active) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: active
              ? Border(
                  top: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 2.0,
                  ),
                )
              : null,
        ),
        child: Text(
          title,
          style: TextStyle(
              color: active
                  ? Theme.of(context).primaryColor
                  : Colors.grey.shade600,
              fontSize: 16.0,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
