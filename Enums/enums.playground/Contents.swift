import UIKit

// MARK: - Enum Syntax
enum NameOfEnum {
    // Definition goes here
}
//

// MARK: - Enum with Associated Values
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("sdfh8q298ej1d02j0msd01j20wiok")

switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
case let .qrCode(productCode):
    print("QR CODE: \(productCode)")
}
//

// MARK: - Enum with Cases
//enum JediMaster {
//    case yoda
//    case maceWindu
//    case quiGonJinn
//    case obiWanKenobi
//    case lukeSkywalker
//}
//

// MARK: - Enum with Cases & Raw Values
enum JediMaster: String {
    case yoda = "Yoda"
    case maceWindu = "Mace Windu"
    case quiGonJinn = "Qui-Gon Jinn"
    case obiWanKenobi = "Obi-Wan Kenobi"
    case lukeSkywalker = "Luke Skywalker"
}

print(JediMaster.lukeSkywalker.rawValue)
//

// MARK: - Practical Example
enum SwitchStatus {
    case on
    case off
}

func flipSwitch(status: SwitchStatus) -> SwitchStatus {
    if status == .off {
        return .on
    } else {
        return .off
    }
}

var status: SwitchStatus = .off

flipSwitch(status: status)

status = .on

flipSwitch(status: status)
//
