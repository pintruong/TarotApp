//
//  CardTarot.swift
//  TarotApp
//
//  Created by MacOS on 25/02/2022.
//

import Foundation

enum Other: CaseIterable {
    case c01, c02, c04, c05, c06, c07, c08, c09, c10, c11, c12, c13, c14, m00, m01, m02, m03, m04, m05, m06, m07, m08, m09, m10, m11, m12, m13, m14, m15, m16, m17, m18, m19, m20, m21,p01, p02, p04, p05, p06, p07, p08, p09, p10, p11, p12, p13, p14,s01, s02, s04, s05, s06, s07, s08, s09, s10, s11, s12, s13, s14,w01, w02, w04, w05, w06, w07, w08, w09, w10, w11, w12, w13, w14
}
struct Card: Identifiable, Equatable {
    var other: Other
    var selected: Bool = false
    var filename: String {
        get {
            if selected {
                return "\(other)"
            }
            else {
                return "Back"
            }
        }
    }
    var id = UUID()
    mutating func flip() {
        selected = true
    }
    
}

struct Deck {
    var cards = [Card]()
    
    init() {
        for other in Other.allCases {
            cards.append(Card(other: other))
        }
    }
}

var testData = [
    Card(other: .c01),Card(other: .c02),Card(other: .c04),Card(other: .c05),Card(other: .c06),Card(other: .c07),Card(other: .c08),Card(other: .c09),Card(other: .c10),Card(other: .c11),Card(other: .c12),Card(other: .c13),Card(other: .c14),
    Card(other: .m00),Card(other: .m01),Card(other: .m02),Card(other: .m04),Card(other: .m05),Card(other: .m06),Card(other: .m07),Card(other: .m08),Card(other: .m09),Card(other: .m10),Card(other: .m11),Card(other: .m12),Card(other: .m13),Card(other: .m14),Card(other: .m15),Card(other: .m16),Card(other: .m17),Card(other: .m18),Card(other: .m19),Card(other: .m20),Card(other: .m21),
    Card(other: .p01),Card(other: .p02),Card(other: .p04),Card(other: .p05),Card(other: .p06),Card(other: .p07),Card(other: .p08),Card(other: .p09),Card(other: .p10),Card(other: .p11),Card(other: .p12),Card(other: .p13),Card(other: .p14),
    Card(other: .s01),Card(other: .s02),Card(other: .s04),Card(other: .s05),Card(other: .s06),Card(other: .s07),Card(other: .s08),Card(other: .s09),Card(other: .s10),Card(other: .s11),Card(other: .s12),Card(other: .s13),Card(other: .s14),
    Card(other: .w01),Card(other: .w02),Card(other: .w04),Card(other: .w05),Card(other: .w06),Card(other: .w07),Card(other: .w08),Card(other: .w09),Card(other: .w10),Card(other: .w11),Card(other: .w12),Card(other: .w13),Card(other: .w14)
]

