//
//  utilities.swift
//  Hackathon
//
//  Created by Claire Ongley on 21/6/22.
//

import Foundation

let APIKEY = "defa8d5bd9c74219b8be11ff82bb4164"

extension String {
    var htmlToAttributedString: NSAttributedString? {
        guard let data = data(using: .utf8) else { return nil }
        do {
            return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding:String.Encoding.utf8.rawValue], documentAttributes: nil)
        } catch {
            return nil
        }
    }
    var htmlToString: String {
        return htmlToAttributedString?.string ?? ""
    }
}
