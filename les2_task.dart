import 'dart:io';  

void main(){
  String validUserName = "zahidab";
  String validPassword = "1234";
  String productName = "Koynek";
  int productNumber = 2;
  num productPrice = 67;
  num totalPrice = productNumber*productPrice;
  num currentBalance = 500;
  
  print("Xos gelmisiniz! Daxil olmaq ucun istifadeci adini daxil edin: ");
  String? userName = stdin.readLineSync();

  if(userName==validUserName){
    print("Sifrenizi daxil edin: ");
      String? password = stdin.readLineSync();

      if(password==validPassword){
        print("===========================\nXos gelmisiniz! Sebetiniz:\nMehsul: $productName\nEded: $productNumber\nBir ededinin qiymeti: $productPrice\nUmumi qiymet: $totalPrice");
        print("===========================\nHansi odenis usulundan istifade etmek isteyirsiniz?\n1. Kartla odenis\n2. Catdirilma(nagd)\n3. Unvanda odenis");
        String? choice = stdin.readLineSync();

        if(choice == '1'){
          print("Hansi bank karti ile odenis edeceksiniz?\n1. KapitalBank\n2. Unibank\n3. XalqBank");
          String? bankAccount = stdin.readLineSync();
          print("Odenis formasi secin:\n1. Birdefelik\n2. Kredit");
          String? choice1 = stdin.readLineSync();

          if(choice1 == "1"){
            currentBalance -= totalPrice;
            print("Odenis ugurludur! Cari balance: $currentBalance AZN");
          }

          else if(choice1=="2"){
            print("Nece ayliq taksitle odenis edeceksiniz?\n1. 3 ayliq\n2. 6 ayliq\n3. 12 ayliq");
            String? choice2=stdin.readLineSync();

            switch (choice2) {
              case "1":
                currentBalance -= totalPrice/3;
                print("===========================\nOdenis ugurludur!\nAyliq odenis: ${totalPrice/3} AZN\nCari balans: $currentBalance AZN");
                break;
              case "2":
                currentBalance -= totalPrice*1.1/6;
                print("===========================\nOdenis ugurludur!\nAyliq odenis: ${(totalPrice)*1.1/6} AZN\nCari balans: $currentBalance AZN");
                break;
              default:
              currentBalance -= totalPrice*1.4/12;
                print("===========================\nOdenis ugurludur!\nAyliq odenis: ${(totalPrice)*1.4/12} AZN\nCari balans: $currentBalance AZN");
            }
          }
        }

        else if(choice =='2'){
          print("Unvani daxil edin:");
          String? address=stdin.readLineSync();
          print("3 gun erzinde mehsul unvaniniza catdirilacaq!");
        }

        else{
          print("Gence Prospekti 81 unvanina yaxinlasib mehsulunuzu elde ede bilersiniz!");
        }
      }
  }





  
}

