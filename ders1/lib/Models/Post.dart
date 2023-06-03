// ignore_for_file: file_names

import 'dart:convert';

List<Dog> dogFromJson(String str) =>
    List<Dog>.from(json.decode(str).map((x) => Dog.fromJson(x)));

class Dog {
  final String imageLink;
  final int goodWithChildren;
  final int goodWithOtherDogs;
  final int shedding;
  final int grooming;
  final int drooling;
  final int coatLength;
  final int goodWithStrangers;
  final int playfulness;
  final int protectiveness;
  final int trainability;
  final int energy;
  final int barking;
  final int minLifeExpectancy;
  final int maxLifeExpectancy;
  final String name;

  Dog({
    required this.imageLink,
    required this.goodWithChildren,
    required this.goodWithOtherDogs,
    required this.shedding,
    required this.grooming,
    required this.drooling,
    required this.coatLength,
    required this.goodWithStrangers,
    required this.playfulness,
    required this.protectiveness,
    required this.trainability,
    required this.energy,
    required this.barking,
    required this.minLifeExpectancy,
    required this.maxLifeExpectancy,
    required this.name,
  });

  factory Dog.fromJson(Map<String, dynamic> json) => Dog(
        imageLink: json["imageLink"],
        goodWithChildren: json["goodWithChildren"],
        goodWithOtherDogs: json["goodWithOtherDogs"],
        shedding: json["shedding"],
        grooming: json["grooming"],
        drooling: json["drooling"],
        coatLength: json["coatLength"],
        goodWithStrangers: json["goodWithStrangers"],
        playfulness: json["playfulness"],
        protectiveness: json["protectiveness"],
        trainability: json["trainability"],
        energy: json["energy"],
        barking: json["barking"],
        minLifeExpectancy: json["minLifeExpectancy"],
        maxLifeExpectancy: json["maxLifeExpectancy"],
        name: json["name"],
      );
}
