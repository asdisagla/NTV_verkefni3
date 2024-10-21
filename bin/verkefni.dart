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


void searchByModel(List<Car> cars, String model) {
    print('Searching for cars by model: $model');
    for (var car in cars) {
        if (car.model.toLowerCase() == model.toLowerCase()) {
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
    print('2. Search by car model');
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
            print('Enter the car model:');
            String? model = stdin.readLineSync();
            if (model != null) {
                searchByModel(cars, model);
            }
            break;
        default:
            print('Invalid choice.');
            break;
    }
}
