// const readline = require('readline');

// constreader = readline.createInterface({
//     input: process.stdin,
//     output: process.stdout
// });



// //takes in two arguments a string and callback function (reader.question)
// function questions () {


//     let first;

//     readline.question('Do you like tea?', function(res) {
//         first = res;
//         console.log(`You replied ${res}`);

//     })


//     reader.close();
// }



function Cat() {

    this.name = 'Markov';
    this.age = 3;

}


function Dog() {

    this.name = 'Noodles';
    this.age = 4;


}

Dog.prototype.chase = function(cat) {

    console.log(`My name is ${this.name} and im chasing ${cat.name}! Woof!`)

    
};


const Markov = new Cat();

const Noodles = new Dog();