import 'package:currency_converter/src/models/currency_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowValues extends StatelessWidget {
  final List<CurrencyModel> items;
  final CurrencyModel selectedItem;
  final TextEditingController controller;
  final void Function(CurrencyModel model) onChanged;

  const RowValues(
      {Key key, this.items, this.selectedItem, this.controller, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 56,
            child: DropdownButton<CurrencyModel>(
              value: selectedItem,
              iconEnabledColor: Colors.amber,
              isExpanded: true,
              underline: Container(height: 1, color: Colors.amber),
              items: items
                  .map((item) => DropdownMenuItem(
                        child: Text(item.name),
                        value: item,
                      ))
                  .toList(),
              onChanged: onChanged,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber))),
          ),
        )
      ],
    ));
  }
}
