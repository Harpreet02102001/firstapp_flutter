class User {
  final int id;
  final int roleId;
  final String name;
  final String firstName;
  final String middleName;
  final String lastName;
  final String userName;
  final String email;
  final bool status;
  final bool isProfileSetup;
  final String userProfileColor;
  final String createdAt;
  final String updatedAt;
  final bool isDisassociated;
  final String thumbFileUrl;
  final String subscriptionStatus;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.roleId,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.userName,
    required this.status,
    required this.isProfileSetup,
    required this.userProfileColor,
    required this.createdAt,
    required this.updatedAt,
    required this.isDisassociated,
    required this.thumbFileUrl,
    required this.subscriptionStatus,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"],
      name: json["name"],
      email: json["email"],
      roleId: json["role_id"],
      firstName: json["first_name"],
      middleName: json["middle_name"],
      lastName: json["last_name"],
      userName: json["username"],
      status: json["status"],
      isProfileSetup: json["is_profile_setup"],
      userProfileColor: json["user_profile_color"],
      createdAt: json["created_at"],
      updatedAt: json["updated_at"],
      isDisassociated: json["is_disassociated"],
      thumbFileUrl : json["thumb_file_url"],
      subscriptionStatus :json["subscription_status"],
    );
  }
}
