import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/all_expense_item_header_model.dart';

class AllExpenseItemHeader extends StatelessWidget {
  const AllExpenseItemHeader(
      {super.key,
      required this.allExpenseItemHeaderModel,
      required this.colorContainer,
      required this.colorIcon,
      required this.colorIcon2});

  final AllExpenseItemHeaderModel allExpenseItemHeaderModel;

  final Color colorContainer, colorIcon, colorIcon2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: colorContainer,
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    allExpenseItemHeaderModel.image,
                    colorFilter: ColorFilter.mode(colorIcon, BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        Transform.rotate(
          angle: -1.5707963268 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: colorIcon2,
          ),
        )
      ],
    );
  }
}
