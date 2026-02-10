import 'package:flutter/material.dart';
import 'app_bar.dart';
//
// class AdvancedAnimation extends StatefulWidget {
//   const AdvancedAnimation({super.key});
//   @override
//   State<AdvancedAnimation> createState() => _AdvancedAnimationState();
// }
//
// class _AdvancedAnimationState extends State<AdvancedAnimation> {
//   bool _isBigAndRed = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: CommonAppBar(title: 'Simple Animation',
//         showBackButton: false, //no back in home screen
//       ),
//       body: Center(
//         child: GestureDetector(
//           onTap: () => setState(() => _isBigAndRed = !_isBigAndRed),
//           child: AnimatedContainer(
//             duration: const Duration(milliseconds: 600),
//             curve: Curves.easeInOutCubic,
//             width: _isBigAndRed ? 220 : 120,
//             height: _isBigAndRed ? 220 : 120,
//             decoration: BoxDecoration(
//               color: _isBigAndRed ? Colors.red : Colors.blue,
//               borderRadius: BorderRadius.circular(_isBigAndRed ? 40 : 16),
//               boxShadow: _isBigAndRed
//                   ? [BoxShadow(color: Colors.red.withOpacity(0.6), blurRadius: 30)]
//                   : null,
//             ),
//             child: AnimatedOpacity(
//               opacity: _isBigAndRed ? 1.0 : 0.6,
//               duration: const Duration(milliseconds: 800),
//               child: const Icon(Icons.favorite, color: Colors.white, size: 60),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//


//
// import 'dart:math' show pi;
//
// class AdvancedAnimation extends StatefulWidget {
//   const AdvancedAnimation({super.key});
//   @override
//   State<AdvancedAnimation> createState() => _AdvancedAnimationState();
// }
//
// class _AdvancedAnimationState extends State<AdvancedAnimation>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _rotation;
//   late Animation<double> _scale;
//   late Animation<Color?> _color;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 3),
//     )..repeat(reverse: true);
//
//     _rotation = Tween<double>(begin: 0, end: 2 * pi).animate(
//       CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
//     );
//
//     _scale = Tween<double>(begin: 0.8, end: 1.4).animate(
//       CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
//     );
//
//     _color = ColorTween(begin: Colors.blue, end: Colors.purple).animate(
//       CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
//     );
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: CommonAppBar(title: 'Medium Animation',
//         showBackButton: false, //no back in home screen
//       ),
//       body: Center(
//         child: AnimatedBuilder(
//           animation: _controller,
//           builder: (context, child) {
//             return Transform.rotate(
//               angle: _rotation.value,
//               child: Transform.scale(
//                 scale: _scale.value,
//                 child: Container(
//                   width: 180,
//                   height: 180,
//                   decoration: BoxDecoration(
//                     color: _color.value,
//                     shape: BoxShape.circle,
//                     boxShadow: [
//                       BoxShadow(
//                         color: _color.value!.withOpacity(0.5),
//                         blurRadius: 30,
//                         spreadRadius: 10,
//                       ),
//                     ],
//                   ),
//                   child: const Icon(Icons.star, color: Colors.white, size: 80),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }


class AdvancedAnimation extends StatefulWidget {
  const AdvancedAnimation({super.key});
  @override
  State<AdvancedAnimation> createState() => _AdvancedAnimationState();
}

class _AdvancedAnimationState extends State<AdvancedAnimation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnim;
  late Animation<double> _rotationAnim;
  late Animation<Offset> _slideAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat(reverse: true);

    _scaleAnim = Tween<double>(begin: 0.6, end: 1.4).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.6, curve: Curves.elasticOut),
      ),
    );

    _rotationAnim = Tween<double>(begin: 0, end: 2 * 3.14159).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 0.9, curve: Curves.easeInOutBack),
      ),
    );

    _slideAnim = Tween<Offset>(begin: const Offset(0, 0.4), end: const Offset(0, -0.4)).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.6, 1.0, curve: Curves.easeInOut),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(title: 'Advanced - Hero + Staggered',
        showBackButton: false, //no back in home screen
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Hero animation example (tap to go to detail)
            Hero(
              tag: 'heart-icon',
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Transform.translate(
                    offset: _slideAnim.value * 100,
                    child: Transform.rotate(
                      angle: _rotationAnim.value,
                      child: Transform.scale(
                        scale: _scaleAnim.value,
                        child: child,
                      ),
                    ),
                  );
                },
                child: const Icon(Icons.favorite, color: Colors.red, size: 120),
              ),
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const DetailScreen(),
                  ),
                );
              },
              child: const Text("Tap → Hero Transition"),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hero Destination")),
      body: Center(
        child: Hero(
          tag: 'heart-icon',
          child: const Icon(Icons.favorite, color: Colors.red, size: 300),
        ),
      ),
    );
  }
}