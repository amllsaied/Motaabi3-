enum ApplicationStatus {
  applied('تم التقديم'),
  inReview('قيد المراجعة'),
  interview('مقابلة'),
  offer('عرض'),
  rejected('مرفوض'),
  withdrawn('منسحب');

  final String label;
  const ApplicationStatus(this.label);
}