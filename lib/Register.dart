import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Register extends StatefulWidget{

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formfield =GlobalKey<FormState>();

  bool passToggle = true;

  void _submitForm() {
    if (_formfield.currentState?.validate() ?? false) {
      print('Form is valid!');

    }
  }

  bool _isPasswordHidden = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordHidden = !_isPasswordHidden;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        padding: const EdgeInsets.fromLTRB(10,0,10,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10,20,0,0),
              child: Text("Register",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.sp),),
            ),
                 SizedBox(height: 20,),

                 Container(
                   padding: const EdgeInsets.fromLTRB(10,20,0,0),
                   width: ScreenUtil().setWidth(360),
                   height:ScreenUtil().setHeight(100),
                   child: ListView(
                     scrollDirection: Axis.horizontal,
                     children: [
                       Container(
                         height: 70,width: 80,
                         decoration: BoxDecoration(
                           image:DecorationImage(
                             fit: BoxFit.fill,
                               image: AssetImage("images/boy.jpg"),

                           ),
                             border: Border.all(
                                 color: Colors.grey,
                                 width: 1.0,
                                 style: BorderStyle.solid),
                           borderRadius: BorderRadius.circular(15)
                         ),
                       ),

                       SizedBox(
                         width: 10,
                       ),

                       Container(
                         height: 70,width: 80,
                         decoration: BoxDecoration(
                             image:DecorationImage(
                                 fit: BoxFit.fill,
                               image: AssetImage("images/girl.jpg"),

                             ),
                             border: Border.all(
                                 color: Colors.grey,
                                 width: 1.0,
                                 style: BorderStyle.solid),
                             borderRadius: BorderRadius.circular(15)
                         ),
                       ),

                       SizedBox(
                         width: 10,
                       ),


                       Container(
                         height: 70,width: 80,
                         decoration: BoxDecoration(
                             image:DecorationImage(
                               fit: BoxFit.fill,
                               image: AssetImage("images/boy1.jpg"),

                             ),
                             border: Border.all(
                                 color: Colors.grey,
                                 width: 1.0,
                                 style: BorderStyle.solid),
                             borderRadius: BorderRadius.circular(15)
                         ),
                       ),

                       SizedBox(
                         width: 10,
                       ),


                       Container(
                         height: 70,width: 80,
                         decoration: BoxDecoration(
                             image:DecorationImage(
                               fit: BoxFit.fill,
                               image: AssetImage("images/girl1.jpg"),

                             ),
                             border: Border.all(
                                 color: Colors.grey,
                                 width: 1.0,
                                 style: BorderStyle.solid),
                             borderRadius: BorderRadius.circular(15)
                         ),
                       ),

                     ],
                   ),
                 ),
    SizedBox(height: 20,),

    Form(
    key: _formfield,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            decoration: const InputDecoration(

              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius .circular(9.0),)
              ),

              labelText: 'Name',
              labelStyle: TextStyle(color: Colors.black)
            ),

            validator: (value) {
              if (value!.isEmpty) {
                return "value is empty..Enter a Name";
              } else if (value.length < 5) {
                 return 'Enter atleast 5 character';
              }
            },

          ),
        ),
        SizedBox(height: 5,),
        Container(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(

                    borderRadius: BorderRadius.all(Radius .circular(9.0))
                ),
                labelText: 'Phone Number',
                labelStyle: TextStyle(color: Colors.black)
            ),

            validator: (value) {
              if (value!.isEmpty) {
                return "value is empty..Enter valid Mobile Number";
              } else if (value.length > 10 || value.length <10) {
                return 'Enter atleast 10 Number';
              }
            },

          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(

                    borderRadius: BorderRadius.all(Radius .circular(9.0))
                ),
                labelText: 'User Name',
                labelStyle: TextStyle(color: Colors.black)

            ),

            validator: (value) {
              if (value!.isEmpty) {
                return "value is empty..Enter valid user name";
              }
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            obscureText: _isPasswordHidden,
            obscuringCharacter: "*",
            decoration:  InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius .circular(9.0))
                ),
              suffixIcon: IconButton(
                icon: Icon(
                  _isPasswordHidden ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: _togglePasswordVisibility,
              ),
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.black),


            ),


            validator: (value) {
              if (value!.isEmpty) {
                return "value is empty..Enter valid Password";
              }
              if(value.length<6){
                return "Password must be at least 6 characters";
              }
            },

          ),
        ),


    ],)
    ),

            SizedBox(height: 20,),

            Container(
                padding: const EdgeInsets.fromLTRB(10,0,0,0),
                child: Text("OTP VERIFICATION",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding:  const EdgeInsets.fromLTRB(10,0,0,0),
                  child: OtpTextField(
                    numberOfFields: 4,
                    borderColor: Color(0xFF512DA8),
                    borderRadius: BorderRadius.circular(10),
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },

                    //runs when every textfield is filled
                    onSubmit: (String verificationCode){
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text("Verification Code"),
                              content: Text('Code entered is $verificationCode'),
                            );
                          }
                      );
                    },
                    // end onSubmit
                  ),
                ),
                SizedBox(width: 50,),
                Container(
                  width: ScreenUtil().setWidth(50),
                  height:ScreenUtil().setHeight(50),
                  child: IconButton(onPressed: () {  },
                    icon: Icon(Icons.refresh),
                    iconSize: 40,

                  ),
                ),

              ],
            ),

            SizedBox(height: 100,),



            Container(
              child:
              ConstrainedBox(constraints: BoxConstraints.tightFor(width: ScreenUtil().screenWidth,height:70),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                    child: const Text('Register Now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                    onPressed: () {}
                ),



              ),
            )


          ],




        ),
      ),);
  }
}