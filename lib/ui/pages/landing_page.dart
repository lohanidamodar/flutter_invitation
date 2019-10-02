import 'package:finvitation/ui/res/assets.dart';
import 'package:finvitation/ui/res/styles.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: kToolbarHeight),
          Text(
            "Invitations",
            style: Theme.of(context)
                .textTheme
                .display1
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Text.rich(
            TextSpan(children: [
              TextSpan(text: "A smarter way to hold "),
              TextSpan(text: "events", style: primaryText),
            ]),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius:
                    BorderRadius.only(topRight: Radius.circular(60.0)),
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: Center(child: Image.asset(INVITE_ILLUSTRATION))),
                  const SizedBox(height: 20.0),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 8.0),
                    child: RaisedButton(
                      highlightElevation: 0,
                      elevation: 0,
                      child: Text("Create an Account"),
                      textColor: Theme.of(context).primaryColor,
                      color: Colors.white,
                      onPressed: () => Navigator.pushNamed(context, 'auth'),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 8.0),
                    child: OutlineButton(
                      highlightElevation: 0,
                      borderSide: BorderSide(color: Colors.white),
                      child: Text("Sign in with Google"),
                      textColor: Colors.white,
                      color: Colors.white,
                      onPressed: () =>Navigator.pushNamed(context, 'auth'),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(text: "Already have an account? "),
                      WidgetSpan(
                          child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Sign in",
                          style: whiteBoldText,
                        ),
                      ))
                    ]),
                    style: whiteText,
                  ),
                  const SizedBox(height: 30.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
