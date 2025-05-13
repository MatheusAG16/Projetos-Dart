void main() {
  //For
  for (int i = 0; i <= 20; i += 2) {
    if (i == 5) {
      print("Número secreto");
    } else {
      print(i);
    }
  }
  
  print("-" * 20);

  //While
  int j = 0;
  while (j <= 20) {
    print(j);
    j++;
  }
  
  print("-" * 20);
  
  //Do While
  int k = 0;
  do {
    print(k);
    k += 3;
  } while(k <= 20);
}
