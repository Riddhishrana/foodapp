class UserModel {
  final String id;
  String fullName;
  String email;
  String phone;
  String address;
  String profileImage; // asset path or network URL
  String memberSince;
  int rewardPoints;

  UserModel({
    required this.id,
    required this.fullName,
    required this.email,
    required this.phone,
    required this.address,
    required this.profileImage,
    required this.memberSince,
    this.rewardPoints = 120,
  });

  UserModel copyWith({
    String? fullName,
    String? email,
    String? phone,
    String? address,
    String? profileImage,
    int? rewardPoints,
  }) {
    return UserModel(
      id: id,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      profileImage: profileImage ?? this.profileImage,
      memberSince: memberSince,
      rewardPoints: rewardPoints ?? this.rewardPoints,
    );
  }
}
