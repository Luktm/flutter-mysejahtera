class GroupUser {
  final int id;
  final String name;
  final String imagePath;
  bool selected;

  GroupUser({
    required this.id,
    required this.name,
    required this.imagePath,
    this.selected = false,
  });

  updateSelected() {
    this.selected = !this.selected;
  }
}
