class RecentFile {
  final String icon, title, date, size;

  RecentFile(
      {required this.icon,
      required this.title,
      required this.date,
      required this.size});
}

List<RecentFile> demoResentFiles = [
  RecentFile(
      icon: 'assets/icons/xd_file.svg',
      title: 'Xd Files',
      date: '01-03-2021',
      size: '3.5MB'),
  RecentFile(
      icon: 'assets/icons/Figma_file.svg',
      title: 'Figma File',
      date: '01-02-2021',
      size: '19.0MB'),
  RecentFile(
      icon: 'assets/icons/doc_file.svg',
      title: 'Documents',
      date: '23-03=2021',
      size: '32.5MB'),
  RecentFile(
      icon: 'assets/icons/excle_file.svg',
      title: 'Excel Files',
      date: '01-03-2021',
      size: '3.5MB'),
  RecentFile(
    icon: 'assets/icons/media_file.svg',
    title: 'Media Files',
    date: '01-03-2021',
    size: '3.5MB',
  ),
  RecentFile(
    icon: 'assets/icons/sound_file.svg',
    title: 'Sound Files',
    date: '01-03-2021',
    size: '3.5MB',
  ),
];
