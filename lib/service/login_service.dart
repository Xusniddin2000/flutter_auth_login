


class  AuthService{

  // Future<void>  login()  async{
  //   if(passwordController.text.isNotEmpty && usernameController.text.isNotEmpty){
  //     Map<String,String> headers={'Content-type':'application/json'};
  //     var body=json.encode({'username':usernameController.text,'password':passwordController.text});
  //     var    response=  await http.post(Uri.parse(AppConst.apiUrl),
  //         headers:headers,body: body);

  //     if(response.statusCode==200){
  //       print("ISHLADI >>>>>>>");

  //       Navigator.push(context as BuildContext,MaterialPageRoute(builder: (context)=>SecondPage()));
  //     } else {

  //       ScaffoldMessenger.of(context as BuildContext).showSnackBar(SnackBar(content: Text(" Invalid Credntials.")));

  //     }
  //   }else{
  //     ScaffoldMessenger.of(context as BuildContext).showSnackBar(SnackBar(content: Text(" Black Fin Not  Allowed")));
  //   }


  // }
}
