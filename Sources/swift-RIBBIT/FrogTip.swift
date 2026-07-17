//
//  FrogTip.swift
//
//  Copyright © 2026 John Davis. All rights reserved.
//

public struct FrogTip: Codable {
  public let tip: String
  public let number: Int

  public init(tip: String, number: Int) {
    self.tip = tip
    self.number = number
  }
}
