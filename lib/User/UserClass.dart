class User {
  String ID;
  String name;
  int phoneNumber;
  String email;
  List<int> owned;

  User({
    required this.ID,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.owned,
  });
}
