import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class SearchInputContainer extends StatefulWidget {
  const SearchInputContainer({
    Key? key,
    this.onChanged,
    this.debounceTime,
    this.cText,
    this.hintText = 'Search...',
    this.bgFill,
  }) : super(key: key);
  final ValueChanged<String>? onChanged;
  final Duration? debounceTime;
  final Color? cText;
  final String hintText;
  final Color? bgFill;

  @override
  State<SearchInputContainer> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInputContainer> {
  final StreamController<String> _textChangeStreamController =
      StreamController();
  late StreamSubscription _textChangesSubscription;

  @override
  void initState() {
    print("rebuil");
    super.initState();
    _textChangesSubscription = _textChangeStreamController.stream
        .debounceTime(widget.debounceTime ?? const Duration(seconds: 1))
        .distinct()
        .listen((text) {
      final onChanged = widget.onChanged;
      if (onChanged != null) {
        onChanged(text);
      }
    });
  }

  @override
  Widget build(BuildContext context) => Container(
        constraints: const BoxConstraints(minWidth: 100),
        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
        child: TextField(
          style:
              TextStyle(color: widget.cText, decoration: TextDecoration.none),
          decoration: InputDecoration(
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(Icons.search, color: widget.cText),
              ),
              filled: true,
              // isDense: true,
              fillColor: widget.bgFill,
              isCollapsed: true,
              suffixIconConstraints: const BoxConstraints(),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)
                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.circular(12.0),
                  //   bottomLeft: Radius.circular(12.0),
                  //   topRight: Radius.circular(12.0),
                  //   bottomRight: Radius.circular(12.0),
                  // ),
                  ),
              contentPadding: const EdgeInsets.fromLTRB(12, 12, 8, 12),
              // focusedBorder: const OutlineInputBorder(
              //   borderSide: BorderSide(color: Colors.blueGrey),
              //   borderRadius: BorderRadius.all(
              //     Radius.circular(8.0),
              //   ),
              // ),
              // enabledBorder: const OutlineInputBorder(
              //   borderSide: BorderSide(color: Colors.blueGrey),
              //   borderRadius: BorderRadius.all(
              //     Radius.circular(8.0),
              //   ),
              // ),
              focusColor: widget.cText,
              hintText: widget.hintText,
              hintStyle: TextStyle(color: widget.cText)),
          onChanged: _textChangeStreamController.add,
        ),
      );

  @override
  void dispose() {
    _textChangeStreamController.close();
    _textChangesSubscription.cancel();
    super.dispose();
  }
}