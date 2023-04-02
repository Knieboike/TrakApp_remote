//
//  Tip.swift
//  TrakApp
//
//  Created by Nils Boike on 02.04.23.
//

import Foundation

struct Tip: Decodable {
    let text: String
    // ? Might or might not be there
    let children: [Tip]?
}
