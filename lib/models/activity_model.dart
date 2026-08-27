// To parse this JSON data, do
//
//     final activityModel = activityModelFromJson(jsonString);

import 'dart:convert';

ActivityModel activityModelFromJson(String str) => ActivityModel.fromJson(json.decode(str));

String activityModelToJson(ActivityModel data) => json.encode(data.toJson());

class ActivityModel {
  final List<Datum> data;
  final Meta meta;

  ActivityModel({
    required this.data,
    required this.meta,
  });

  factory ActivityModel.fromJson(Map<String, dynamic> json) => ActivityModel(
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
        String message;


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
    required this.message,


  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    agentId: json["agent_id"],
    objectId: json["object_id"],
    objectType: objectTypeValues.map[json["object_type"]]!,
    action: json["action"],
    message: json['message']?? "",
    isRead: json["is_read"],
    metaData: json["meta_data"],
    // metaData: MetaData.fromJson(json["meta_data"]),
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "agent_id": agentId,
    "object_id": objectId,
    "object_type": objectTypeValues.reverse[objectType],
    "action": action,
    "message": message,
    "is_read": isRead,
    "meta_data": metaData.toJson(),
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}


class MetaData {
  final dynamic user;
  final Connection? connection;
  final Actor? client;
  final Invitation? invitation;
  final Actor? senderUser;
  final Connection? senderConnection;
  final Actor? actor;
  final List<dynamic>? actions;
  final Resource? resource;
  final SubMilestone? subMilestone;

  MetaData({
    this.user,
    this.connection,
    this.client,
    this.invitation,
    this.senderUser,
    this.senderConnection,
    this.actor,
    this.actions,
    this.resource,
    this.subMilestone,
  });

  factory MetaData.fromJson(Map<String, dynamic> json) => MetaData(
    user: json["user"],
    connection: json["connection"] == null ? null : Connection.fromJson(json["connection"]),
    client: json["client"] == null ? null : Actor.fromJson(json["client"]),
    invitation: json["invitation"] == null ? null : Invitation.fromJson(json["invitation"]),
    senderUser: json["sender_user"] == null ? null : Actor.fromJson(json["sender_user"]),
    senderConnection: json["sender_connection"] == null ? null : Connection.fromJson(json["sender_connection"]),
    actor: json["actor"] == null ? null : Actor.fromJson(json["actor"]),
    actions: json["actions"] == null ? [] : List<dynamic>.from(json["actions"]!.map((x) => x)),
    resource: json["resource"] == null ? null : Resource.fromJson(json["resource"]),
    subMilestone: json["sub_milestone"] == null ? null : SubMilestone.fromJson(json["sub_milestone"]),
  );

  Map<String, dynamic> toJson() => {
    "user": user,
    "connection": connection?.toJson(),
    "client": client?.toJson(),
    "invitation": invitation?.toJson(),
    "sender_user": senderUser?.toJson(),
    "sender_connection": senderConnection?.toJson(),
    "actor": actor?.toJson(),
    "actions": actions == null ? [] : List<dynamic>.from(actions!.map((x) => x)),
    "resource": resource?.toJson(),
    "sub_milestone": subMilestone?.toJson(),
  };
}

class Actor {
  final int id;
  final String name;
  final String email;
  final int roleId;

  Actor({
    required this.id,
    required this.name,
    required this.email,
    required this.roleId,
  });

  factory Actor.fromJson(Map<String, dynamic> json) => Actor(
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

class Connection {
  final int id;
  final String title;
  final String address;
  final TaskType taskType;
  final ClientType? clientType;
  final ClientTypeLabel? clientTypeLabel;

  Connection({
    required this.id,
    required this.title,
    required this.address,
    required this.taskType,
    this.clientType,
    this.clientTypeLabel,
  });

  factory Connection.fromJson(Map<String, dynamic> json) => Connection(
    id: json["id"],
    title: json["title"],
    address: json["address"],
    taskType: taskTypeValues.map[json["task_type"]]!,
    clientType: clientTypeValues.map[json["client_type"]],
    clientTypeLabel: clientTypeLabelValues.map[json["client_type_label"]],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "address": address,
    "task_type": taskTypeValues.reverse[taskType],
    "client_type": clientTypeValues.reverse[clientType],
    "client_type_label": clientTypeLabelValues.reverse[clientTypeLabel],
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

enum ClientTypeLabel {
  BUYER_TRANSACTION,
  SELLER_TRANSACTION
}

final clientTypeLabelValues = EnumValues({
  "Buyer Transaction": ClientTypeLabel.BUYER_TRANSACTION,
  "Seller Transaction": ClientTypeLabel.SELLER_TRANSACTION
});

enum TaskType {
  TRANSACTION
}

final taskTypeValues = EnumValues({
  "TRANSACTION": TaskType.TRANSACTION
});

class Invitation {
  final int id;
  final String inviteStatus;
  final dynamic declineReasonType;
  final dynamic declineReasonText;

  Invitation({
    required this.id,
    required this.inviteStatus,
    required this.declineReasonType,
    required this.declineReasonText,
  });

  factory Invitation.fromJson(Map<String, dynamic> json) => Invitation(
    id: json["id"],
    inviteStatus: json["invite_status"],
    declineReasonType: json["decline_reason_type"],
    declineReasonText: json["decline_reason_text"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "invite_status": inviteStatus,
    "decline_reason_type": declineReasonType,
    "decline_reason_text": declineReasonText,
  };
}

class Resource {
  final int id;
  final String url;
  final String name;
  final String label;
  final String labelName;

  Resource({
    required this.id,
    required this.url,
    required this.name,
    required this.label,
    required this.labelName,
  });

  factory Resource.fromJson(Map<String, dynamic> json) => Resource(
    id: json["id"],
    url: json["url"],
    name: json["name"],
    label: json["label"],
    labelName: json["label_name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "url": url,
    "name": name,
    "label": label,
    "label_name": labelName,
  };
}

class SubMilestone {
  final int id;
  final String code;
  final String name;
  final int transactionGlobalMilestoneId;

  SubMilestone({
    required this.id,
    required this.code,
    required this.name,
    required this.transactionGlobalMilestoneId,
  });

  factory SubMilestone.fromJson(Map<String, dynamic> json) => SubMilestone(
    id: json["id"],
    code: json["code"],
    name: json["name"],
    transactionGlobalMilestoneId: json["transaction_global_milestone_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "code": code,
    "name": name,
    "transaction_global_milestone_id": transactionGlobalMilestoneId,
  };
}

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
