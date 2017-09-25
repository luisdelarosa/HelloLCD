import SwiftyGPIO
import HD44780LCD


let gpios = SwiftyGPIO.GPIOs(for:.RaspberryPi3)
var rs = gpios[.P16]!
var e = gpios[.P22]!
var d4 = gpios[.P23]!
var d5 = gpios[.P24]!
var d6 = gpios[.P25]!
var d7 = gpios[.P26]!

let width = 16
let height = 2
let lcd = HD44780LCD(rs:rs,e:e,d7:d7,d6:d6,d5:d5,d4:d4,width:width, height:height)
lcd.clearScreen()
lcd.cursorHome()
// TODO fix the x/y transpositioning
lcd.printString(x:0,y:0,what:"Hello World!",usCharSet:true)
lcd.printString(x:1,y:0,what:"love,@louielouie",usCharSet:true)
