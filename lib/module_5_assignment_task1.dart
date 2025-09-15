class Book {
  String title;
  String author;
  double price;

  // Constructor to initialize the properties
  Book(this.title, this.author, this.price);

  // Method to calculate and return the price after a discount
  double discountedPrice(double discountPercent) {
    double discountAmount = price * (discountPercent / 100);
    return price - discountAmount;
  }
}

void solveProblem1() {
  print("--- Problem 1: Book Class ---");
  // Create two book objects
  Book book1 = Book("The Alchemist", "Paulo Coelho", 550.0);
  Book book2 = Book("Sapiens", "Yuval Noah Harari", 800.0);

  // Print details for Book 1
  print("Book 1 Details: ${book1.title} by ${book1.author}, Price: ৳${book1.price}");
  double discountedPrice1 = book1.discountedPrice(10); // 10% discount
  print("Price after 10% discount: ৳${discountedPrice1.toStringAsFixed(2)}\n");

  // Print details for Book 2
  print("Book 2 Details: ${book2.title} by ${book2.author}, Price: ৳${book2.price}");
  double discountedPrice2 = book2.discountedPrice(15); // 15% discount
  print("Price after 15% discount: ৳${discountedPrice2.toStringAsFixed(2)}");
}