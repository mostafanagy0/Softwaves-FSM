import 'package:flutter/material.dart';
import 'package:fsm/features/home/presentation/widgets/custom_component_item.dart';

class ComponentsWidget extends StatefulWidget {
  const ComponentsWidget({super.key, required this.numbers});

  final List<int> numbers;

  @override
  State<ComponentsWidget> createState() => _ComponentsWidgetState();
}

class _ComponentsWidgetState extends State<ComponentsWidget> {
  int selectedIndex = 0;

  final List<String> labels = ['To Do', 'In Progress', 'Done'];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(labels.length, (index) {
        return Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              right: index < labels.length - 1 ? 11.0 : 0.0,
            ),
            child: CustomComponentItem(
              text: labels[index],
              number: widget.numbers[index],
              isSelected: selectedIndex == index,
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          ),
        );
      }),
    );
  }
}
