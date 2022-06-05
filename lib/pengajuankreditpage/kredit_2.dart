import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import './kredit_3.dart';

class Kredit2 extends StatefulWidget {
  Kredit2({Key? key}) : super(key: key);

  final nominal = NumberFormat("#,##0.00", "en_US");

  @override
  State<Kredit2> createState() => _Kredit1State();

  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => Kredit2(),
    );
  }
}

class CustomWidgets {
  static Widget textField(String title,
      {
      bool isNumber = false,
      int? length,
      TextEditingController? textController,
      int lines = 1,
      var cornerRadius = 0.0}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.normal, 
              fontFamily: 'Oppen-sans',
              color: Color(0xff355070),
              fontSize: 18),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            maxLines: lines,
            controller: textController,
            maxLength: length,
            inputFormatters: [
              LengthLimitingTextInputFormatter(length),
            ],
            keyboardType: isNumber ? TextInputType.number : TextInputType.text,
            textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(
                counterText: '',
                border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(cornerRadius),
                      ),
                fillColor: Colors.transparent,
                ),
          )
        ],
      ),
    );
  }
}



class _Kredit1State extends State<Kredit2> {
  String? sampingan;
  String? asset;
  String? cicilan;
  String? _bisnis;
  List listbisnis = [
    'Kuliner',
    'Penjual Jasa',
    'Lainnya'
  ];
  String? _penghasilan;
  List listpenghasilan= [
    '< 1 Juta',
    '> 1 Juta',
    '> 3 Juta',
    '< 10 Juta',   
    '> 10 Juta', 
  ];
  String? _tempatTinggal;
  List listtempattinggal=[
    'Milik Sendiri',
    'Ikut Orang Tua',
    'Sewa'
  ];
  String? _penghasilanPasanagan;
  List listpenghasilanPasangan = [
    '< 1 Juta',
    '> 1 Juta',
    '> 3 Juta',
    '< 10 Juta',   
    '> 10 Juta', 
  ];
  String? _melunasiCicilan;
  List listmelunasiCicilan=[
    'Mengandalkan Usaha Utama',
    'Mengandalkan Usaha Sampingan',
    'Dua duanya'
  ];
  String? _kondisiBisnis;
  List listkondisiBisnis=[
    'Omzet menurun dalam 2 bulan terakhir',
    'Flat seperti biasanya',
    'Ada peningkatan Omzet dalam 2 bulan terakhir',
    'Sedang tidak baik – baik saja'
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
              const Text(
                "Kondisi",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomWidgets.textField('Apa pekerjaan anda?', lines: 1,cornerRadius: 10.0),
              const SizedBox(
                height: 20,
              ),
              CustomWidgets.textField('Sudah berapa lama anda bekerja (untuk posisi ini)?', lines: 1,cornerRadius: 10.0),
              const SizedBox(
                height: 20,
              ),
              const Text("Apakah anda memiliki usaha atau bisnis sampingan?", style: TextStyle( 
                     fontSize: 18,
                     color: Color(0xff355070),
                  ),),
                  const SizedBox(height: 10,),
                  ListTile(
                     title: const Text("Ya",style: TextStyle(color: Color(0xff355070)),),
                     leading: Radio(
                       value: "1", 
                       groupValue: sampingan, 
                       onChanged: (value){
                          setState(() {
                             sampingan = value.toString();
                          });
                       }),
                  ),
                  ListTile(
                     title: const Text("Tidak",style: TextStyle(color: Color(0xff355070)),),
                     leading: Radio(
                       value: "0", 
                       groupValue: sampingan, 
                       onChanged: (value){
                          setState(() {
                             sampingan = value.toString();
                          });
                       }),
                  ),
                  const SizedBox(height: 20,),
                  const Text("Untuk pekerjaan anda sekarang, status anda adalah karyawan tetap?", style: TextStyle( 
                     fontSize: 18,
                     color: Color(0xff355070),
                  ),),
                  const SizedBox(height: 10,),
                  ListTile(
                     title: const Text("Karyawan Tetap",style: TextStyle(color: Color(0xff355070)),),
                     leading: Radio(
                       value: "2", 
                       groupValue: sampingan, 
                       onChanged: (value){
                          setState(() {
                             sampingan = value.toString();
                          });
                       }),
                  ),
                  ListTile(
                     title: const Text("Karyawan Kontrak",style: TextStyle(color: Color(0xff355070)),),
                     leading: Radio(
                       value: "1", 
                       groupValue: sampingan, 
                       onChanged: (value){
                          setState(() {
                             sampingan = value.toString();
                          });
                       }),
                  ),
                  const SizedBox(height: 20,),
              CustomWidgets.textField('Apa nama usaha yang dijalankan?', lines: 1,cornerRadius: 10.0),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Usaha anda bergerak di bidang apa (untuk anda yang memiliki bisnis sendiri)?",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Oppen-sans',
                    color: Color(0xff355070),
                    fontSize: 18),
              ),
              const SizedBox(
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
                          'Pilih Bisnis Anda',
                        ),
                      ),
                    ],
                  ),
                  icon: const Icon(Icons.arrow_drop_down),
                  buttonPadding: const EdgeInsets.symmetric(horizontal: 10),
                  items: listbisnis
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          ))
                      .toList(),
                  value: _bisnis,
                  onChanged: (value) {
                    setState(() {
                      _bisnis = value as String;
                    });
                  },
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffA8A8A8)),
                  ),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffA8A8A8)),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              CustomWidgets.textField('Berapa jumlah karyawan atau tenaga kerja yang membantu anda (untuk yang memiliki usaha sendiri)?', 
              lines: 1,
              cornerRadius: 10.0,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Berapa pendapatan anda dalam satu bulan?",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Oppen-sans',
                    color: Color(0xff355070),
                    fontSize: 18),
              ),
              const SizedBox(
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
                          'Pilih Penghasilan Anda dalam 1 Bulan',
                        ),
                      ),
                    ],
                  ),
                  icon: const Icon(Icons.arrow_drop_down),
                  buttonPadding: const EdgeInsets.symmetric(horizontal: 10),
                  items: listpenghasilan
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          ))
                      .toList(),
                  value: _penghasilan,
                  onChanged: (value) {
                    setState(() {
                      _penghasilan = value as String;
                    });
                  },
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffA8A8A8)),
                  ),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffA8A8A8)),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              CustomWidgets.textField('Berapa penghasilan tambahan anda dari usaha sampingan (jika ada)?', 
              lines: 1,
              isNumber: true,
              cornerRadius: 10.0
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Apakah pasangan anda juga bekerja (memiliki penghasilan tetap)?", style: TextStyle( 
                     fontSize: 18,
                     color: Color(0xff355070),
                  ),),
                  const SizedBox(height: 10,),
                  ListTile(
                     title: const Text("Ya",style: TextStyle(color: Color(0xff355070)),),
                     leading: Radio(
                       value: "1", 
                       groupValue: sampingan, 
                       onChanged: (value){
                          setState(() {
                             sampingan = value.toString();
                          });
                       }),
                  ),
                  ListTile(
                     title: const Text("Tidak",style: TextStyle(color: Color(0xff355070)),),
                     leading: Radio(
                       value: "0", 
                       groupValue: sampingan, 
                       onChanged: (value){
                          setState(() {
                             sampingan = value.toString();
                          });
                       }),
                  ),
                  const SizedBox(height: 20,),
              CustomWidgets.textField('Berapa penghasilan tambahan anda dari usaha sampingan (jika ada)?',
              lines: 1,
              isNumber: true,
              cornerRadius: 10.0,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Berapa pendapatan pasangan anda (jika pasangan anda memiliki penghasilan tetap)?",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Oppen-sans',
                    color: Color(0xff355070),
                    fontSize: 18),
              ),
              const SizedBox(
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
                          'Pilih Penghasilan Pasangan Anda dalam 1 Bulan',
                        ),
                      ),
                    ],
                  ),
                  icon: const Icon(Icons.arrow_drop_down),
                  buttonPadding: const EdgeInsets.symmetric(horizontal: 10),
                  items: listpenghasilanPasangan
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          ))
                      .toList(),
                  value: _penghasilanPasanagan,
                  onChanged: (value) {
                    setState(() {
                      _penghasilanPasanagan = value as String;
                    });
                  },
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffA8A8A8)),
                  ),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffA8A8A8)),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Text("Apakah memiliki aset lain seperti warisan, tanah, simpanan berjangka, dan lain-lain?", style: TextStyle( 
                     fontSize: 18,
                     color: Color(0xff355070),
                  ),),
                  const SizedBox(height: 10,),
                  ListTile(
                     title: const Text("Ya",style: TextStyle(color: Color(0xff355070)),),
                     leading: Radio(
                       value: "1", 
                       groupValue: asset, 
                       onChanged: (value){
                          setState(() {
                             asset = value.toString();
                          });
                       }),
                  ),
                  ListTile(
                     title: const Text("Tidak",style: TextStyle(color: Color(0xff355070)),),
                     leading: Radio(
                       value: "0", 
                       groupValue: asset, 
                       onChanged: (value){
                          setState(() {
                             asset= value.toString();
                          });
                       }),
                  ),
                  const SizedBox(height: 20,),
              const Text("Apakah anda mempunyai cicilan di lain tempat? (KPR, Bank dll.)", style: TextStyle( 
                     fontSize: 18,
                     color: Color(0xff355070),
                  ),),
                  const SizedBox(height: 10,),
                  ListTile(
                     title: const Text("Ya",style: TextStyle(color: Color(0xff355070)),),
                     leading: Radio(
                       value: "1", 
                       groupValue: cicilan, 
                       onChanged: (value){
                          setState(() {
                             cicilan = value.toString();
                          });
                       }),
                  ),
                  ListTile(
                     title: const Text("Tidak",style: TextStyle(color: Color(0xff355070)),),
                     leading: Radio(
                       value: "0", 
                       groupValue: cicilan, 
                       onChanged: (value){
                          setState(() {
                             cicilan = value.toString();
                          });
                       }),
                  ),
                  const SizedBox(height: 20,),
              CustomWidgets.textField('Berapa Jumlah Tanggungan anda?', 
              lines: 1,
              isNumber: true,
              cornerRadius: 10.0,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Keadaan tempat tinggal sekarang",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Oppen-sans',
                    color: Color(0xff355070),
                    fontSize: 18),
              ),
              const SizedBox(
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
                          'Pilih Keadaan Tempat Tinggal',
                        ),
                      ),
                    ],
                  ),
                  icon: const Icon(Icons.arrow_drop_down),
                  buttonPadding: const EdgeInsets.symmetric(horizontal: 10),
                  items: listtempattinggal
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          ))
                      .toList(),
                  value: _tempatTinggal,
                  onChanged: (value) {
                    setState(() {
                      _tempatTinggal = value as String;
                    });
                  },
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffA8A8A8)),
                  ),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffA8A8A8)),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Text(
                "Bagaimana Rencana Anda untuk Melunasi Cicilan?",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Oppen-sans',
                    color: Color(0xff355070),
                    fontSize: 18),
              ),
              const SizedBox(
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
                          'Pilih Rencana Anda Untuk Melunasi Cicilan',
                        ),
                      ),
                    ],
                  ),
                  icon: const Icon(Icons.arrow_drop_down),
                  buttonPadding: const EdgeInsets.symmetric(horizontal: 10),
                  items: listmelunasiCicilan
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          ))
                      .toList(),
                  value: _melunasiCicilan,
                  onChanged: (value) {
                    setState(() {
                      _melunasiCicilan = value as String;
                    });
                  },
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffA8A8A8)),
                  ),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffA8A8A8)),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Text(
                "Jika Anda Mempunyai bisnis Bagaimana Kondisi Bisnis Anda Sekarang?",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Oppen-sans',
                    color: Color(0xff355070),
                    fontSize: 18),
              ),
              const SizedBox(
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
                          'Pilih Kondisi Bisnis Anda',
                        ),
                      ),
                    ],
                  ),
                  icon: const Icon(Icons.arrow_drop_down),
                  buttonPadding: const EdgeInsets.symmetric(horizontal: 10),
                  items: listkondisiBisnis
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          ))
                      .toList(),
                  value: _kondisiBisnis,
                  onChanged: (value) {
                    setState(() {
                      _kondisiBisnis = value as String;
                    });
                  },
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffA8A8A8)),
                  ),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffA8A8A8)),
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
        Navigator.push(context,Kredit3.route());
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