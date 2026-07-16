# swift-RIBBIT
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
