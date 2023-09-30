import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship_tasks/models/service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int selectedService = -1;

class _HomeScreenState extends State<HomeScreen> {
  List<Service> services = [
    Service(
      'https://img.icons8.com/external-vitaliy-gorbachev-flat-vitaly-gorbachev/2x/external-cleaning-labour-day-vitaliy-gorbachev-flat-vitaly-gorbachev.png',
      'Cleaning',
    ),
    Service(
      'https://img.icons8.com/external-vitaliy-gorbachev-flat-vitaly-gorbachev/2x/external-plumber-labour-day-vitaliy-gorbachev-flat-vitaly-gorbachev.png',
      'Plumber',
    ),
    Service(
      'https://img.icons8.com/external-wanicon-flat-wanicon/2x/external-multimeter-car-service-wanicon-flat-wanicon.png',
      'Electrician',
    ),
    Service(
      'https://img.icons8.com/external-itim2101-flat-itim2101/2x/external-painter-male-occupation-avatar-itim2101-flat-itim2101.png',
      'Painter',
    ),
    Service(
      'https://img.icons8.com/fluency/2x/drill.png',
      'Carpenter',
    ),
    Service(
      'https://img.icons8.com/external-itim2101-flat-itim2101/2x/external-gardener-male-occupation-avatar-itim2101-flat-itim2101.png',
      'Gardener',
    ),
    Service(
      'https://img.icons8.com/fluency/2x/sewing-machine.png',
      'Tailor',
    ),
    Service(
      'https://img.icons8.com/color/2x/housekeeper-female.png',
      'Maid',
    ),
    Service(
      'https://img.icons8.com/external-sbts2018-lineal-color-sbts2018/2x/external-driver-women-profession-sbts2018-lineal-color-sbts2018.png',
      'Driver',
    ),
    Service(
      'https://img.icons8.com/external-wanicon-flat-wanicon/2x/external-cooking-daily-routine-wanicon-flat-wanicon.png',
      'Cook',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 100.0, right: 20.0, left: 20.0),
                  child: Text(
                    'Which service do \nyou need?',
                    style: GoogleFonts.urbanist(
                      textStyle: TextStyle(
                        fontSize: 30,
                        color: Colors.grey.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.0,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: services.length,
                    itemBuilder: (BuildContext context, int index) {
                      return serviceContainer(services[index].imageUrl,
                          services[index].name, index);
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

serviceContainer(String name, String image, int index) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color:
          selectedService == index ? Colors.blue.shade50 : Colors.grey.shade100,
      border: Border.all(
        color:
            selectedService == index ? Colors.blue : Colors.blue.withOpacity(0),
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.network(
          image,
          height: 80,
          errorBuilder:
              (BuildContext context, Object exception, StackTrace? stackTrace) {
            return const Icon(Icons.error);
          },
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          name,
          style: GoogleFonts.urbanist(
            textStyle: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    ),
  );
}
