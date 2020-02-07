
const printCallBack = function(array) {

    array.forEach( function(name) {
        console.log(name)
    }

    )
}



function titleize(names, printCallBack) {


    // function myTitlize(string) {

    //     return string.charAt(0).toUpperCase() + string.slice(1).toLowerCase();

    // }

    new_names = names.map( function(string) {
        return string.charAt(0).toUpperCase() + string.slice(1).toLowerCase()

    }
        


    );

    printCallBack(new_names)
}