import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  const Result({required this.result,super.key});
final double result;
  get builder => null;
 String get resultPhrase {
    String resultText = '';
    if (result >= 30) {
      resultText = 'Obese';
    } else if (result > 25 && result < 30) {
      resultText = 'Overweight';
    } else if (result >= 18.5 && result <= 24.9) {
      resultText = 'Normal';
    } else {
      resultText = 'Thin';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
     // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),),
      height: MediaQuery.of(context).size.height/2.8,
      width:MediaQuery.of(context).size.width ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Your BMI Result',style: Theme.of(context).textTheme.headline2,)
            ],
          ),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: deprecated_member_use, unnecessary_string_interpolations
              Text('${result.toStringAsFixed(1)}',style: Theme.of(context).textTheme.headline1,)
              
            ],
          ),
           const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(resultPhrase,style: const TextStyle(color: Color.fromARGB(255, 49, 233, 36),fontSize: 26),)
              
            ],
          ),
           const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Normal BMI Range:18.5kg - 25kg',style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight:FontWeight.w600),)
              
            ],
          ),
          const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
             ElevatedButton(onPressed: ()=>Navigator.of(context).pop()
             ,
             style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll( Color.fromARGB(255, 245, 151, 166)
              ,),
              fixedSize: MaterialStatePropertyAll(Size.fromWidth(220))
             ), child: const Text("Restart",style: TextStyle(fontSize: 20),),
             
             
             )
              
            ],
          ),
         
        ],
      ),
    );

  }
}