import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import './data.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.grid_view_rounded,
                          color: PrimaryColor,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.03),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.09,
                          height: MediaQuery.of(context).size.width * 0.09,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://cdn.idntimes.com/content-images/community/2022/02/255918793-4559478657466469-3875315353444289981-n-e568a1dd313593ffa2f2bfaedd2bf7a1-6fa4b0fdc85a5571e6948245f3d94827.jpg',
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6.0,
                          horizontal: 12.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[200]!,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(Icons.search),
                            ),
                            Expanded(
                              child: TextFormField(
                                initialValue: null,
                                decoration: const InputDecoration.collapsed(
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  hintText: "Search",
                                  hoverColor: Colors.transparent,
                                ),
                                onFieldSubmitted: (value) {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: PrimaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: InkWell(
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            FontAwesomeIcons.sliders,
                            color: Colors.white,
                            size: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(
                  'Top Stays',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Expanded(
                      // Mengatur Tinggi
                      child: Container(
                        margin: EdgeInsets.only(top: 8),
                        height: 170,
                        // Mengatur Tinggi
                        child: ListView.builder(
                          itemCount: datawisata.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: ScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              // Mengatur Lebar
                              child: Container(
                                width: 120,
                                // Mengatur Lebar
                                margin: EdgeInsets.only(right: 18),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        datawisata[index]['image'],
                                      ),
                                      fit: BoxFit.cover),
                                ),

                                // Untuk Text
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        datawisata[index]['tittle'],
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(
                  'Top Hotels',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.006,
                ),
                Text(
                  'In Bali',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),

                // Harus menggunaan container dan diukur width dan hightnya
                ListView.builder(
                  itemCount: tophotels.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 8),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.13,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(7),
                              child: Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 90,
                                      height: 90,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  tophotels[index]['images']),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                    ),
                                    const SizedBox(
                                      width: 12.0,
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 240,
                                        height: 90,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              tophotels[index]['tittle'],
                                              style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12,
                                                  color: PrimaryColor),
                                            ),
                                            const SizedBox(
                                              height: 8.0,
                                            ),
                                            Text(
                                              tophotels[index]['namehotels'],
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Expanded(
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    size: 18,
                                                    color: PrimaryColor,
                                                  ),
                                                  Text(tophotels[index]
                                                      ['ratings']),
                                                  Expanded(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Opacity(
                                                          opacity: 0.5,
                                                          child: Text(
                                                            tophotels[index]
                                                                ['price'],
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize:
                                                                        12),
                                                          ),
                                                        ),
                                                        Opacity(
                                                          opacity:
                                                              0.5, // Nilai opacity antara 0.0 (transparan) hingga 1.0 (tidak transparan)
                                                          child: Text(
                                                            '/nights',
                                                            style: GoogleFonts
                                                                .poppins(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 12,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
