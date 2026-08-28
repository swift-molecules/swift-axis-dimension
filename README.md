# Axis Dimension

Axis-indexed aliases integrating
[`swift-axis`](https://github.com/swift-atoms/swift-axis) and
[`swift-dimension`](https://github.com/swift-atoms/swift-dimension).

The atoms own the underlying types. This molecule owns only their constrained
placement under `Axis`:

| Alias | Available dimensions | Underlying type |
| --- | --- | --- |
| `Axis<2>.Horizontal` | 2 | `Horizontal` |
| `Axis<2>.Vertical` | 2 | `Vertical` |
| `Axis<3>.Depth` | 3 | `Depth` |
| `Axis<4>.Temporal` | 4 | `Temporal` |

```swift
import Axis_Dimension

let horizontal = Axis<2>.Horizontal.rightward
let depth = Axis<3>.Depth.forward
let temporal = Axis<4>.Temporal.future
```

## Installation

```swift
dependencies: [
    .package(
        url: "https://github.com/swift-molecules/swift-axis-dimension.git",
        branch: "main"
    ),
]
```

```swift
.target(
    name: "App",
    dependencies: [
        .product(name: "Axis Dimension", package: "swift-axis-dimension"),
    ]
)
```

The package is pre-1.0 and follows the live `main` branches of its atom
dependencies. It requires Swift 6.4 and the Apple 27 platform generation (or a
matching Linux or Windows toolchain).
