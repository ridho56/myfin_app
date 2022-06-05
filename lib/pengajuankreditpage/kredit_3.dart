import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import './kredit_4.dart';

class Kredit3 extends StatefulWidget {
  Kredit3({Key? key}) : super(key: key);

  @override
  State<Kredit3> createState() => _Kredit3State();

  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => Kredit3(),
    );
  }
}

class _Kredit3State extends State<Kredit3> {
  String? _valueHubunganKeluarga;
  List listHubunganKeluarga = [
    'Selalu Berkumpul Setiap Hari',
    'Bertemu Seminggu Sekali',
    'Bertemu Beberapa Bulan/Tahun Sekali'
  ];

  String? _valueHubunganSosial;
  List listHubunganSosial = ['Saling Rukun', 'Individualis'];

  String? _valueMemilihAplikasi;
  List listMemilihAplikasi = [
    'Aman',
    'Bunga Ringan',
    'Sudah Pernah Meminjam Sebelumnya',
    'Lainnya'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Pengajuan Kredit',
          style: TextStyle(
            color: Color.fromRGBO(53, 80, 112, 1),
            fontSize: 25,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hubungan",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Gimana hubungan kamu dengan keluarga di rumah?",
                style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Oppen-sans',
                    color: Color(0xff355070),
                    fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  buttonHeight: 60,
                  isExpanded: true,
                  hint: Row(
                    children: const [
                      Expanded(
                        child: Text(
                          'Pilih Hubungan Keluarga',
                        ),
                      ),
                    ],
                  ),
                  icon: SvgPicture.asset('assets/svg/arrow_down.svg'),
                  buttonPadding: EdgeInsets.symmetric(horizontal: 10),
                  items: listHubunganKeluarga
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          ))
                      .toList(),
                  value: _valueHubunganKeluarga,
                  onChanged: (value) {
                    setState(() {
                      _valueHubunganKeluarga = value as String;
                    });
                  },
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffA8A8A8)),
                  ),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffA8A8A8)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Bagaimana anda menjalin hubungan dengan orang-orang disekitar anda?",
                style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Oppen-sans',
                    color: Color(0xff355070),
                    fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  buttonHeight: 60,
                  isExpanded: true,
                  hint: Row(
                    children: const [
                      Expanded(
                        child: Text(
                          'Pilih Hubungan Sosial',
                        ),
                      ),
                    ],
                  ),
                  icon: SvgPicture.asset('assets/svg/arrow_down.svg'),
                  buttonPadding: EdgeInsets.symmetric(horizontal: 10),
                  items: listHubunganSosial
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          ))
                      .toList(),
                  value: _valueHubunganSosial,
                  onChanged: (value) {
                    setState(() {
                      _valueHubunganSosial = value as String;
                    });
                  },
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffA8A8A8)),
                  ),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffA8A8A8)),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Apa motivasi anda memilih aplikasi kami sebagai sarana pinjaman?",
                style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Oppen-sans',
                    color: Color(0xff355070),
                    fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  buttonHeight: 60,
                  isExpanded: true,
                  hint: Row(
                    children: const [
                      Expanded(
                        child: Text(
                          'Pilih Alasan',
                        ),
                      ),
                    ],
                  ),
                  icon: SvgPicture.asset('assets/svg/arrow_down.svg'),
                  buttonPadding: EdgeInsets.symmetric(horizontal: 10),
                  items: listMemilihAplikasi
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          ))
                      .toList(),
                  value: _valueMemilihAplikasi,
                  onChanged: (value) {
                    setState(() {
                      _valueMemilihAplikasi = value as String;
                    });
                  },
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffA8A8A8)),
                  ),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffA8A8A8)),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Center(
                child: buildButton(),
              )
            ],
          ),
        ),
      ),
    );
  }

  buildButton() {
    return RawMaterialButton(
      onPressed: () {
        Navigator.push(context,Kredit4.route());
      },
      fillColor: const Color.fromRGBO(53, 80, 112, 1),
      constraints: const BoxConstraints(minHeight: 49, minWidth: 128),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      textStyle: const TextStyle(
        color: Colors.white,
        fontFamily: 'Poppins',
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
      child: const Text('Lanjutkan'),
    );
  }
}
