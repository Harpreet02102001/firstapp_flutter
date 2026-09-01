// To parse this JSON data, do
//
//     final transactionStatusModel = transactionStatusModelFromJson(jsonString);

import 'dart:convert';

TransactionStatusModel transactionStatusModelFromJson(String str) => TransactionStatusModel.fromJson(json.decode(str));

String transactionStatusModelToJson(TransactionStatusModel data) => json.encode(data.toJson());

class TransactionStatusModel {
  final List<Datum> data;

  TransactionStatusModel({
    required this.data,
  });

  factory TransactionStatusModel.fromJson(Map<String, dynamic> json) => TransactionStatusModel(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  final String code;
  final String name;
  final int count;

  Datum({
    required this.code,
    required this.name,
    required this.count,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    code: json["code"],
    name: json["name"],
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "name": name,
    "count": count,
  };
}
