import 'package:flutter/material.dart';

class GenderWidget extends StatefulWidget{
  //IconData? icon
  final IconData icon;
  final String txt;
  const GenderWidget({super.key,required this.icon, required this.txt});
  @override
  State<StatefulWidget> createState() => GenderWidgetState();
}
class GenderWidgetState extends State<GenderWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          isSelected = true;
        });
      },
        child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isSelected? Colors.blueGrey[600]:Colors.grey[500]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Icon(widget.icon, size: 150),
          ),
          Container(
            child: Text(widget.txt, style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 35)),
          )
        ],
      ),
    )
    );
  }
}