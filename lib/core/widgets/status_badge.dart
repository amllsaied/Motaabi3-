import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class StatusBadge extends StatelessWidget {
  final String status;

  const StatusBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final (bgColor, textColor) = _getStatusColors(status);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        status,
        style: TextStyle(
          color: textColor,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  (Color, Color) _getStatusColors(String status) {
    switch (status) {
      case 'تم التقديم':
        return (AppColors.appliedLight, AppColors.applied);
      case 'قيد المراجعة':
        return (AppColors.inReviewLight, AppColors.inReview);
      case 'مقابلة':
        return (AppColors.interviewLight, AppColors.interview);
      case 'عرض':
        return (AppColors.offerLight, AppColors.offer);
      case 'مرفوض':
        return (AppColors.rejectedLight, AppColors.rejected);
      default:
        return (AppColors.withdrawnLight, AppColors.withdrawn);
    }
  }
}