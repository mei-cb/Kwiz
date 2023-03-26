import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
// ignore_for_file: prefer_const_constructors
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kwiz/classes/multiLineTextField.dart';

class QAContainer extends StatelessWidget {
  // we can pass any input when instantiating the class so we can do this
  Function delete;
  final Key? key;
  QAContainer({required this.delete, required this.key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: [
              Spacer(),
              IconButton(
                onPressed: () {
                  /* calls widget.delete for this widget. It's like using this.delete and this.key except that changes for stateful widgets. */
                  this.delete(this.key);
                },
                icon: Icon(Icons.delete),
              ),
            ],
          ),
          Container(
            color: Colors.white,
            child: SizedBox(
              height: 100,
              child: MultiLineTextField(
                  minLines: 3, maxLines: 3, hintText: 'Type question here...'),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            color: Colors.white,
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Flexible(
                  child: MultiLineTextField(
                      minLines: 1,
                      maxLines: 1,
                      hintText: 'Type your answer here'),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}
