---
layout: post
title: How to Make a Linux Bootable USB on macOS
date: 2026-03-03 00:14 -0500
categories: [Linux]
tags: [linux,]     # TAG names should always be lowercase
image:
  path: /assets/img/linux.webp
  alt: Linux
---

# Make a Linux Bootable USB on macOS

Here's the simple way to flash a Linux ISO onto a USB drive using macOS
built-in tools. No extra software, just terminal.

⚠️ This will completely erase the USB drive. Double-check the disk
identifier before running anything destructive.

------------------------------------------------------------------------

## 1. Plug in the USB

Insert your USB stick.

------------------------------------------------------------------------

## 2. Find the Disk

List all connected drives:

``` bash
sudo diskutil list
```

Look for your USB in the output. It'll look something like:

    /dev/disk4

Make sure you identify the correct one.

------------------------------------------------------------------------

## 3. Erase and Format

``` bash
sudo diskutil eraseDisk FAT32 USB /dev/disk4
```

Replace `/dev/disk4` with your actual disk.

------------------------------------------------------------------------

## 4. Unmount the Disk

``` bash
sudo diskutil unmountDisk /dev/disk4
```

------------------------------------------------------------------------

## 5. Write the ISO

``` bash
sudo dd if=./linuxmint-21.3-xfce-64bit.iso of=/dev/disk4 bs=1m
```

This can take several minutes. There's no progress bar. Just wait until
it finishes.

------------------------------------------------------------------------

## 6. Eject

``` bash
sudo diskutil eject /dev/disk4
```

That's it. The USB should now be bootable.

------------------------------------------------------------------------

### Notes

-   Works reliably for ISO files 4GB or smaller when using FAT32.
-   For larger ISOs, consider using a tool like balenaEtcher instead.
