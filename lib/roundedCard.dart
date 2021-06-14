import 'package:flutter/material.dart';

class RoundedCard extends StatefulWidget {
  const RoundedCard({
    Key? key,
    this.topic = "none",
    this.selected = false,
  }) : super(key: key);

  final String topic;
  final bool selected;

  @override
  _RoundedCardState createState() => _RoundedCardState();
}

class _RoundedCardState extends State<RoundedCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: Color(0xffff6565),
          width: 3,
        ),
      ),
      color: widget.selected ? Color(0xffff6565) : Colors.white,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 9,
            horizontal: 16,
          ),
          child: Text(
            widget.topic,
            style: TextStyle(
              color: widget.selected ? Colors.white : Color(0xffff6565),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
