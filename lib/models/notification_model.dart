// To parse this JSON data, do
//
//     final notificationModel = notificationModelFromJson(jsonString);

import 'dart:convert';

NotificationModel notificationModelFromJson(String str) => NotificationModel.fromJson(json.decode(str));

String notificationModelToJson(NotificationModel data) => json.encode(data.toJson());

class NotificationModel {
  final List<Datum> data;
  final Meta meta;

  NotificationModel({
    required this.data,
    required this.meta,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) => NotificationModel(
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
  final int objectId;
  final ObjectType objectType;
  final String action;
  final int isRead;
  final dynamic metaData;
  final DateTime createdAt;
  final DateTime updatedAt;

  Datum({
    required this.id,
    required this.agentId,
    required this.objectId,
    required this.objectType,
    required this.action,
    required this.isRead,
    required this.metaData,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    agentId: json["agent_id"],
    objectId: json["object_id"],
    objectType: objectTypeValues.map[json["object_type"]]!,
    action: json["action"],
    isRead: json["is_read"],
    metaData: json["meta_data"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "agent_id": agentId,
    "object_id": objectId,
    "object_type": objectTypeValues.reverse[objectType],
    "action": action,
    "is_read": isRead,
    "meta_data": metaData,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}

class MetaDataClass {
  final Client? client;
  final Connection? connection;
  final Invitation? invitation;
  final Client? senderUser;
  final Client? receiverUser;
  final Connection? senderConnection;
  final Connection? receiverConnection;
  final Connection? task;
  final Client? user;
  final Company? company;

  MetaDataClass({
    this.client,
    this.connection,
    this.invitation,
    this.senderUser,
    this.receiverUser,
    this.senderConnection,
    this.receiverConnection,
    this.task,
    this.user,
    this.company,
  });

  factory MetaDataClass.fromJson(Map<String, dynamic> json) => MetaDataClass(
    client: json["client"] == null ? null : Client.fromJson(json["client"]),
    connection: json["connection"] == null ? null : Connection.fromJson(json["connection"]),
    invitation: json["invitation"] == null ? null : Invitation.fromJson(json["invitation"]),
    senderUser: json["sender_user"] == null ? null : Client.fromJson(json["sender_user"]),
    receiverUser: json["receiver_user"] == null ? null : Client.fromJson(json["receiver_user"]),
    senderConnection: json["sender_connection"] == null ? null : Connection.fromJson(json["sender_connection"]),
    receiverConnection: json["receiver_connection"] == null ? null : Connection.fromJson(json["receiver_connection"]),
    task: json["task"] == null ? null : Connection.fromJson(json["task"]),
    user: json["user"] == null ? null : Client.fromJson(json["user"]),
    company: json["company"] == null ? null : Company.fromJson(json["company"]),
  );

  Map<String, dynamic> toJson() => {
    "client": client?.toJson(),
    "connection": connection?.toJson(),
    "invitation": invitation?.toJson(),
    "sender_user": senderUser?.toJson(),
    "receiver_user": receiverUser?.toJson(),
    "sender_connection": senderConnection?.toJson(),
    "receiver_connection": receiverConnection?.toJson(),
    "task": task?.toJson(),
    "user": user?.toJson(),
    "company": company?.toJson(),
  };
}

class Client {
  final int id;
  final String name;
  final String email;
  final int roleId;

  Client({
    required this.id,
    required this.name,
    required this.email,
    required this.roleId,
  });

  factory Client.fromJson(Map<String, dynamic> json) => Client(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    roleId: json["role_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "role_id": roleId,
  };
}

class Company {
  final int id;
  final String name;
  final int userId;

  Company({
    required this.id,
    required this.name,
    required this.userId,
  });

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    id: json["id"],
    name: json["name"],
    userId: json["user_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "user_id": userId,
  };
}

class Connection {
  final int id;
  final String title;
  final TaskType taskType;
  final ClientType? clientType;
  final String? address;

  Connection({
    required this.id,
    required this.title,
    required this.taskType,
    this.clientType,
    this.address,
  });

  factory Connection.fromJson(Map<String, dynamic> json) => Connection(
    id: json["id"],
    title: json["title"],
    taskType: taskTypeValues.map[json["task_type"]]!,
    clientType: clientTypeValues.map[json["client_type"]],
    address: json["address"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "task_type": taskTypeValues.reverse[taskType],
    "client_type": clientTypeValues.reverse[clientType],
    "address": address,
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

enum TaskType {
  TRANSACTION
}

final taskTypeValues = EnumValues({
  "TRANSACTION": TaskType.TRANSACTION
});

class Invitation {
  final int id;
  final InviteStatus? inviteStatus;
  final dynamic declineReasonType;
  final dynamic declineReasonText;
  final String? inviteCode;
  final String? status;
  final DateTime? inviteExpiresAt;
  final int? createdBy;

  Invitation({
    required this.id,
    this.inviteStatus,
    required this.declineReasonType,
    required this.declineReasonText,
    this.inviteCode,
    this.status,
    this.inviteExpiresAt,
    this.createdBy,
  });

  factory Invitation.fromJson(Map<String, dynamic> json) => Invitation(
    id: json["id"],
    inviteStatus: inviteStatusValues.map[json["invite_status"]],
    declineReasonType: json["decline_reason_type"],
    declineReasonText: json["decline_reason_text"],
    inviteCode: json["invite_code"],
    status: json["status"],
    inviteExpiresAt: json["invite_expires_at"] == null ? null : DateTime.parse(json["invite_expires_at"]),
    createdBy: json["created_by"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "invite_status": inviteStatusValues.reverse[inviteStatus],
    "decline_reason_type": declineReasonType,
    "decline_reason_text": declineReasonText,
    "invite_code": inviteCode,
    "status": status,
    "invite_expires_at": inviteExpiresAt?.toIso8601String(),
    "created_by": createdBy,
  };
}

enum InviteStatus {
  ACCEPTED,
  INVITE_SENT
}

final inviteStatusValues = EnumValues({
  "ACCEPTED": InviteStatus.ACCEPTED,
  "INVITE_SENT": InviteStatus.INVITE_SENT
});

enum ObjectType {
  CONNECTIONS,
  USERS
}

final objectTypeValues = EnumValues({
  "connections": ObjectType.CONNECTIONS,
  "users": ObjectType.USERS
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
