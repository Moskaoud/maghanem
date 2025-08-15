import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    // return Center(child: const Text("Task"));
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min, // Important to constrain height
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Price",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    )),
                const Text(
                  "\$199",
                  style: TextStyle(fontSize: 24, color: Color(0xFF2DD7A4)),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15)
              ),
              child: const Row(
                children: [
                  Text(
                    "Book Now",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Center(
                    child: Container(
                      // color: Colors.yellow,
                      height: 400,
                      child: const Image(
                        image: AssetImage("assets/images/img.png"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 35),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      width: 40,
                      height: 40,
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Color(0xFFB8B8B8),
                        size: 15,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 30,
                    child: CircleAvatar(
                      // backgroundColor: Colors.green,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite, color: Colors.red),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Coeurdes Alpes", style: TextStyle(fontSize: 24)),
                  Text(
                    "show map",
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Color(0xFFDF9652)),
                  Text(
                    "4.5 (365) Reviews",
                    style: TextStyle(color: Color(0xFF606060)),
                  ),
                ],
              ),
              Text(
                "Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....",
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text("Read more", style: TextStyle(color: Colors.blue)),
                  Icon(Icons.keyboard_arrow_down, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 10),
              Text("Facilities", style: TextStyle(fontSize: 18)),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildFacilityContainer(icon: Icons.wifi, text: "1 Heater"),
                  _buildFacilityContainer(
                    icon: Icons.dinner_dining,
                    text: "Dinner",
                  ),
                  _buildFacilityContainer(
                    icon: Icons.bathtub_outlined,
                    text: "1 Tub",
                  ),
                  _buildFacilityContainer(icon: Icons.pool_outlined, text: "Pool"),
                ],
              ),
              const SizedBox(height: 20),
             ],
          ),
        ),
      ),
    );
  }

  Widget _buildFacilityContainer({
    required IconData icon,
    required String text,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFEAF3FB),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Icon(icon, color: const Color(0xFF606060), size: 24),
          const SizedBox(height: 5),
          Text(
            text,
            style: const TextStyle(color: Color(0xFF606060), fontSize: 12),
          ),
        ],
      ),
    );
  }
}
