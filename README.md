# Firmware tree for `Alioth/in`

## What is this?

A firmware tree to ship firmware with builds for the Poco F3 / Mi 11x / Redmi K40.

# Getting started

First of all, ensure you have cloned this into
`vendor/xiaomi/alioth-firmware`.

Manifest:

```xml
<?xml version="1.0" encoding="utf-8"?>
<manifest>
    <remote name="yourremote" revision="main" clone-depth="1" />
    <project name="vendor_xiaomi_alioth-firmware" path="vendor/xiaomi/alioth-firmware" remote="yourremote" />
</manifest>
```

Device tree dependencies file:

```
[
  {
    "remote": "yourremote",
    "repository": "vendor_xiaomi_alioth-firmware",
    "target_path": "vendor/xiaomi/alioth-firmware",
    "branch": "main",
    "clone_depth": "1"
  }
]
```

Manual cloning:

```bash
git clone <url of this repo> -b main vendor/xiaomi/alioth-firmware --depth=1 --no-tags --single-branch
```

> These are example entries, you need to replace the relevant stuff
> with your own case.

After that, ensure your tree's BoardConfig inherits this tree's BoardConfigVendor:

```makefile
include vendor/xiaomi/alioth-firmware/BoardConfigVendor.mk
```

> These kinds of includes are typically placed along with other
> inherits at the beginning of BoardConfig or at the end of
> BoardConfig, along with other includes if any.

# Additional information for geeks

## Firmware

**ROM**: Hyperos

**Version**: OS1.0.2.0.TKHMIXM
