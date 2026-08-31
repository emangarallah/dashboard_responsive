import 'package:dashboard/models/all_expensess_item_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/all_expensess_item_header.dart';
import 'package:flutter/material.dart';

class InActiveExpensessItem extends StatelessWidget {
  const InActiveExpensessItem({super.key, required this.itemModel});

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensessItemHeader(image: itemModel.image),
            const SizedBox(height: 34),
            Text(itemModel.title, style: AppStyles.styleMedium16(context)),
            const SizedBox(height: 8),
            Text(itemModel.date, style: AppStyles.styleRegular14(context)),
            Text(itemModel.price, style: AppStyles.styleSemiBold24(context)),
          ],
        ),
      ),
    );
  }
}

class ActiveExpensessItem extends StatelessWidget {
  const ActiveExpensessItem({super.key, required this.itemModel});

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Container(
        decoration: ShapeDecoration(
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFF4EB7F2)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensessItemHeader(
              imageBackground: Colors.white.withAlpha(2),
              imageColor: Colors.white,
              image: itemModel.image,
            ),
            const SizedBox(height: 34),
            Text(
              itemModel.title,
              style: AppStyles.styleMedium16(context)
                  .copyWith(color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(
              itemModel.date,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xFFFAFAFA)),
            ),
            Text(
              itemModel.price,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}