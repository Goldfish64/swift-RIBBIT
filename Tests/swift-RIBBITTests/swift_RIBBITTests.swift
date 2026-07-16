//
//  swift_RIBBITTests.swift
//
//  Copyright © 2026 John Davis. All rights reserved.
//

import Testing
@testable import swift_RIBBIT

@Test func fetchTip() async {
  let client = RIBBITClient()

  let tip1 = await client.nextTip()
  #expect(tip1 != nil)
  #expect(tip1!.tip.contains("FROG"))

  let tip2 = await client.nextTip()
  #expect(tip2 != nil)
  #expect(tip2!.tip.contains("FROG"))
}
