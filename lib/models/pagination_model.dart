class PaginationModel {
  final int total;
  final int perPage;
  final int currentPage;

  PaginationModel({
    required this.total,
    required this.perPage,
    required this.currentPage,
  });

  factory PaginationModel.fromJson(Map<String, dynamic> json) {
    return PaginationModel(
      total: json['total'] ?? 0,
      perPage: json['per_page'] ?? 0,
      currentPage: json['current_page'] ?? 1,
    );
  }
}