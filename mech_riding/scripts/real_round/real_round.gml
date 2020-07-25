var number = argument0
var integer = floor(number)
var decimal = number-integer

var buffer = 0;

if (decimal < .5) {buffer = 0}
else {buffer = 1;}


return integer + buffer