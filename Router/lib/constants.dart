List FOOD_DATA = [
  {"name": "PUU AAD", "brand": "NONGNAM", "price": 10, "image": "1.png"},
  {"name": "KUNG MANG KORN", "brand": "NONGNAM", "price": 50, "image": "2.jpg"},
  {"name": "SAA RAAI", "brand": "NONGNAM", "price": 20, "image": "3.png"},
  {
    "name": "SALMON NOT BURN~~~",
    "brand": "NONGNAM",
    "price": 30,
    "image": "4.png"
  },
  {
    "name": "MAENG KRA PRUNE",
    "brand": "NONGNAM",
    "price": 20,
    "image": "5.png"
  },
  {
    "name": "FISH SLIDE GRILL CEE EEL",
    "brand": "NONGNAM",
    "price": 50,
    "image": "6.png"
  },
  {"name": "BANGKOK ROLL", "brand": "NONGNAM", "price": 200, "image": "7.jpg"},
  {"name": "SWEET BALLS", "brand": "NONGNAM", "price": 10000, "image": "8.jpg"},
  {
    "name": "BANGKOK SALMON GONE",
    "brand": "NONGNAM",
    "price": 200,
    "image": "9.jpg"
  },
  {"name": "KUNG BALLS", "brand": "NONGNAM", "price": 30, "image": "10.jpg"},
  {
    "name": "SALMON BINGSUU",
    "brand": "NONGNAM",
    "price": 150000,
    "image": "11.jpg"
  },
];
double allPrice = 0.0;
List cart = [
  {
    "name": "PUU AAD",
    "image": "1.png",
    "price": 10,
    "brand": "NONGNAM",
    "quanlity": 5
  }
];

void calulateallprice() {
  allPrice = 0;
  cart.forEach((element) {
    allPrice += element['price'] * element['quanlity'];
  });
}
