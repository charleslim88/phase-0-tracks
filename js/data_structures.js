var warmColors = ["blue", "yellow", "silver", "green"];
 var coolHorses = ['Ed', 'American-Pharroh', 'Colonel', 'Flash'];
 var colorfulHorses = {};
 function addColor(color) {
   warmColors.push(color);
   console.log(warmColors);
 };
 
 function addHorse (horse) {
   coolHorses.push(horse);
   console.log(coolHorses);
 };
 
 addColor("blurple");
 addHorse("Trevor");
 
 for (var i = 0; i < coolHorses.length; i++) {
   colorfulHorses[coolHorses[i]] = warmColors[i];
 }
 console.log(colorfulHorses);
 
 function makeCar(make, model, color, size) {
   console.log("Assembling your new car!")
   this.make = make;
   this.model = model;
   this.color = color;
   this.size = size;
   this.vroom = function() {console.log("Vroom!"); };
   this.honk = function() {console.log("Beep! Beep!"); };
  this.bark = function() { console.log("Woof!"); };
 }
 
 // var myCar = new makeCar("Toyota", "Camry", "Black", "Coupe")
 // console.log(myCar.make)
 // myCar.vroom()
 // myCar.honk()
 // myCar.bark()
 
 var object = {
     "key1" : "hi",
     "key2" : "hello",
     "key3" : "hola"
 };
 
 for (var key in object) {
   // if (object.hasOwnProperty(key)) {
     console.log(key + " -> " + object[key]);
   // }
