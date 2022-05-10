import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgButtonWidget extends StatelessWidget {
  final String cardName;
  final Color dividerColor;
  final Color iconColor;

  const SvgButtonWidget({
    Key? key,
    required this.cardName,
    Color? dividerColor,
    Color? iconColor,
  })  : dividerColor = dividerColor ?? Colors.grey,
        iconColor = iconColor ?? Colors.blue,
        super(key: key);

  InkWell renderCard(
    BuildContext context,
    String cardName,
    int index,
    int? counter,
    Color dividerColor,
    Color textColor,
    Color iconColor,
    void Function() onPress,
  ) {
    return InkWell(
      onTap: onPress,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                cardName,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: textColor,
                    ),
              ),
              Divider(
                color: dividerColor,
              ),
              Spacer(flex: 1),
              SvgPicture.string(
                '<svg width="65" height="65" viewBox="0 0 65 65" xmlns="w3.org/2000/svg"> '
                '<g fill="none" fill-rule="evenodd"> '
                '<path d="M8 0h49a8 8 0 0 1 8 8v49a8 8 0 0 1-8 8H8a8 8 0 0 1-8-8V8a8 8 0 0 1 8-8z" fill="#FFF" opacity=".198"/> '
                '<path d="M32 27v12m-6-6h12" stroke="#FFF" stroke-width="2.25" stroke-linecap="round"/> '
                '</g>'
                ' </svg>',
                color: iconColor,
              ),
              Spacer(flex: 1),
              Text(
                'ADD DOCUMENT',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return renderCard(
      context,
      'String cardName',
      0,
      0,
      dividerColor,
      iconColor,
      iconColor,
      () {
        print('Pressed');
      },
    );
    /*return InkWell(
      onTap: () {
        print('NIce');
      },
      child: Card(
        elevation: 0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              cardName,
            ),
            Divider(
              color: dividerColor,
            ),
            SvgPicture.string(
              '<svg width="65" height="65" viewBox="0 0 65 65" xmlns="w3.org/2000/svg"> '
              '<g fill="none" fill-rule="evenodd"> '
              '<path d="M8 0h49a8 8 0 0 1 8 8v49a8 8 0 0 1-8 8H8a8 8 0 0 1-8-8V8a8 8 0 0 1 8-8z" fill="#FFF" opacity=".198"/> '
              '<path d="M32 27v12m-6-6h12" stroke="#FFF" stroke-width="2.25" stroke-linecap="round"/> '
              '</g>'
              ' </svg>',
              color: iconColor,
            ),
          ],
        ),
      ),
    )*/
    ;
  }
}
