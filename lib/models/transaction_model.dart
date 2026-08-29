// To parse this JSON data, do
// take a transactionModel and get the value the data from the model
//     final transactionModel = transactionModelFromJson(jsonString);

import 'dart:convert';

TransactionModel transactionModelFromJson(String str) => TransactionModel.fromJson(json.decode(str));

String transactionModelToJson(TransactionModel data) => json.encode(data.toJson());

class TransactionModel {
  final List<Datum> data;
  final Meta meta;

  TransactionModel({
    required this.data,
    required this.meta,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) => TransactionModel(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    meta: Meta.fromJson(json["meta"]),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "meta": meta.toJson(),
  };
}

class Datum {
  final int id;
  final int agentId;
  final int clientId;
  final int propertyId;
  final String fileNo;
  final dynamic transactionNo;
  final ClientType clientType;
  final String title;
  final dynamic description;
  final Status status;
  final StatusLabel statusLabel;
  final DateTime createdAt;
  final DateTime updatedAt;
  final dynamic urgencyLevel;
  final TransactionStatus transactionStatus;
  final TransactionStatusLabel transactionStatusLabel;

  Datum({
    required this.id,
    required this.agentId,
    required this.clientId,
    required this.propertyId,
    required this.fileNo,
    required this.transactionNo,
    required this.clientType,
    required this.title,
    required this.description,
    required this.status,
    required this.statusLabel,
    required this.createdAt,
    required this.updatedAt,
    required this.urgencyLevel,
    required this.transactionStatus,
    required this.transactionStatusLabel,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    agentId: json["agent_id"],
    clientId: json["client_id"],
    propertyId: json["property_id"],
    fileNo: json["file_no"],
    transactionNo: json["transaction_no"],
    clientType: clientTypeValues.map[json["client_type"]]!,
    title: json["title"],
    description: json["description"],
    status: statusValues.map[json["status"]]!,
    statusLabel: statusLabelValues.map[json["status_label"]]!,
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    urgencyLevel: json["urgency_level"],
    transactionStatus: transactionStatusValues.map[json["transaction_status"]]!,
    transactionStatusLabel: transactionStatusLabelValues.map[json["transaction_status_label"]]!,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "agent_id": agentId,
    "client_id": clientId,
    "property_id": propertyId,
    "file_no": fileNo,
    "transaction_no": transactionNo,
    "client_type": clientTypeValues.reverse[clientType],
    "title": title,
    "description": description,
    "status": statusValues.reverse[status],
    "status_label": statusLabelValues.reverse[statusLabel],
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "urgency_level": urgencyLevel,
    "transaction_status": transactionStatusValues.reverse[transactionStatus],
    "transaction_status_label": transactionStatusLabelValues.reverse[transactionStatusLabel],
  };
}

enum ClientType {
  BUYER_TYPE,
  SELLER_TYPE
}

final clientTypeValues = EnumValues({
  "BUYER_TYPE": ClientType.BUYER_TYPE,
  "SELLER_TYPE": ClientType.SELLER_TYPE
});

enum Status {
  PENDING
}

final statusValues = EnumValues({
  "PENDING": Status.PENDING
});

enum StatusLabel {
  WAITING_ON_VENDOR
}

final statusLabelValues = EnumValues({
  "Waiting on Vendor": StatusLabel.WAITING_ON_VENDOR
});

enum TransactionStatus {
  ACTIVE
}

final transactionStatusValues = EnumValues({
  "ACTIVE": TransactionStatus.ACTIVE
});

enum TransactionStatusLabel {
  ACTIVE
}

final transactionStatusLabelValues = EnumValues({
  "Active": TransactionStatusLabel.ACTIVE
});

class Meta {
  final Pagination pagination;

  Meta({
    required this.pagination,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    pagination: Pagination.fromJson(json["pagination"]),
  );

  Map<String, dynamic> toJson() => {
    "pagination": pagination.toJson(),
  };
}

class Pagination {
  final int total;
  final int perPage;
  final int currentPage;

  Pagination({
    required this.total,
    required this.perPage,
    required this.currentPage,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
    total: json["total"],
    perPage: json["per_page"],
    currentPage: json["current_page"],
  );

  Map<String, dynamic> toJson() => {
    "total": total,
    "per_page": perPage,
    "current_page": currentPage,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
