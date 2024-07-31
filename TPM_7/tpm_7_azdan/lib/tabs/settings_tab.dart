import 'package:flutter/material.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  final List<IconData> icons = [
    Icons.pets, Icons.pregnant_woman, Icons.record_voice_over, Icons.rounded_corner,
    Icons.rowing, Icons.timeline, Icons.update, Icons.watch_later,
    Icons.pan_tool, Icons.euro_symbol, Icons.g_translate, Icons.remove_shopping_cart,
    Icons.restore_page, Icons.speaker_notes_off, Icons.delete_forever, Icons.accessibility,
    Icons.check_circle_outline, Icons.delete_outline, Icons.done_outline, Icons.horizontal_rule,
    Icons.minimize, Icons.offline_bolt, Icons.swap_horizontal_circle, Icons.accessible_forward,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.count(
        crossAxisCount: 4,
        padding: const EdgeInsets.all(30),
        mainAxisSpacing: 60,
        crossAxisSpacing: 40,
        children: icons.map((e) => _buildBox(30, 30, e)).toList(),
      ),
    );
  }

  Widget _buildBox(double width, double height, IconData icon) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.lightBlue,
      ),
      child: Center(
        child: SizedBox(
          child: Icon(
            icon,
            color: Colors.white,
            size: 28,
          ),
          ),
        ),
      );
  }
}