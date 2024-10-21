import 'dart:io';


class CarType {
    String fuelType;
    String bodyType;

    CarType(this.fuelType, this.bodyType);

    @override
    String toString() {
        return '$bodyType running on $fuelType';
    }
}


class Car {
    String name;
    String model;
    int year;
    String color;
    CarType type;

    Car(this.name, this.model, this.year, this.color, this.type);

    @override
    String toString() {
        return '$name $model ($year) - $color, Type: $type';
    }
}


void searchByName(List<Car> cars, String name) {
    print('Searching for cars by name: $name');
    for (var car in cars) {
        if (car.name.toLowerCase() == name.toLowerCase()) {
            print(car);
        }
    }
}


void searchByFuelType(List<Car> cars, String fuelType) {
    print('Searching for cars by fuel type: $fuelType');
    for (var car in cars) {
        if (car.type.fuelType.toLowerCase() == fuelType.toLowerCase()) {
            print(car);
        }
    }
}


void searchByBodyType(List<Car> cars, String bodyType) {
    print('Searching for cars by body type: $bodyType');
    for (var car in cars) {
        if (car.type.bodyType.toLowerCase() == bodyType.toLowerCase()) {
            print(car);
        }
    }
}


void main() {

    CarType jeepElectric = CarType('Electric', 'SUV');
    CarType jeepDiesel = CarType('Diesel', 'SUV');
    CarType sedanElectric = CarType('Electric', 'Sedan');
    CarType sedanDiesel = CarType('Diesel', 'Sedan');


    List<Car> cars = [
        Car('Land Rover', 'Defender', 2007, 'Blue', jeepDiesel),
        Car('Land Rover', 'Discovery', 2015, 'Green', jeepElectric),
        Car('Polestar', '2', 2020, 'White', sedanElectric),
        Car('Polestar', '3', 2022, 'Black', sedanElectric),
        Car('Subaru', 'Forester', 2018, 'Red', jeepDiesel),
        Car('Mercedes', 'E-Class', 2019, 'Silver', sedanDiesel),
    ];


    print('Welcome to the Car Dealership Search System!');
    print('Choose an option to search:');
    print('1. Search by car name');
    print('2. Search by car fuel type');
    print('3. Search by car body type (SUV, Sedan)');
    print('Enter the number of your choice:');

    String? choice = stdin.readLineSync();

    switch (choice) {
        case '1':
            print('Enter the car name:');
            String? name = stdin.readLineSync();
            if (name != null) {
                searchByName(cars, name);
            }
            break;
        case '2':
            print('Enter the fuel type (Electric, Diesel):');
            String? fuelType = stdin.readLineSync();
            if (fuelType != null) {
                searchByFuelType(cars, fuelType);
            }
            break;
        case '3':
            print('Enter the body type (SUV, Sedan):');
            String? bodyType = stdin.readLineSync();
            if (bodyType != null) {
                searchByBodyType(cars, bodyType);
            }
            break;
        default:
            print('Invalid choice.');
            break;
    }
}
