import 'Login.dart';
import 'package:flutter/material.dart';

class Custom_Checkbox extends StatefulWidget {

  double? size;
  double? iconSize;
  Function onChange;
  Color? backgroundColor;
  Color? iconColor;
  Color? borderColor;
  IconData? icon;
  bool isChecked;
  Custom_Checkbox({
    Key? key,
    this.size,
    this.iconSize,
    this.backgroundColor,
    this.iconColor,
    this.borderColor,
    required this.isChecked,
    required this.onChange,
      }) : super(key: key);

  @override

  _Custom_CheckboxState createState() => _Custom_CheckboxState();
}

class _Custom_CheckboxState extends State<Custom_Checkbox> {
  bool isChecked = false;
  @override
  void initState(){
    super.initState();
    isChecked=widget.isChecked;
  }
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          isChecked = !isChecked;
          widget.onChange(isChecked);
        });
      },
      child:
      AnimatedContainer(
        height:widget.size ?? 25,
        width:widget.size ?? 25,
        duration:const Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn,
        decoration: BoxDecoration(
          color:isChecked? widget.backgroundColor ?? Color(0xffff0202):Colors.transparent,
          border: Border.all (color: widget.iconColor ??  Colors.black),
        ),
        child:isChecked ?
         Icon
          (
           widget.icon ??
            Icons.check,
            color: widget.iconColor ?? Colors.white,
          size:widget.iconSize ?? 20,
          ):null,
      ),
    );
  }
}
