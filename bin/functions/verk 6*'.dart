import 'dart:io';


List<String> groceryList = [];


void addItemToList(String item) {
  groceryList.add(item);
  print('Added "$item" to the grocery list.');
}


void removeItemFromList(String item) {
  if (groceryList.contains(item)) {
    groceryList.remove(item);
    print('Removed "$item" from the grocery list.');
  } else {
    print('"$item" is not in the list.');
  }
}


void viewList() {
  if (groceryList.isEmpty) {
    print("Your grocery list is empty.");
  } else {
    print("Your grocery list contains:");
    for (var item in groceryList) {
      print("- $item");
    }
  }
}


void menu() {
  while (true) {
    print("\nWhat would you like to do?");
    print("1. Add item to the grocery list");
    print("2. View grocery list");
    print("3. Remove item from the grocery list");
    print("4. Exit");
    stdout.write("Enter your choice (1-4): ");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write("Enter the item to add: ");
        String? newItem = stdin.readLineSync();
        if (newItem != null && newItem.isNotEmpty) {
          addItemToList(newItem);
        } else {
          print("Invalid item name.");
        }
        break;

      case '2':
        viewList();
        break;

      case '3':
        stdout.write("Enter the item to remove: ");
        String? removeItem = stdin.readLineSync();
        if (removeItem != null && removeItem.isNotEmpty) {
          removeItemFromList(removeItem);
        } else {
          print("Invalid item name.");
        }
        break;

      case '4':
        print("Goodbye!");
        return;

      default:
        print("Invalid choice. Please enter a number between 1 and 4.");
    }
  }
}

void main() {
  print("Welcome to your Grocery List App!");
  menu();
}
