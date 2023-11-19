class FunctionAppData {
  final String title;
  final String subtitle;
  final String icon;

  FunctionAppData({
    required this.title,
    required this.subtitle,
    required this.icon,
  });
}

final List<FunctionAppData> listItem = [
  FunctionAppData(
    title: 'Address',
    subtitle: 'Phnom Penh City',
    icon: 'asset/icon/location.png',
  ),
  FunctionAppData(
    title: 'Nification',
    subtitle: 'Phnom Penh City',
    icon: 'asset/icon/notification.png',
  ),
  FunctionAppData(
    title: 'Security',
    subtitle: 'Phnom Penh City',
    icon: 'asset/icon/security.png',
  ),
  FunctionAppData(
    title: 'Support',
    subtitle: 'Phnom Penh City',
    icon: 'asset/icon/support.png',
  )
];
