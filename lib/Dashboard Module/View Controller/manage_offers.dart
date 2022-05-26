import 'package:flutter/material.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'package:green_and_clean/Utils/widgets/booking_thumbnail.dart';

class ManageOffers extends StatelessWidget {
  const ManageOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        color: theme.primaryColor,
        child: Column(
          children: [
            AppBarView(
                title: "Manage Offers",
                enableBackButton: true,
                backButtonOnPressed: () {
                  Navigator.pop(context);
                },
                enableTrailingButton: false),
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(top: 2),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25))),
              child: ListView.builder(
                  padding: const EdgeInsets.all(0),
                  itemBuilder: (_, index) => BookingThumbnail(
                      accountBooking: false, onPressed: () {})),
            ))
          ],
        ),
      ),
    );
  }
}
