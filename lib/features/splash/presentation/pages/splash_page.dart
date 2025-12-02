import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:candy_puzzle/features/splash/presentation/widgets/splash_progress_bar.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3500),
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(milliseconds: 300), () {
          if (mounted) {
            context.go('/');
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/splash-1.png',
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.08,
            left: 0,
            right: 0,
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                final progress = _animation.value;
                final percentage = (progress * 100).toInt();

                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [

                          BoxShadow(
                            color: Color.fromRGBO(0xFFEC4899 >> 16 & 0xFF,
                                0xFFEC4899 >> 8 & 0xFF,
                                0xFFEC4899 & 0xFF,
                                progress * 1.0),
                            blurRadius: 60 * progress,
                            spreadRadius: 15 * progress,
                          ),

                          BoxShadow(
                            color: Color.fromRGBO(0xFFFF6BB3 >> 16 & 0xFF,
                                0xFFFF6BB3 >> 8 & 0xFF,
                                0xFFFF6BB3 & 0xFF,
                                progress * 0.9),
                            blurRadius: 40 * progress,
                            spreadRadius: 8 * progress,
                          ),

                          BoxShadow(
                            color: Color.fromRGBO(255,
                                255,
                                255,
                                progress * 0.7),
                            blurRadius: 20 * progress,
                            spreadRadius: 4 * progress,
                          ),
                        ],
                      ),
                      child: Text(
                        '$percentage%',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [

                          BoxShadow(
                            color: Color.fromRGBO(0xFFEC4899 >> 16 & 0xFF,
                                0xFFEC4899 >> 8 & 0xFF,
                                0xFFEC4899 & 0xFF,
                                progress * 1.0),
                            blurRadius: 50 * progress,
                            spreadRadius: 12 * progress,
                          ),

                          BoxShadow(
                            color: Color.fromRGBO(0xFFFF6BB3 >> 16 & 0xFF,
                                0xFFFF6BB3 >> 8 & 0xFF,
                                0xFFFF6BB3 & 0xFF,
                                progress * 0.8),
                            blurRadius: 30 * progress,
                            spreadRadius: 6 * progress,
                          ),

                          BoxShadow(
                            color: Color.fromRGBO(255,
                                255,
                                255,
                                progress * 0.5),
                            blurRadius: 15 * progress,
                            spreadRadius: 3 * progress,
                          ),
                        ],
                      ),
                      child: SplashProgressBar(
                        progress: progress,
                        width: screenWidth * 0.55,
                        height: 10,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
