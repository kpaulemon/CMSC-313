// Kassy Paulemon
// 12/6/25
// M/W 8:30-9:45am
// Write the C-language program equivalent of the C++ program, Object Oriented Programming in C++,
// produced by geeksforgeeks
#include <stdio.h>
#include <string.h>

// Create a struct that represents the vehicle class
    struct vehicle {
        char vehicleType[50];
    };

// Start of program
int main() {
    
    // Function prototypes
    void accelerate(struct vehicle*);
    void brake(struct vehicle*);
    void startEngine();

    // Declare a struct variable
    struct vehicle myVehicle;

    // Set vehicle type to "Car"
    strncpy(myVehicle.vehicleType, "Car", 50); // Can change type (second argument) to "Jane's car" or "Jack's car"

    // Declare a pointer to a struct variable
    struct vehicle* vPtr = &myVehicle;

    // Call functions for the vehicle
    startEngine();
    accelerate(vPtr);
    brake(vPtr);

    return 0;
}

// Definition of function accelerate
// Prints the type of vehicle being accelerated and states that the gas pedal is pressed
void accelerate(struct vehicle* vPtr) 
{
    printf("%s: Pressing gas pedal...\n", vPtr->vehicleType);
}

// Definition of function break
// Prints the type of vehicle braking and states that brakes are applied
void brake(struct vehicle* vPtr)
{
    printf("%s: Applying brakes...\n", vPtr->vehicleType);
}

// Definition of function startEngine
// Prints that the engine has started
void startEngine() 
{
    printf("Engine started!\n");
}