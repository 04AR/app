import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:app/components/place_card.dart';
import 'package:app/components/Icons_card.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: const Text(
            "B O O K  D O C ",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          expandedHeight: 200,
          elevation: 10,
          pinned: true,
          snap: false,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            background: CarouselSlider(
              items: [
                Image.asset(
                  "assets/images/ad1.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/ad2.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/ad3.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ],
              options: CarouselOptions(
                aspectRatio: 1,
              ),
            ),
            // title: Text("SUB_TITLE"),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: Divider()),
                Text('B E S T  N E A R'),
                Expanded(child: Divider()),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: place_card(
            title: "MAX Super Care",
            rating: 4.3,
            address: "Mohali SAS Nagar",
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: Divider()),
                Text('N E A R  Y O U'),
                Expanded(child: Divider()),
              ],
            ),
          ),
        ),
        const SliverGrid(
            delegate: SliverChildListDelegate.fixed([
              place_card(
                title: "MAX Super Care",
                rating: 4.2,
                address: "Mohali SAS Nagar",
                url: "assets/images/max_hosp.jpg",
              ),
              place_card(
                title: "Amcare Hospital",
                rating: 4.3,
                address: "Vip Road",
                url: "assets/images/amcare.jpg",
              ),
              place_card(
                title: "Fortis Hospital",
                rating: 4.4,
                address: "Chandigarh Sector 62",
                url: "assets/images/fort.jpg",
              ),
              place_card(
                title: "Mahatma Ghandhi Hospital",
                rating: 4.3,
                address: "Sitapur Panchkula",
                url: "assets/images/mt.jpg",
              ),
            ]),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.1,
            )),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: Divider()),
                Text('Q U I C K  '),
                Expanded(child: Divider()),
              ],
            ),
          ),
        ),
        const SliverGrid(
            delegate: SliverChildListDelegate.fixed([
              Icons_card(
                title: "X - Ray",
                url: "assets/images/x-rays.png",
              ),
              Icons_card(
                title: "Blood Bank",
                url: "assets/images/blood.png",
              ),
              Icons_card(
                title: "Lab Test",
                url: "assets/images/impairment-rating.png",
              ),
              Icons_card(
                title: "Pharma",
                url: "assets/images/medicine.png",
              ),
              Icons_card(
                title: "Insurance",
                url: "assets/images/health-report.png",
              ),
            ]),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.1,
            )),
      ],
    );
  }
}
