// To parse this JSON data, do
//
//     final transactionDetailModel = transactionDetailModelFromJson(jsonString);

import 'dart:convert';

TransactionDetailModel transactionDetailModelFromJson(String str) => TransactionDetailModel.fromJson(json.decode(str));

String transactionDetailModelToJson(TransactionDetailModel data) => json.encode(data.toJson());

class TransactionDetailModel {
  final List<TransactionDetailModelDatum> data;
  final Meta meta;

  TransactionDetailModel({
    required this.data,
    required this.meta,
  });

  factory TransactionDetailModel.fromJson(Map<String, dynamic> json) => TransactionDetailModel(
    data: List<TransactionDetailModelDatum>.from(json["data"].map((x) => TransactionDetailModelDatum.fromJson(x))),
    meta: Meta.fromJson(json["meta"]),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "meta": meta.toJson(),
  };
}

class TransactionDetailModelDatum {
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
  final dynamic preferredContactMethods;
  final dynamic urgencyLevel;
  final TransactionStatus transactionStatus;
  final TransactionStatusLabel transactionStatusLabel;
  final Address address;
  final AgentTransactionConnects vendors;
  final Agent agent;
  final Client client;
  final TaskTemplate taskTemplate;
  final AgentTransactionConnects agentTransactionConnects;

  TransactionDetailModelDatum({
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
    required this.preferredContactMethods,
    required this.urgencyLevel,
    required this.transactionStatus,
    required this.transactionStatusLabel,
    required this.address,
    required this.vendors,
    required this.agent,
    required this.client,
    required this.taskTemplate,
    required this.agentTransactionConnects,
  });

  factory TransactionDetailModelDatum.fromJson(Map<String, dynamic> json) => TransactionDetailModelDatum(
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
    preferredContactMethods: json["preferred_contact_methods"],
    urgencyLevel: json["urgency_level"],
    transactionStatus: transactionStatusValues.map[json["transaction_status"]]!,
    transactionStatusLabel: transactionStatusLabelValues.map[json["transaction_status_label"]]!,
    address: Address.fromJson(json["address"]),
    vendors: AgentTransactionConnects.fromJson(json["vendors"]),
    agent: Agent.fromJson(json["agent"]),
    client: Client.fromJson(json["client"]),
    taskTemplate: TaskTemplate.fromJson(json["task_template"]),
    agentTransactionConnects: AgentTransactionConnects.fromJson(json["agent_transaction_connects"]),
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
    "preferred_contact_methods": preferredContactMethods,
    "urgency_level": urgencyLevel,
    "transaction_status": transactionStatusValues.reverse[transactionStatus],
    "transaction_status_label": transactionStatusLabelValues.reverse[transactionStatusLabel],
    "address": address.toJson(),
    "vendors": vendors.toJson(),
    "agent": agent.toJson(),
    "client": client.toJson(),
    "task_template": taskTemplate.toJson(),
    "agent_transaction_connects": agentTransactionConnects.toJson(),
  };
}

class Address {
  final String streetAddress;
  final City city;
  final String zip;
  final int stateId;
  final State state;
  final int countryId;
  final Country country;
  final int? longitude;
  final int? latitude;

  Address({
    required this.streetAddress,
    required this.city,
    required this.zip,
    required this.stateId,
    required this.state,
    required this.countryId,
    required this.country,
    required this.longitude,
    required this.latitude,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    streetAddress: json["street_address"],
    city: cityValues.map[json["city"]]!,
    zip: json["zip"],
    stateId: json["state_id"],
    state: State.fromJson(json["state"]),
    countryId: json["country_id"],
    country: Country.fromJson(json["country"]),
    longitude: json["longitude"],
    latitude: json["latitude"],
  );

  Map<String, dynamic> toJson() => {
    "street_address": streetAddress,
    "city": cityValues.reverse[city],
    "zip": zip,
    "state_id": stateId,
    "state": state.toJson(),
    "country_id": countryId,
    "country": country.toJson(),
    "longitude": longitude,
    "latitude": latitude,
  };
}

enum City {
  FORT_ADANSIDE,
  FORT_DESMOND,
  LAKE_CLINTBERG,
  MC_KENZIETON,
  NEW_YORK
}

final cityValues = EnumValues({
  "Fort Adanside": City.FORT_ADANSIDE,
  "Fort Desmond": City.FORT_DESMOND,
  "Lake Clintberg": City.LAKE_CLINTBERG,
  "McKenzieton": City.MC_KENZIETON,
  "New York": City.NEW_YORK
});

class Country {
  final int id;
  final CountryCode code;
  final CountryName name;
  final CurrencyName currencyName;
  final CurrencySymbol currencySymbol;
  final int status;

  Country({
    required this.id,
    required this.code,
    required this.name,
    required this.currencyName,
    required this.currencySymbol,
    required this.status,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
    id: json["id"],
    code: countryCodeValues.map[json["code"]]!,
    name: countryNameValues.map[json["name"]]!,
    currencyName: currencyNameValues.map[json["currency_name"]]!,
    currencySymbol: currencySymbolValues.map[json["currency_symbol"]]!,
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "code": countryCodeValues.reverse[code],
    "name": countryNameValues.reverse[name],
    "currency_name": currencyNameValues.reverse[currencyName],
    "currency_symbol": currencySymbolValues.reverse[currencySymbol],
    "status": status,
  };
}

enum CountryCode {
  US
}

final countryCodeValues = EnumValues({
  "US": CountryCode.US
});

enum CurrencyName {
  DOLLER
}

final currencyNameValues = EnumValues({
  "Doller": CurrencyName.DOLLER
});

enum CurrencySymbol {
  EMPTY
}

final currencySymbolValues = EnumValues({
  "\u0024": CurrencySymbol.EMPTY
});

enum CountryName {
  UNITED_STATES
}

final countryNameValues = EnumValues({
  "United States": CountryName.UNITED_STATES
});

class State {
  final int id;
  final int countryId;
  final StateCode code;
  final StateName name;
  final int status;

  State({
    required this.id,
    required this.countryId,
    required this.code,
    required this.name,
    required this.status,
  });

  factory State.fromJson(Map<String, dynamic> json) => State(
    id: json["id"],
    countryId: json["country_id"],
    code: stateCodeValues.map[json["code"]]!,
    name: stateNameValues.map[json["name"]]!,
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "country_id": countryId,
    "code": stateCodeValues.reverse[code],
    "name": stateNameValues.reverse[name],
    "status": status,
  };
}

enum StateCode {
  CA,
  IA,
  MI,
  NY,
  OR,
  PR
}

final stateCodeValues = EnumValues({
  "CA": StateCode.CA,
  "IA": StateCode.IA,
  "MI": StateCode.MI,
  "NY": StateCode.NY,
  "OR": StateCode.OR,
  "PR": StateCode.PR
});

enum StateName {
  CALIFORNIA,
  IOWA,
  MICHIGAN,
  NEW_YORK,
  OREGON,
  PUERTO_RICO
}

final stateNameValues = EnumValues({
  "California": StateName.CALIFORNIA,
  "Iowa": StateName.IOWA,
  "Michigan": StateName.MICHIGAN,
  "New York": StateName.NEW_YORK,
  "Oregon": StateName.OREGON,
  "Puerto Rico": StateName.PUERTO_RICO
});

class Agent {
  final int id;
  final AgentName name;
  final FirstName firstName;
  final MiddleName middleName;
  final LastName lastName;
  final Username username;
  final Email email;
  final UserProfileColor userProfileColor;
  final SubscriptionStatus subscriptionStatus;
  final String thumbFileUrl;
  final AgentProfile profile;

  Agent({
    required this.id,
    required this.name,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.userProfileColor,
    required this.subscriptionStatus,
    required this.thumbFileUrl,
    required this.profile,
  });

  factory Agent.fromJson(Map<String, dynamic> json) => Agent(
    id: json["id"],
    name: agentNameValues.map[json["name"]]!,
    firstName: firstNameValues.map[json["first_name"]]!,
    middleName: middleNameValues.map[json["middle_name"]]!,
    lastName: lastNameValues.map[json["last_name"]]!,
    username: usernameValues.map[json["username"]]!,
    email: emailValues.map[json["email"]]!,
    userProfileColor: userProfileColorValues.map[json["user_profile_color"]]!,
    subscriptionStatus: subscriptionStatusValues.map[json["subscription_status"]]!,
    thumbFileUrl: json["thumb_file_url"],
    profile: AgentProfile.fromJson(json["profile"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": agentNameValues.reverse[name],
    "first_name": firstNameValues.reverse[firstName],
    "middle_name": middleNameValues.reverse[middleName],
    "last_name": lastNameValues.reverse[lastName],
    "username": usernameValues.reverse[username],
    "email": emailValues.reverse[email],
    "user_profile_color": userProfileColorValues.reverse[userProfileColor],
    "subscription_status": subscriptionStatusValues.reverse[subscriptionStatus],
    "thumb_file_url": thumbFileUrl,
    "profile": profile.toJson(),
  };
}

enum Email {
  MAMTARTE25_GMAIL_COM
}

final emailValues = EnumValues({
  "mamtarte25@gmail.com": Email.MAMTARTE25_GMAIL_COM
});

enum FirstName {
  MAMTA
}

final firstNameValues = EnumValues({
  "Mamta": FirstName.MAMTA
});

enum LastName {
  AGENT_DEV
}

final lastNameValues = EnumValues({
  "Agent Dev": LastName.AGENT_DEV
});

enum MiddleName {
  SAINI
}

final middleNameValues = EnumValues({
  "Saini": MiddleName.SAINI
});

enum AgentName {
  MAMTA_SAINI_AGENT_DEV
}

final agentNameValues = EnumValues({
  "Mamta Saini Agent Dev": AgentName.MAMTA_SAINI_AGENT_DEV
});

class AgentProfile {
  final int id;
  final int userId;
  final String phoneNumber;
  final bool isPhoneNumberPrivate;
  final Image image;
  final ImagePath imagePath;
  final String licenseNumber;
  final int licenseYear;
  final String bio;
  final Address address;

  AgentProfile({
    required this.id,
    required this.userId,
    required this.phoneNumber,
    required this.isPhoneNumberPrivate,
    required this.image,
    required this.imagePath,
    required this.licenseNumber,
    required this.licenseYear,
    required this.bio,
    required this.address,
  });

  factory AgentProfile.fromJson(Map<String, dynamic> json) => AgentProfile(
    id: json["id"],
    userId: json["user_id"],
    phoneNumber: json["phone_number"],
    isPhoneNumberPrivate: json["is_phone_number_private"],
    image: imageValues.map[json["image"]]!,
    imagePath: imagePathValues.map[json["image_path"]]!,
    licenseNumber: json["license_number"],
    licenseYear: json["license_year"],
    bio: json["bio"],
    address: Address.fromJson(json["address"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "phone_number": phoneNumber,
    "is_phone_number_private": isPhoneNumberPrivate,
    "image": imageValues.reverse[image],
    "image_path": imagePathValues.reverse[imagePath],
    "license_number": licenseNumber,
    "license_year": licenseYear,
    "bio": bio,
    "address": address.toJson(),
  };
}

enum Image {
  THE_1745388070_BLOB_PNG
}

final imageValues = EnumValues({
  "1745388070_blob.png": Image.THE_1745388070_BLOB_PNG
});

enum ImagePath {
  USERS_47_E3_D2_D1_A246_423_C_A582_712816_FFE969_PROFILE_IMAGE
}

final imagePathValues = EnumValues({
  "users/47e3d2d1-a246-423c-a582-712816ffe969/profile_image": ImagePath.USERS_47_E3_D2_D1_A246_423_C_A582_712816_FFE969_PROFILE_IMAGE
});

enum SubscriptionStatus {
  ACTIVE
}

final subscriptionStatusValues = EnumValues({
  "active": SubscriptionStatus.ACTIVE
});

enum UserProfileColor {
  A17_A74
}

final userProfileColorValues = EnumValues({
  "#A17A74": UserProfileColor.A17_A74
});

enum Username {
  MAMTARTE25
}

final usernameValues = EnumValues({
  "mamtarte25": Username.MAMTARTE25
});

class AgentTransactionConnects {
  final List<AgentTransactionConnectsDatum> data;

  AgentTransactionConnects({
    required this.data,
  });

  factory AgentTransactionConnects.fromJson(Map<String, dynamic> json) => AgentTransactionConnects(
    data: List<AgentTransactionConnectsDatum>.from(json["data"].map((x) => AgentTransactionConnectsDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class AgentTransactionConnectsDatum {
  final int id;
  final String status;
  final dynamic transactionNo;
  final dynamic declineReasonType;
  final dynamic declineReasonText;
  final String inviteCode;
  final DateTime inviteExpiresAt;
  final int createdBy;
  final dynamic updatedBy;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int sellerAgentId;
  final int buyerAgentId;
  final int sellerTransactionId;
  final int buyerTransactionId;
  final ErTransaction senderTransaction;
  final ErAgentName senderAgentName;
  final ErTransaction receiverTransaction;
  final ErAgentName receiverAgentName;

  AgentTransactionConnectsDatum({
    required this.id,
    required this.status,
    required this.transactionNo,
    required this.declineReasonType,
    required this.declineReasonText,
    required this.inviteCode,
    required this.inviteExpiresAt,
    required this.createdBy,
    required this.updatedBy,
    required this.createdAt,
    required this.updatedAt,
    required this.sellerAgentId,
    required this.buyerAgentId,
    required this.sellerTransactionId,
    required this.buyerTransactionId,
    required this.senderTransaction,
    required this.senderAgentName,
    required this.receiverTransaction,
    required this.receiverAgentName,
  });

  factory AgentTransactionConnectsDatum.fromJson(Map<String, dynamic> json) => AgentTransactionConnectsDatum(
    id: json["id"],
    status: json["status"],
    transactionNo: json["transaction_no"],
    declineReasonType: json["decline_reason_type"],
    declineReasonText: json["decline_reason_text"],
    inviteCode: json["invite_code"],
    inviteExpiresAt: DateTime.parse(json["invite_expires_at"]),
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    sellerAgentId: json["seller_agent_id"],
    buyerAgentId: json["buyer_agent_id"],
    sellerTransactionId: json["seller_transaction_id"],
    buyerTransactionId: json["buyer_transaction_id"],
    senderTransaction: ErTransaction.fromJson(json["sender_transaction"]),
    senderAgentName: ErAgentName.fromJson(json["sender_agent_name"]),
    receiverTransaction: ErTransaction.fromJson(json["receiver_transaction"]),
    receiverAgentName: ErAgentName.fromJson(json["receiver_agent_name"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "status": status,
    "transaction_no": transactionNo,
    "decline_reason_type": declineReasonType,
    "decline_reason_text": declineReasonText,
    "invite_code": inviteCode,
    "invite_expires_at": inviteExpiresAt.toIso8601String(),
    "created_by": createdBy,
    "updated_by": updatedBy,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "seller_agent_id": sellerAgentId,
    "buyer_agent_id": buyerAgentId,
    "seller_transaction_id": sellerTransactionId,
    "buyer_transaction_id": buyerTransactionId,
    "sender_transaction": senderTransaction.toJson(),
    "sender_agent_name": senderAgentName.toJson(),
    "receiver_transaction": receiverTransaction.toJson(),
    "receiver_agent_name": receiverAgentName.toJson(),
  };
}

class ErAgentName {
  final int id;
  final String name;
  final String firstName;
  final String lastName;
  final String email;

  ErAgentName({
    required this.id,
    required this.name,
    required this.firstName,
    required this.lastName,
    required this.email,
  });

  factory ErAgentName.fromJson(Map<String, dynamic> json) => ErAgentName(
    id: json["id"],
    name: json["name"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "first_name": firstName,
    "last_name": lastName,
    "email": email,
  };
}

class ErTransaction {
  final String fileNo;
  final int id;
  final String title;
  final ClientType clientType;
  final String clientTypeLabel;
  final Address address;

  ErTransaction({
    required this.fileNo,
    required this.id,
    required this.title,
    required this.clientType,
    required this.clientTypeLabel,
    required this.address,
  });

  factory ErTransaction.fromJson(Map<String, dynamic> json) => ErTransaction(
    fileNo: json["file_no"],
    id: json["id"],
    title: json["title"],
    clientType: clientTypeValues.map[json["client_type"]]!,
    clientTypeLabel: json["client_type_label"],
    address: Address.fromJson(json["address"]),
  );

  Map<String, dynamic> toJson() => {
    "file_no": fileNo,
    "id": id,
    "title": title,
    "client_type": clientTypeValues.reverse[clientType],
    "client_type_label": clientTypeLabel,
    "address": address.toJson(),
  };
}

enum ClientType {
  BUYER_TYPE,
  SELLER_BUYER_TYPE,
  SELLER_TYPE
}

final clientTypeValues = EnumValues({
  "BUYER_TYPE": ClientType.BUYER_TYPE,
  "SELLER_BUYER_TYPE": ClientType.SELLER_BUYER_TYPE,
  "SELLER_TYPE": ClientType.SELLER_TYPE
});

class Client {
  final int id;
  final int roleId;
  final String name;
  final String firstName;
  final dynamic middleName;
  final String lastName;
  final String username;
  final String email;
  final String userProfileColor;
  final ClientProfile profile;
  final ClientType clientType;
  final dynamic thumbFileUrl;

  Client({
    required this.id,
    required this.roleId,
    required this.name,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.userProfileColor,
    required this.profile,
    required this.clientType,
    required this.thumbFileUrl,
  });

  factory Client.fromJson(Map<String, dynamic> json) => Client(
    id: json["id"],
    roleId: json["role_id"],
    name: json["name"],
    firstName: json["first_name"],
    middleName: json["middle_name"],
    lastName: json["last_name"],
    username: json["username"],
    email: json["email"],
    userProfileColor: json["user_profile_color"],
    profile: ClientProfile.fromJson(json["profile"]),
    clientType: clientTypeValues.map[json["client_type"]]!,
    thumbFileUrl: json["thumb_file_url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "role_id": roleId,
    "name": name,
    "first_name": firstName,
    "middle_name": middleName,
    "last_name": lastName,
    "username": username,
    "email": email,
    "user_profile_color": userProfileColor,
    "profile": profile.toJson(),
    "client_type": clientTypeValues.reverse[clientType],
    "thumb_file_url": thumbFileUrl,
  };
}

class ClientProfile {
  final int id;
  final int userId;
  final String phoneNumber;
  final dynamic image;
  final dynamic imagePath;
  final dynamic bio;
  final Address address;

  ClientProfile({
    required this.id,
    required this.userId,
    required this.phoneNumber,
    required this.image,
    required this.imagePath,
    required this.bio,
    required this.address,
  });

  factory ClientProfile.fromJson(Map<String, dynamic> json) => ClientProfile(
    id: json["id"],
    userId: json["user_id"],
    phoneNumber: json["phone_number"],
    image: json["image"],
    imagePath: json["image_path"],
    bio: json["bio"],
    address: Address.fromJson(json["address"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "phone_number": phoneNumber,
    "image": image,
    "image_path": imagePath,
    "bio": bio,
    "address": address.toJson(),
  };
}

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

class TaskTemplate {
  final int id;
  final TaskTemplateName name;
  final dynamic description;
  final int status;
  final List<Category> categories;
  final DateTime createdAt;

  TaskTemplate({
    required this.id,
    required this.name,
    required this.description,
    required this.status,
    required this.categories,
    required this.createdAt,
  });

  factory TaskTemplate.fromJson(Map<String, dynamic> json) => TaskTemplate(
    id: json["id"],
    name: taskTemplateNameValues.map[json["name"]]!,
    description: json["description"],
    status: json["status"],
    categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    createdAt: DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": taskTemplateNameValues.reverse[name],
    "description": description,
    "status": status,
    "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
    "created_at": createdAt.toIso8601String(),
  };
}

class Category {
  final String code;
  final Label label;
  final int displayOrder;
  final bool isCustom;

  Category({
    required this.code,
    required this.label,
    required this.displayOrder,
    required this.isCustom,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    code: json["code"],
    label: labelValues.map[json["label"]]!,
    displayOrder: json["display_order"],
    isCustom: json["is_custom"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "label": labelValues.reverse[label],
    "display_order": displayOrder,
    "is_custom": isCustom,
  };
}

enum Label {
  ATTORNEY,
  CLEANING_MAINTENANCE,
  HAULING_STORAGE_MOVING,
  HOME_INSPECTION,
  INSURANCE,
  MORTGAGE,
  SEPTIC_SERVICES,
  TANK_SWEEP,
  TITLE,
  WELL_WATER
}

final labelValues = EnumValues({
  "Attorney": Label.ATTORNEY,
  "Cleaning & Maintenance": Label.CLEANING_MAINTENANCE,
  "Hauling & Storage & Moving": Label.HAULING_STORAGE_MOVING,
  "Home Inspection": Label.HOME_INSPECTION,
  "Insurance": Label.INSURANCE,
  "Mortgage": Label.MORTGAGE,
  "Septic Services": Label.SEPTIC_SERVICES,
  "Tank Sweep": Label.TANK_SWEEP,
  "Title": Label.TITLE,
  "Well & Water": Label.WELL_WATER
});

enum TaskTemplateName {
  BUYING_REAL_ESTATE,
  SELLING_REAL_ESTATE
}

final taskTemplateNameValues = EnumValues({
  "Buying Real Estate": TaskTemplateName.BUYING_REAL_ESTATE,
  "Selling Real Estate": TaskTemplateName.SELLING_REAL_ESTATE
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
