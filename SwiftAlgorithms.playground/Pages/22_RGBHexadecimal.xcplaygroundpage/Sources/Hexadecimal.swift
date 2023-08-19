import Foundation

public func rgb(r: Int, g: Int, b: Int) -> String {
    return "\(convertToHexadecimal(number: r))\(convertToHexadecimal(number: g))\(convertToHexadecimal(number: b))"
}

private func convertToHexadecimal(number: Int) -> String {
    guard number > 0 else { return "00" }
    guard number < 255 else { return "FF" }
    var hexadecimal = ""
    var quotient: Int = 255
    var reminder: Int = 0
    var dividend: Int = number
    while quotient != 0 {
        quotient = dividend / 16
        reminder = dividend % 16
        dividend = quotient
        hexadecimal = hexadecimal + getHexadecimailValue(number: reminder)
    }
    return hexadecimal.count == 1 ? "0\(hexadecimal)" : String(hexadecimal.reversed())
}

private func getHexadecimailValue(number: Int) -> String {
    switch number {
    case 0:
        return "0"
    case 1:
        return "1"
    case 2:
        return "2"
    case 3:
        return "3"
    case 4:
        return "4"
    case 5:
        return "5"
    case 6:
        return "6"
    case 7:
        return "7"
    case 8:
        return "8"
    case 9:
        return "9"
    case 10:
        return "A"
    case 11:
        return "B"
    case 12:
        return "C"
    case 13:
        return "D"
    case 14:
        return "E"
    case 15:
        return "F"
    default:
        return ""
    }
}

public func rgbStringFormat(red: Int, green: Int, blue: Int) -> String {
  return String(format: "%02X%02X%02X", UInt8(clamping: red), UInt8(clamping: green), UInt8(clamping: blue))
}
