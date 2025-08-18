//Notification to user
//for upcoming update
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saathvik/functions/hover%20effect.dart';
import 'package:saathvik/styles/styles.dart';

class AnimatedDialog extends StatefulWidget {
  const AnimatedDialog({super.key});

  @override
  State<AnimatedDialog> createState() => _AnimatedDialogState();
}

class _AnimatedDialogState extends State<AnimatedDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutExpo,
    );

    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var isDeviceWidth = MediaQuery.of(context).size.width;
    return ScaleTransition(
      scale: _scaleAnimation,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: AlertDialog(
          elevation: 5,
          backgroundColor: SecondaryColor.withOpacity(0.95),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isDeviceWidth <= 500
                    ? Text(
                        'Exciting Updates Coming Soon!',
                        style: GoogleFonts.chakraPetch(
                            textStyle: textStyles.B, fontSize: 15),
                      )
                    : Text(
                        'Exciting Updates Coming Soon!',
                        style: GoogleFonts.chakraPetch(
                            textStyle: textStyles.B, fontSize: 18),
                      ),
                GestureDetector(
                  onTap: () {
                    _controller.reverse().then((_) {
                      Navigator.of(context).pop();
                    });
                  },
                  child: HoverEffect(
                    childA: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: FontBg,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Icon(
                          Icons.close,
                          color: SecondaryColor,
                          size: 22 - 1,
                        ),
                      ),
                    ),
                    childB: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.redAccent,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(2),
                        child: Icon(
                          Icons.close,
                          color: Colors.black,
                          size: 22 - 1,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "I'm currently working on a new redesign for this portfolio website. Stay tuned for exciting updates!",
                style: GoogleFonts.chakraPetch(
                    textStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                )),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
