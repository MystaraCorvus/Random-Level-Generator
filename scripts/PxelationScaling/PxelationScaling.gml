var time = argument0;

//var ret = 0.00123459 * exp(0.0337853 * time) + 0.99;
//var ret = 0.0307589 * exp(0.0142138 * time) + 0.99;
var ret = 8.00003 * exp(0.00505918 * time) - 8;
return ret;

//http://m.wolframalpha.com/input/?i=exponential+fit+%7B0%2C+1%7D%2C%7B86%2C+10%7D%2C%7B150%2C+786432%7D
//http://m.wolframalpha.com/input/?i=exponential+fit+%7B0%2C+1%7D%2C%7B140%2C+10%7D%2C%7B300%2C+20%7D%2C+%7B450%2C+100%7D%2C+%7B600%2C+786432%7D