import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final Widget? child;
  const NeuBox({
    Key? key,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(4, 4)
          ),
          BoxShadow(
              color: Colors.grey,
              blurRadius: 0,
              offset: const Offset(0, 0)
          ),
        ],
      ),
      child: child,
    );
  }
}
