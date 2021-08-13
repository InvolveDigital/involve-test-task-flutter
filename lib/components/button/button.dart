import 'package:flutter/material.dart';
import 'package:bottomsheet/components/button/loading.dart';
import 'package:bottomsheet/schemata/text_schema.dart';
import 'package:bottomsheet/schemata/color_schema.dart';

class Button extends StatefulWidget {
  const Button(
      {Key? key,
      required this.onTap,
      required this.title,
      this.prefix,
      this.loading = false,
      this.type = 'primary'})
      : super(key: key);

  final GestureTapCallback onTap;
  final String title;
  final Widget? prefix;
  final bool loading;
  final String type;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    Color backgroundColor = ColorSchema.blue(context);
    Color highlightColor = ColorSchema.blueTap(context);
    Color color = Colors.white;
    GestureTapCallback onTap = widget.onTap;

    if (widget.loading) {
      onTap = () {};
      highlightColor = ColorSchema.blue(context);
    }

    switch (widget.type) {
      case "primary":
        {
          backgroundColor = ColorSchema.blue(context);
        }
        break;
      case "default":
        {
          backgroundColor = ColorSchema.headline(context);
          highlightColor = ColorSchema.utility3Swap(context);
        }
        break;
      case "black":
        {
          backgroundColor = Color(0xff191B1E);
          highlightColor = Color(0xff262628);
        }
        break;
      case "disabled":
        {
          backgroundColor = ColorSchema.utility1(context);
          highlightColor = ColorSchema.utility1(context);
          onTap = () => {};
        }
        break;
      case "ghost":
        {
          backgroundColor = Colors.transparent;
          highlightColor = Colors.transparent;
          color = ColorSchema.blue600(context);
        }
        break;
    }

    return Material(
      borderRadius: BorderRadius.all(
        Radius.circular(30),
      ),
      color: backgroundColor,
      child: InkWell(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        splashColor: Colors.transparent,
        highlightColor: highlightColor,
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 48,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.loading)
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Loading(),
                  ),
                ),
              if (widget.prefix != null)
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: widget.prefix,
                  ),
                ),
              Text(widget.title,
                  textAlign: TextAlign.center,
                  style: TextSchema.subheadline.copyWith(
                    fontWeight: FontWeight.w600,
                    color: color,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
