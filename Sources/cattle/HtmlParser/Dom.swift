//
//  Dom.swift
//  
//
//  Created by yu li on 2021/5/11.
//

import Foundation

typealias AttrMap = Dictionary<String, String>

struct Node {
  var children: [Node]
  var nodeType: NodeType
}

enum NodeType {
  case element(ElementData)
  case text(String)
}

struct ElementData {
  let tagName: String
  let attibutes: AttrMap
}

// MARK: - Constructor functions for convenience
func text(data: String) -> Node {
  Node(children: [], nodeType: .text(data))
}

func elem(name: String, attrs: AttrMap, children: [Node]) -> Node {
  Node(
    children: children,
       nodeType: .element(
        ElementData(tagName: name, attibutes: attrs)
       )
  )
}

// Element methods
extension ElementData {
  func id() -> String? {
    attibutes["id"]
  }

  func classes() -> [String] {
    attibutes["class"]?.split(separator: " ").compactMap { String($0) } ?? []
  }
}
