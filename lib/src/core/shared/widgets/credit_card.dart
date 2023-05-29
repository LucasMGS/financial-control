import 'dart:math';
import 'package:flutter/material.dart';
import 'package:monetine/src/core/shared/widgets/back_card.dart';
import 'package:monetine/src/core/shared/widgets/front_card.dart';

class CreditCard extends StatefulWidget {
  final String titularCartao;
  final String numCartao;
  const CreditCard({
    Key? key,
    required this.titularCartao,
    required this.numCartao,
  }) : super(key: key);

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  bool _isFlipped = false;
  double angle = 0;

  void _flip() {
    setState(() {
      angle = (angle + pi) % (2 * pi);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _flip,
      child: TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: 0, end: angle),
        duration: const Duration(milliseconds: 300),
        child: const BackCard(
          closeDate: '16/09',
          expirationDate: '17/09',
        ),
        builder: (context, value, child) {
          if (value >= (pi / 2)) {
            _isFlipped = true;
          } else {
            _isFlipped = false;
          }
          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(value),
            child: !_isFlipped
                ? FrontCard(
                    titular: widget.titularCartao,
                    numero: widget.numCartao,
                  )
                : Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..rotateY(pi),
                    child: child,
                  ),
          );
        },
      ),
    );
  }
}
