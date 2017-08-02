# Package

version       = "0.1.0"
author        = "Erwan Ameil"
description   = "Wrapper for the libfswatch library: monitor files and directories for events"
license       = "MIT"
skipDirs = @["headers", "headers_c2nimready"]
skipFiles = @["Makefile"]

# Dependencies

requires "nim >= 0.17.0"

