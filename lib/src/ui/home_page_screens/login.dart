import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginWidget extends StatefulWidget {
  final double width;
  final double height;
  final AssetImage
      image; // TODO: const this image in the package with collins logo
  final VoidCallback loginOnPressed;

  LoginWidget(
      {this.loginOnPressed,
      @required this.height,
      @required this.width,
      this.image,
      Key key})
      : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget>
    with SingleTickerProviderStateMixin {
  TextEditingController _userNameController;
  TextEditingController _passwordController;

  AnimationController _animationController;

  @override
  void initState() {
    _userNameController = new TextEditingController();
    _passwordController = new TextEditingController();
    _animationController = new AnimationController(
      vsync: this,
      duration: Duration(seconds: 6),
      reverseDuration: Duration(seconds: 15),
    )..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        border: Border.all(color: Colors.blueGrey, width: .5),
        backgroundBlendMode: BlendMode.colorDodge,
        // color: Colors.indigo.shade300,
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100,
                padding: const EdgeInsets.fromLTRB(18.0,5,18,5),
                child: ScaleTransition(
                  scale: _animationController,
                  child: Image(
                    image: widget.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(18.0,5,18,5),
                child: TextFormField(
                  controller: _userNameController,
                  // onTap: () {},
                  maxLines: 1,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      labelText: "User Name ",
                      labelStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey)),
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintStyle: TextStyle(color: Colors.red)),
                ),
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(18.0,5,18,5),
                child: TextFormField(
                  controller: _passwordController,
                  // onTap: () {},
                  maxLines: 1,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.blueGrey,
                        //  fontWeight: FontWeight.bold,
                        // fontSize: 20
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey)),
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintStyle: TextStyle(color: Colors.red)),
                ),
              ),
              Container(
                height: 50,
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  onPressed: widget.loginOnPressed,
                  child: Text("Login"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
