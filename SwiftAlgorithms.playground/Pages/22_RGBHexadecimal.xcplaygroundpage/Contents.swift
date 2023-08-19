/*:
[<- Counting Sort](@previous)
# 22 - RGB To Hexadecimal
## Instrcutions:
 
 The rgb function is incomplete. Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned. Valid decimal values for RGB are 0 - 255. Any values that fall out of that range must be rounded to the closest valid value.

 Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.

 Examples (input --> output):

 255, 255, 255 --> "FFFFFF"\
 255, 255, 300 --> "FFFFFF"\
 0, 0, 0       --> "000000"\
 148, 0, 211   --> "9400D3"
 
 [-> Next](@next)
*/

print("RGB: 255, 255, 255\nHexadeximal: \(rgb(r: 255, g: 255, b: 255))\n")
print("RGB: 255, 255, 300\nHexadeximal: \(rgb(r: 255, g: 255, b: 300))\n")
print("RGB: 0, 0, 0\nHexadeximal: \(rgb(r: 0, g: 0, b: 0))\n")
print("RGB: 148, 0, 211\nHexadeximal: \(rgb(r: 148, g: 0, b: 211))\n")
print("⬇️⬇️⬇️String Format⬇️⬇️⬇️\n")
print("RGB: 255, 255, 255\nHexadeximal: \(rgbStringFormat(red: 255, green: 255, blue: 255))\n")
print("RGB: 255, 255, 300\nHexadeximal: \(rgbStringFormat(red: 255, green: 255, blue: 300))\n")
print("RGB: 0, 0, 0\nHexadeximal: \(rgbStringFormat(red: 0, green: 0, blue: 0))\n")
print("RGB: 148, 0, 211\nHexadeximal: \(rgbStringFormat(red: 148, green: 0, blue: 211))\n")
