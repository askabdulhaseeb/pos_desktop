import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({
    required TextEditingController controller,
    this.width = 280,
    Key? key,
  })  : _controller = controller,
        super(key: key);
  final TextEditingController _controller;
  final double width;

  @override
  PasswordTextFormFieldState createState() => PasswordTextFormFieldState();
}

class PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool _notVisible = true;
  void _onListener() => setState(() {});
  @override
  void initState() {
    widget._controller.addListener(_onListener);
    super.initState();
  }

  @override
  void dispose() {
    widget._controller.removeListener(_onListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      margin: const EdgeInsets.all(4),
      child: TextFormField(
        controller: widget._controller,
        obscureText: _notVisible,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Password',
          suffixIcon: IconButton(
            onPressed: () => setState(() {
              _notVisible = !_notVisible;
            }),
            splashRadius: Utilities.iconBorderRadius,
            icon: (_notVisible == true)
                ? const Icon(CupertinoIcons.eye, size: 20)
                : const Icon(CupertinoIcons.eye_slash, size: 20),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Utilities.borderRadious),
          ),
        ),
      ),
    );
  }
}
