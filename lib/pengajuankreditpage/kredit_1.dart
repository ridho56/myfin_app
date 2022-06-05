import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import './kredit_2.dart';

class Kredit1 extends StatefulWidget {
  const Kredit1({Key? key}) : super(key: key);

  @override
  State<Kredit1> createState() => _Kredit1State();

  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => Kredit1(),
    );
  }
}

class _Kredit1State extends State<Kredit1> {
  String? _valuePenggunaanKredit;
  List listPenggunaanKredit = [
    'Buka Usaha',
    'Membeli barang elektronik(HP, Laptop, TV, dll)',
    'Membeli kendaraan (Mobil, Motor, Sepeda, dll)',
    'Untuk kebutuhan sehari–hari',
    'Membayar sewa tempat',
    'Lainnya'
  ];

  String? _valueTenor;
  List listTenor = [
    '3 Bulan',
    '6 Bulan',
    '12 Bulan',
  ];

  String? _valueUsaha;
  List listUsaha = [
    'Kuliner',
    'Penjual Jasa',
    'Dll.',
  ];

  String? _valuePenghasilanTambahan;
  List listPenghasilanTambahan = [
    'Tidak Ada',
    'Dibawah Gaji Utama',
    'Sama Dengan Gaji Utama',
    'Lebih Besar Dari Gaji Utama'
  ];

  String? _valuePendapatanPasangan;
  List listPendapatanPangsangan = [
    'Kurang Dari 1 Juta',
    'Lebih Dari 1 Juta',
    'Lebih Dari 3 Juta',
    'Kurang Dari 10 Juta,'
        'Lebih Dari 10 Juta'
  ];

  String? _valueTempatTinggal;
  List listTempatTinggal = ['Milik Sendiri', 'Ikut Orang Tua', 'Sewa'];

  String? _valueRencanaPelunasan;
  List listRencanaPelunasan = [
    'Mengandalkan Usaha Utama',
    'Mengandalkan Usaha Sampingan',
    'Dua duanya'
  ];

  String? _valueKondisiBisnis;
  List listKondisiBisnis = [
    'Omzet Menurun Dalam 2 Bulan Terakhir',
    'Flat Seperti Biasanya',
    'Ada Peningkatan Omzet Dalam 2 Bulan Terakhir',
    'Sedang Tidak Baik-Baik Saja'
  ];

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
                "Kapasitas",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Tujuan Penggunaan Kredit",
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
                          'Pilih Penggunaan Kredit',
                        ),
                      ),
                    ],
                  ),
                  icon: SvgPicture.asset('assets/svg/arrow_down.svg'),
                  buttonPadding: EdgeInsets.symmetric(horizontal: 10),
                  items: listPenggunaanKredit
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          ))
                      .toList(),
                  value: _valuePenggunaanKredit,
                  onChanged: (value) {
                    setState(() {
                      _valuePenggunaanKredit = value as String;
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
                "Besar Pengajuan",
                style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Oppen-sans',
                    color: Color(0xff355070),
                    fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Masukkan Besar Pengajuan"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Tenor",
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
                          'Pilih Tenor',
                        ),
                      ),
                    ],
                  ),
                  icon: SvgPicture.asset('assets/svg/arrow_down.svg'),
                  buttonPadding: EdgeInsets.symmetric(horizontal: 10),
                  items: listTenor
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          ))
                      .toList(),
                  value: _valueTenor,
                  onChanged: (value) {
                    setState(() {
                      _valueTenor = value as String;
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
        Navigator.push(context,Kredit2.route());
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
