import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:intl/intl.dart';

class FakerPackagesIntl extends StatelessWidget {
  var faker = Faker();
  var dateTime = DateTime.now().toIso8601String();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAKER & INTL'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, i) {
        return ListTile(
          leading: CircleAvatar(
            radius: 20,
           backgroundColor: Colors.grey[300],
           backgroundImage: NetworkImage(faker.image.image(random: true)),
          ),
          title: Text(faker.person.name()),
          subtitle: Text(faker.job.title()),
          trailing: Text(DateFormat.Hms().add_E().format(DateTime.parse(dateTime))),
        );
      }),
    );
  }
}
