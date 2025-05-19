//: [Previous](@previous)
/*:
 ## Dependency Inversion Principle (DIP):
 The DIP states that high-level modules should not depend on low-level modules; both should depend on abstractions. This principle encourages decoupling and promotes the use of interfaces or protocols to define contracts between components.
 */
/*:
 problem
 */
class Car  {
	func wheelNumber(){
		print("wheelNumber")
	}
	func hornType(){
		print("hornType")
	}
	func registrationNumber(){
		print("registrationNumber")
	}
	func vehicalColor(){
		print("vehicalColor")
	}
}
class Vehicle {
	let carObj: Car?

	init(carObj: Car) {
		self.carObj = carObj
	}

	func getVehicleInfo(){
			//access all function
		carObj?.hornType()
		carObj?.registrationNumber()
		carObj?.vehicalColor()
		carObj?.wheelNumber()
	}
}
var carOBJ = Vehicle(carObj: Car())
carOBJ.getVehicleInfo()
/*:
 respecting Dependency Inversion Principle (DIP)
 */
protocol CarOne {
	func wheelNumber()
}
protocol BikeOne {
	func wheelNumber()
	func hornType()
}

class VehicleOne: CarOne, BikeOne  {
	func hornType() {
		print("hornType")
	}
	func wheelNumber(){
		print("wheelNumber")
	}
}


class Demo {
	let objOne: CarOne?
	let objTwo: BikeOne?

	init(vehicleOne1obj: CarOne, vehicleOne2obj: BikeOne) {
		self.objOne = vehicleOne1obj
		self.objTwo = vehicleOne2obj
	}

	func getInfoOne(){
			//access only function which we want
		objOne?.wheelNumber()
			//		obj?.fun2()
			//		obj?.fun3()
			//		obj?.fun4()
	}

	func getInfoTwo(){
		objTwo?.wheelNumber()
		objTwo?.hornType()
	}
}


var demoOBJ1 = Demo(vehicleOne1obj: VehicleOne(), vehicleOne2obj: VehicleOne())
var demoOBJ2 = demoOBJ1
demoOBJ1.getInfoOne()
demoOBJ2.getInfoTwo()
//: [Next](@next)
