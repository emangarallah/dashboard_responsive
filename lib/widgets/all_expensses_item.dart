import 'package:dashboard/models/all_expensess_item_model.dart';

import 'package:dashboard/widgets/inactive_and_active_all_expensess_item.dart';
import 'package:flutter/material.dart';

class AllExpenssesItem extends StatelessWidget {
  const AllExpenssesItem({
    super.key,
    required this.itemModel,
    required this.isSelexted,
  });
  final AllExpensesItemModel itemModel;
  final bool isSelexted;

  @override
  Widget build(BuildContext context) {
    return isSelexted
        ? ActiveExpensessItem(itemModel: itemModel)
        : InActiveExpensessItem(itemModel: itemModel);
  }
}
