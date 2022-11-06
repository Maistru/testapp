// To parse this JSON data, do
//
//     final provinsiModel = provinsiModelFromJson(jsonString);

import 'dart:convert';

ProvinsiModel provinsiModelFromJson(String str) => ProvinsiModel.fromJson(json.decode(str));

String provinsiModelToJson(ProvinsiModel data) => json.encode(data.toJson());

class ProvinsiModel {
    ProvinsiModel({
       required this.id,
       required this.name,
    });

    String id;
    String name;

    factory ProvinsiModel.fromJson(Map<String, dynamic> json) => ProvinsiModel(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
    @override
  String toString() => name;
}
