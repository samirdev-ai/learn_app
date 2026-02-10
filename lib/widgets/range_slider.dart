import 'package:flutter/material.dart';
import 'app_bar.dart';

class Rangeslider extends StatefulWidget {
  const Rangeslider({super.key});

  @override
  State<Rangeslider> createState() => _RangesliderState();
}

class _RangesliderState extends State<Rangeslider> {
  RangeValues values = RangeValues(0,1);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(title: 'Samir',
        showBackButton: false, //no back in home screen
      ),
      body: Center(
        child: RangeSlider(values: values,labels: labels,min: 0, max: 0, divisions: 10, onChanged: (newValue) {
          values = newValue;
          print('${newValue.start}, ${newValue.end}');
          setState(() {

          });
        }),
      ),
    );
  }
}

//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         useMaterial3: true,
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
//       ),
//       home: const RangeSliderDemo(),
//     );
//   }
// }
//
// class RangeSliderDemo extends StatefulWidget {
//   const RangeSliderDemo({super.key});
//
//   @override
//   State<RangeSliderDemo> createState() => _RangeSliderDemoState();
// }
//
// class _RangeSliderDemoState extends State<RangeSliderDemo> {
//   // Initial range values (min and max)
//   RangeValues _currentRangeValues = const RangeValues(1000, 8000);
//
//   // Define min/max bounds for the slider
//   final double _minPrice = 0;
//   final double _maxPrice = 10000;
//
//   // Optional: Format the values for display (e.g., currency)
//   String _formatPrice(double value) {
//     return '₹${value.toStringAsFixed(0)}';
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('RangeSlider - Price Filter'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Header
//             Text(
//               'Select Price Range',
//               style: Theme.of(context).textTheme.titleLarge,
//             ),
//             const SizedBox(height: 8),
//
//             // Display current selected range
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   _formatPrice(_currentRangeValues.start),
//                   style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   _formatPrice(_currentRangeValues.end),
//                   style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//
//             // The RangeSlider itself
//             RangeSlider(
//               // Required: current values
//               values: _currentRangeValues,
//
//               // Required: min and max allowed values
//               min: _minPrice,
//               max: _maxPrice,
//
//               // Divisions (optional) - creates discrete steps
//               divisions: 20, // 20 steps between min and max
//
//               // Labels appear when dragging (optional but recommended)
//               labels: RangeLabels(
//                 _formatPrice(_currentRangeValues.start),
//                 _formatPrice(_currentRangeValues.end),
//               ),
//
//               // Colors & styling
//               activeColor: Colors.blue,
//               inactiveColor: Colors.grey[300],
//               thumbColor: Colors.blueAccent,
//
//               // Called whenever the user drags either thumb
//               onChanged: (RangeValues values) {
//                 setState(() {
//                   _currentRangeValues = values;
//                 });
//               },
//
//               // Optional: Called when user starts/stops dragging
//               onChangeStart: (RangeValues values) {
//                 print('Started dragging: ${values.start} - ${values.end}');
//               },
//               onChangeEnd: (RangeValues values) {
//                 print('Stopped dragging → Final range: ${values.start} - ${values.end}');
//               },
//             ),
//
//             const SizedBox(height: 40),
//
//             // Example: Show selected range in a button or chip
//             Center(
//               child: Chip(
//                 label: Text(
//                   'Selected: ${_formatPrice(_currentRangeValues.start)} - ${_formatPrice(_currentRangeValues.end)}',
//                   style: const TextStyle(color: Colors.white),
//                 ),
//                 backgroundColor: Colors.blue,
//                 padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }