import 'package:dokter/src/core/assets/assets.gen.dart';
import 'package:dokter/src/presentation/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class OnlineAppointmentsCard extends StatelessWidget {
  const OnlineAppointmentsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stack = Stack(
      children: [
        GreenCard(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Pelayanan Kesehatan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        height: 22 / 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Mari kita beri pelayanan terbaik untuk masyarakat',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        height: 18 / 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 32),
              Assets.images.bupati.image(width: 100),
            ],
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          child: Assets.images.vectorCard.image(),
        ),
      ],
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        stack,
        Container(
          height: 48,
          margin: const EdgeInsets.symmetric(horizontal: 24),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset.zero,
                blurRadius: 10,
                color: Color(0x4066D066),
              ),
            ],
          ),
          child: Marquee(
            text: 'Mari kita berikan pelayanan terbaik untuk kesehatan '
                'masyarakat dan lingkungan • ',
          ),
        ),
      ],
    );
  }
}
