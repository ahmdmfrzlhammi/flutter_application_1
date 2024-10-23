import 'package:flutter/material.dart';

class Latihanpage3 extends StatefulWidget {
  const Latihanpage3({super.key});

  @override
  State<Latihanpage3> createState() => Latihanpage3state();
}

class Latihanpage3state extends State<Latihanpage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            // Desktop layout
            return _buildDesktopGrid();
          } else if (constraints.maxWidth > 600) {
            // Tablet layout
            return _buildTabletGrid();
          } else {
            // Mobile layout
            return _buildMobileGrid();
          }
        },
      ),
    );
  }

  Widget _buildDesktopGrid() {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(child: _buildGridItem(1)),
              Expanded(child: _buildGridItem(2)),
              Expanded(child: _buildGridItem(3)),
              Expanded(child: _buildGridItem(4)),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: _buildGridItem(5)),
              Expanded(child: _buildGridItem(6)),
              Expanded(child: _buildGridItem(7)),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: _buildGridItem(8)),
              Expanded(child: _buildGridItem(9)),
              Expanded(child: _buildGridItem(10)),
              Expanded(child: _buildGridItem(11)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTabletGrid() {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(child: _buildGridItem(2)),
              Expanded(child: _buildGridItem(4)),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(child: _buildGridItem(7)),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(child: _buildGridItem(8)),
              Expanded(child: _buildGridItem(10)),
              Expanded(child: _buildGridItem(11)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobileGrid() {
    return GridView.count(
      crossAxisCount: 1,
      children: [
        _buildGridItem(3),
        _buildGridItem(5),
        _buildGridItem(9),
      ],
    );
  }

  Widget _buildGridItem(int number) {
    final colors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.orange,
      Colors.purple,
      Colors.brown,
      Colors.pink,
      Colors.cyan,
      Colors.teal,
      Colors.amber,
    ];

    return Container(
      color: colors[number % colors.length],
      child: Center(
        child: Text(
          '$number',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Latihanpage3(),
  ));
}