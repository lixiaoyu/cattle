//
//  Html.swift
//  
//
//  Created by yu li on 2021/5/11.
//

import Foundation

struct Parser {
  let pos: String.Index
  let input: String

  init(input: String) {
    self.input = input
    self.pos = input.startIndex
  }
}

extension Parser {
  public func partHtml(source: String) -> Node {
    var parser = Parser(input: source)
    
    return Node(children: [], nodeType: .text("unknown"))
  }
}


extension Parser {

  // Read the current characterr without consuming it.
  func nextChar() -> Character {
    return input[pos]
  }

  // Does the current input start with the given string?
  func startWith(s: String) -> Bool {
    return input.hasPrefix(s)
  }

  // return true if all input is consumed.
  func eof() -> Bool {
    return pos >= input.endIndex
  }


}




