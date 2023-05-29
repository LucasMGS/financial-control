import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monetine/src/core/shared/widgets/credit_card.dart';

class CreditCardSlider extends StatefulWidget {
  const CreditCardSlider({
    Key? key,
  }) : super(key: key);

  @override
  State<CreditCardSlider> createState() => _CreditCardSliderState();
}

class _CreditCardSliderState extends State<CreditCardSlider> {
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0, keepPage: true);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 270,
          width: context.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: PageView(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CreditCard(
                      numCartao: '797979797979999',
                      titularCartao: 'Lucas Moreira',
                    ),
                    CreditCard(
                      numCartao: '79797979791321239',
                      titularCartao: 'Lucas asdasd',
                    ),
                    CreditCard(
                      numCartao: '4585165161541654',
                      titularCartao: 'Lucas Moreira',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
              'Aperte no cartão para ver a data de vencimento e a data de fechamento'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  size: 35,
                ),
                color: Colors.white,
                onPressed: () {
                  pageController.previousPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.arrow_forward,
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
