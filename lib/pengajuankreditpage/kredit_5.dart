import 'package:flutter/material.dart';

class Kredit5 extends StatefulWidget {
  Kredit5({Key? key}) : super(key: key);

  @override
  State<Kredit5> createState() => _Kredit5State();

  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => Kredit5(),
    );
  }
}

class _Kredit5State extends State<Kredit5> {
  bool isChecked = false;

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
                "Apakah Saya Bertanggng Jawab Penuh Atas Semua Informasi Dan Dokumen Yang Saya Berikan?",
                style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Oppen-sans',
                    color: Color(0xff355070),
                    fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  "Saya benar-benar bertanggung jawab atas isian data saat ini, dan saya akan menerima sanksi jika ada ketidak sesuaian data",
                  style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Oppen-sans',
                      fontSize: 18),
                ),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
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
      onPressed: () {},
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
