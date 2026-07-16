# swift-RIBBIT
[![Build Status](https://github.com/Goldfish64/swift-RIBBIT/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/Goldfish64/swift-RIBBIT/actions)

Swiftly obtain tips to operate your FROG.

## Example
```swift

import swift_RIBBIT

let client = RIBBITClient()
let newTip = await client.nextTip()

if let frogTip = newTip {
  print(frogTip.tip)
}
```
