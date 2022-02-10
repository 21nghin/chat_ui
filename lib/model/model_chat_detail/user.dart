/// All possible roles user can have.
enum Role { admin, agent, moderator, user }

class User {
  /// Created user timestamp, in ms
  final int? createdAt;

  /// First name of the user
  final String? firstName;

  /// Unique ID of the user
  final String id;

  /// Remote image URL representing user's avatar
  final String? imageUrl;

  /// Last name of the user
  final String? lastName;

  /// Timestamp when user was last visible, in ms
  final int? lastSeen;

  /// Additional custom metadata or attributes related to the user
  final Map<String, dynamic>? metadata;

  /// User [Role]
  final Role? role;

  /// Updated user timestamp, in ms
  final int? updatedAt;

  User(
      {this.createdAt,
      this.firstName,
      required this.id,
      this.imageUrl,
      this.lastName,
      this.lastSeen,
      this.metadata,
      this.role,
      this.updatedAt});
}
