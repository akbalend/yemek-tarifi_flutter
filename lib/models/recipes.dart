import 'package:flutter/material.dart';

class Recipe {
  final String image, title, description, size;
  final int id;
  final Color color;
  Recipe({
    required this.id,
    required this.size,
    required this.title,
    required this.description,
    required this.color,
    required this.image,
  });
}

List<Recipe> recipes = [
  Recipe(
      id: 1,
      title: "Tavuk Sote",
      size: "   3-4 kişilik       ",
      description: "1.Soğanı, kapya ve yeşil biberi ince uzun olarak jülyen doğrayın. Domatesin kabuğunu soyun, çekirdeklerini alın ve küp küp doğrayın. Sarımsaığı da dilimleyin.",
      image: "assets/images/tarif1.jpg",
      color: Color.fromARGB(255, 222, 123, 80)),
      Recipe(
      id: 2,
      title: "Patlıcan Kapama",
      size: "   3-4 kişilik       ",
      description: "Patlıcanları alacalı soyun. İnce ve uzun bir şekilde kesin. Dilerseniz tuzlu suda bekletin ve iyice kurulayın.",
      image: "assets/images/tarif2.jpg",
      color: Color.fromARGB(255, 185, 178, 45)),
      Recipe(
      id: 3,
      title: "Kavurmalı Tost",
      size: "   1-2 kişilik       ",
      description: "Kavurmayı ince ince dilimleyin. Kornişon turşuları uzunlamasına kesin. Tost ekmeklerinin  içerisine ince bir tabaka tereyağ sürün. Kavurmayı iki dilim tost ekmeğine eşit şekilde paylaştırın. Üzerine turşu dilimleri dizin.",
      image: "assets/images/tarif3.jpg",
      color: Color.fromARGB(255, 233, 180, 94)),
      Recipe(
      id: 4,
      title: "Sodalı Börek",
      size: "   3-4 kişilik       ",
      description: "Böreğin sosu için; yumurta, süt, yağ ve sodayı güzelce çırpın.Peynirleri ve ince kıyılmış maydanozu harmanlayın.Yufkanızı tezgaha bütünüyle serin. Fırça yardımıyla sostan her yerine eşit gelecek şekilde sürün.",
      image: "assets/images/tarif4.jpg",
      color: const Color(0xFF3D82AE)),
      Recipe(
      id: 5,
      title: "Yoğurt Çorbası",
      size: "3-4 kişilik          ",
      description: "Orta boy bir tencerenin içerisine suyu dökün. İçine pirinçleri ekleyin. Kısık ateşte pirinçler yumuşayana kadar pişirin.",
      image: "assets/images/tarif5.jpg",
      color: Color.fromARGB(255, 232, 211, 110)),
      Recipe(
      id: 6,
      title: "Sulu Patates",
      size: "3-4 kişilik          ",
      description: "Patatesleri güzelce yıkayıp kabuklarını soyduktan sonra iri küpler halinde doğrayıp biraz suda bekletin.Soğanı yemeklik doğrayın ve tencerede kızdırdığınız yağın üzerine ekleyip kavurun.",
      image: "assets/images/tarif6.jpg",
      color: Color.fromARGB(255, 155, 212, 248)),
      Recipe(
      id: 7,
      title: "Köfteli Karnabahar",
      size: "3-4 kişilik          ",
      description: "Kıymayı geniş bir kaba alın. Üzerine 1 çay kaşığı tuz, 1/2 çay kaşığı karabiber, toz kırmızı biber, kimyon, 1 yemek kaşığı su ve ekmek kırıntısını ekleyip güzelce yoğurun. Ceviz büyüklüğünde parçalar kopararak yuvarlayın ve köftelerinizi hazırlayın.",
      image: "assets/images/tarif7.jpg",
      color: Color.fromARGB(255, 199, 192, 192)),

];