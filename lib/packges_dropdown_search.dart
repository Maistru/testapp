import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dropdown_search/dropdown_search.dart';
import 'package:testapp/model/provinsi_model.dart';

class DropDownApi extends StatelessWidget {
  const DropDownApi({Key? key}) : super(key: key);
  final String apiKey =
      '78fa9ac6c59be6a719a4614ced89410260a003035a9bd71899813487790f2130';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DROPDOWN API'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          DropdownSearch<ProvinsiModel>(
            onChanged: (value) => print(value?.toJson()),
            dropdownBuilder: (context, item) {
              return Text(item?.name ?? 'Selected');
            },
            popupProps: PopupProps.menu(
                menuProps: MenuProps(),
                itemBuilder: (context, item, isSelected) {
                  return ListTile(
                    title: Text(item.name),
                  );
                },
                showSearchBox: true),
            asyncItems: (text) async {
              var res = await http.get(Uri.parse(
                  'https://api.binderbyte.com/wilayah/provinsi?api_key=$apiKey'));
              if (res.statusCode != 200) {
                return [];
              }
              List resbody = (json.decode(res.body)as Map<String,dynamic>)['value'];

              List<ProvinsiModel> allProvinsi = [];
              resbody.forEach((element) {
                allProvinsi.add(ProvinsiModel(id: element['id'], name: element['name']));
              });
              return allProvinsi;
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
