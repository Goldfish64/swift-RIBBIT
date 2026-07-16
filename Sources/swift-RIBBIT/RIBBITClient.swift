//
//  RIBBITClient.swift
//
//  Copyright © 2026 John Davis. All rights reserved.
//

import Foundation

public class RIBBITClient {
  private var tips: [FrogTip] = []

  public func nextTip() async -> FrogTip? {
    if tips.isEmpty {
      do {
        let croak = try await fetchMoreTips()
        tips.append(contentsOf: croak.tips)
      } catch {
        return nil
      }
    }

    guard !tips.isEmpty else {
      return nil
    }

    return tips.removeFirst()
  }

  private func fetchMoreTips() async throws -> Croak {
    guard let url = URL(string: "https://frog.tips/api/1/tips") else {
      throw URLError(.badURL)
    }

    let (data, _) = try await URLSession.shared.data(from: url)
    return try JSONDecoder().decode(Croak.self, from: data)
  }
}
