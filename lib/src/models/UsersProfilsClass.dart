import 'package:cloud_firestore/cloud_firestore.dart';

class ProfilClass {
  final String? name;
  final int? age;
  final String? country;
  final List<DocumentReference>? services;
  final List<DocumentReference>? friends;


  ProfilClass({
    this.name,
    this.age,
    this.country,
    this.services,
    this.friends,

  });

  factory ProfilClass.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options,
      ) {
    final data = snapshot.data();
    return ProfilClass(
      name: data?['name'],
      age: data?['age'],
      country: data?['country'],
        services:
    data?['Services'] is Iterable ? List.from(data?['Services']) : null,

      friends:
      data?['Friend'] is Iterable ? List.from(data?['Friend']) : null,

    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (name != null) "name": name,
      if (age != null) "state": age,
      if (country != null) "country": country,
      if (services != null) "Services": country,
      if (friends != null) "Friend": country,
    };
  }
}