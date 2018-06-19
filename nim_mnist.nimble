# Package

version       = "0.1.0"
author        = "0h-n0"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"
bin           = @["nim_mnist"]

# Dependencies

requires "nim >= 0.18.1",
    "arraymancer >= 0.4.0"
