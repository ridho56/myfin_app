import 'package:flutter/material.dart';
import './kredit_5.dart';


class Kredit4 extends StatefulWidget {
  const Kredit4({Key? key}) : super(key: key);

  @override
  State<Kredit4> createState() => _Kredit4State();

   static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => const Kredit4(),
    );
  }
}

class _Kredit4State extends State<Kredit4> {

  String? pernahHutang;
  String? kesulitanHutang;
  String? melibatkanOrangLain;
  String? terlambatMembayar;
  String? hutangBank;
  String? hutangPlatformLain;

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
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                "Karakter",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),    
                    const Text("Apakah Anda Pernah Berhutang?", style: TextStyle( 
                       fontSize: 18,
                       color: Color(0xff355070),
                    ),),
      
                    const SizedBox(height: 10,),
      
                    ListTile(
                       title: const Text("Sering",style: TextStyle(color: Color(0xff355070))),
                       leading: Radio(
                         value: "1", 
                         groupValue: pernahHutang, 
                         onChanged: (value){
                            setState(() {
                               pernahHutang = value.toString();
                            });
                         }),
                    ),
      
                    ListTile(
                       title: const Text("Kadang - Kadang",style: TextStyle(color: Color(0xff355070))),
                       leading: Radio(
                         value: "2", 
                         groupValue: pernahHutang, 
                         onChanged: (value){
                            setState(() {
                               pernahHutang = value.toString();
                            });
                         }),
                    ),
                    ListTile(
                       title: const Text("Tidak Pernah",style: TextStyle(color: Color(0xff355070))),
                       leading: Radio(
                         value: "3", 
                         groupValue: pernahHutang, 
                         onChanged: (value){
                            setState(() {
                               pernahHutang = value.toString();
                            });
                         }),
                    ),
                    const SizedBox(height: 20,),
                    const Text("Apakah anda pernah mengalami kesulitan dalam membayar hutang?", style: TextStyle( 
                       fontSize: 18,
                       color: Color(0xff355070)
                    ),),
      
                    const SizedBox(height: 10,),
      
                    ListTile(
                       title: const Text("Sering",style: TextStyle(color: Color(0xff355070))),
                       leading: Radio(
                         value: "1", 
                         groupValue: kesulitanHutang, 
                         onChanged: (value){
                            setState(() {
                               kesulitanHutang = value.toString();
                            });
                         }),
                    ),
      
                    ListTile(
                       title: const Text("Kadang - Kadang",style: TextStyle(color: Color(0xff355070))),
                       leading: Radio(
                         value: "2", 
                         groupValue: kesulitanHutang, 
                         onChanged: (value){
                            setState(() {
                               kesulitanHutang = value.toString();
                            });
                         }),
                    ),
                    ListTile(
                       title: const Text("Tidak Pernah",style: TextStyle(color: Color(0xff355070))),
                       leading: Radio(
                         value: "3", 
                         groupValue: kesulitanHutang, 
                         onChanged: (value){
                            setState(() {
                               kesulitanHutang = value.toString();
                            });
                         }),
                    ),
                    const SizedBox(height: 20,),
                  const Text("Apakah anda pernah melibatkan orang lain dalam membayar hutang?", style: TextStyle( 
                       fontSize: 18,
                       color: Color(0xff355070),
                    ),),
      
                    const SizedBox(height: 10,),
      
                    ListTile(
                       title: const Text("Sering",style: TextStyle(color: Color(0xff355070))),
                       leading: Radio(
                         value: "1", 
                         groupValue: melibatkanOrangLain, 
                         onChanged: (value){
                            setState(() {
                               melibatkanOrangLain = value.toString();
                            });
                         }),
                    ),
      
                    ListTile(
                       title: const Text("Kadang - Kadang",style: TextStyle(color: Color(0xff355070))),
                       leading: Radio(
                         value: "2", 
                         groupValue: melibatkanOrangLain, 
                         onChanged: (value){
                            setState(() {
                               melibatkanOrangLain = value.toString();
                            });
                         }),
                    ),
                    ListTile(
                       title: const Text("Tidak Pernah",style: TextStyle(color: Color(0xff355070))),
                       leading: Radio(
                         value: "3", 
                         groupValue: melibatkanOrangLain, 
                         onChanged: (value){
                            setState(() {
                               melibatkanOrangLain = value.toString();
                            });
                         }),
                    ),
                    const SizedBox(height: 20,),
                  const Text("Apakah anda pernah terlambat dalam membayar hutang?", style: TextStyle( 
                       fontSize: 18,
                       color: Color(0xff355070)
                    ),),
      
                    const SizedBox(height: 10,),
      
                    ListTile(
                       title: const Text("Sering",style: TextStyle(color: Color(0xff355070))),
                       leading: Radio(
                         value: "1", 
                         groupValue: terlambatMembayar, 
                         onChanged: (value){
                            setState(() {
                               terlambatMembayar = value.toString();
                            });
                         }),
                    ),
      
                    ListTile(
                       title: const Text("Kadang - Kadang",style: TextStyle(color: Color(0xff355070))),
                       leading: Radio(
                         value: "2", 
                         groupValue: terlambatMembayar, 
                         onChanged: (value){
                            setState(() {
                               terlambatMembayar = value.toString();
                            });
                         }),
                    ),
                    ListTile(
                       title: const Text("Tidak Pernah",style: TextStyle(color: Color(0xff355070))),
                       leading: Radio(
                         value: "3", 
                         groupValue: terlambatMembayar, 
                         onChanged: (value){
                            setState(() {
                               terlambatMembayar = value.toString();
                            });
                         }),
                    ),
                    const SizedBox(height: 20,),
                  const Text("Apakah anda pernah berhutang di bank konvensional?", style: TextStyle( 
                       fontSize: 18,
                       color: Color(0xff355070)
                    ),),
      
                    const SizedBox(height: 10,),
      
                    ListTile(
                       title: const Text("Sering",style: TextStyle(color: Color(0xff355070))),
                       leading: Radio(
                         value: "1", 
                         groupValue: hutangBank, 
                         onChanged: (value){
                            setState(() {
                               hutangBank = value.toString();
                            });
                         }),
                    ),
      
                    ListTile(
                       title: const Text("Kadang - Kadang",style: TextStyle(color: Color(0xff355070))),
                       leading: Radio(
                         value: "2", 
                         groupValue: hutangBank, 
                         onChanged: (value){
                            setState(() {
                               hutangBank = value.toString();
                            });
                         }),
                    ),
                    ListTile(
                       title: const Text("Tidak Pernah",style: TextStyle(color: Color(0xff355070))),
                       leading: Radio(
                         value: "3", 
                         groupValue: hutangBank, 
                         onChanged: (value){
                            setState(() {
                               hutangBank = value.toString();
                            });
                         }),
                    ),
                    const SizedBox(height: 20,),
                  const Text("Apakah anda pernah berhutang di platform lain?", style: TextStyle( 
                       fontSize: 18,
                       color: Color(0xff355070),
                    ),),
      
                    const SizedBox(height: 10,),
      
                    ListTile(
                       title: const Text("Sering",style: TextStyle(color: Color(0xff355070))),
                       leading: Radio(
                         value: "1", 
                         groupValue: hutangPlatformLain, 
                         onChanged: (value){
                            setState(() {
                               hutangPlatformLain = value.toString();
                            });
                         }),
                    ),
      
                    ListTile(
                       title: const Text("Kadang - Kadang",style: TextStyle(color: Color(0xff355070))),
                       leading: Radio(
                         value: "2", 
                         groupValue: hutangPlatformLain, 
                         onChanged: (value){
                            setState(() {
                               hutangPlatformLain = value.toString();
                            });
                         }),
                    ),
                    ListTile(
                       title: const Text("Tidak Pernah",style: TextStyle(color: Color(0xff355070))),
                       leading: Radio(
                         value: "3", 
                         groupValue: hutangPlatformLain, 
                         onChanged: (value){
                            setState(() {
                               hutangPlatformLain = value.toString();
                            });
                         }),
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
        Navigator.push(context,Kredit5.route());
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
