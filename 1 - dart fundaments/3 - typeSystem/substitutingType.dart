//verify type-hierarchy.png

//Cat c = Cat(); OK
//Animal c = Cat(); OK
//MaineCoon c = Cat(); Error
//Cat c = MaineCoon(); OK

/*
List<MaineCoon> myMaineCoons = ...
List<Cat> myCats = myMaineCoons;
OK 
*/ 

/*
List<Animal> myAnimals = ...
List<Cat> myCats = myAnimals;
Error
*/

/*
List<Animal> myAnimals = ...
List<Cat> myCats = myAnimals as List<Cat>;
OK
*/