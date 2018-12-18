# hextable

> Bash script to render a simple hex table

## Install

```bash
wget https://raw.githubusercontent.com/miguelmota/hextable/master/hextable.sh
chmod +x hextable.sh
sudo mv hextable.sh /usr/local/bin/hextable
```

## Usage

Default render of 100 decimal to hex conversions starting at 0

```bash
$ hextable

0  0x0  10 0xA  20 0x14 30 0x1E 40 0x28 50 0x32 60 0x3C 70 0x46 80 0x50 90 0x5A
1  0x1  11 0xB  21 0x15 31 0x1F 41 0x29 51 0x33 61 0x3D 71 0x47 81 0x51 91 0x5B
2  0x2  12 0xC  22 0x16 32 0x20 42 0x2A 52 0x34 62 0x3E 72 0x48 82 0x52 92 0x5C
3  0x3  13 0xD  23 0x17 33 0x21 43 0x2B 53 0x35 63 0x3F 73 0x49 83 0x53 93 0x5D
4  0x4  14 0xE  24 0x18 34 0x22 44 0x2C 54 0x36 64 0x40 74 0x4A 84 0x54 94 0x5E
5  0x5  15 0xF  25 0x19 35 0x23 45 0x2D 55 0x37 65 0x41 75 0x4B 85 0x55 95 0x5F
6  0x6  16 0x10 26 0x1A 36 0x24 46 0x2E 56 0x38 66 0x42 76 0x4C 86 0x56 96 0x60
7  0x7  17 0x11 27 0x1B 37 0x25 47 0x2F 57 0x39 67 0x43 77 0x4D 87 0x57 97 0x61
8  0x8  18 0x12 28 0x1C 38 0x26 48 0x30 58 0x3A 68 0x44 78 0x4E 88 0x58 98 0x62
9  0x9  19 0x13 29 0x1D 39 0x27 49 0x31 59 0x3B 69 0x45 79 0x4F 89 0x59 99 0x63
```

Specify a starting offset by passing `+n`

```bash
$ hextable +500

500 0x1F4 510 0x1FE 520 0x208 530 0x212 540 0x21C 550 0x226 560 0x230 570 0x23A 580 0x244 590 0x24E
501 0x1F5 511 0x1FF 521 0x209 531 0x213 541 0x21D 551 0x227 561 0x231 571 0x23B 581 0x245 591 0x24F
502 0x1F6 512 0x200 522 0x20A 532 0x214 542 0x21E 552 0x228 562 0x232 572 0x23C 582 0x246 592 0x250
503 0x1F7 513 0x201 523 0x20B 533 0x215 543 0x21F 553 0x229 563 0x233 573 0x23D 583 0x247 593 0x251
504 0x1F8 514 0x202 524 0x20C 534 0x216 544 0x220 554 0x22A 564 0x234 574 0x23E 584 0x248 594 0x252
505 0x1F9 515 0x203 525 0x20D 535 0x217 545 0x221 555 0x22B 565 0x235 575 0x23F 585 0x249 595 0x253
506 0x1FA 516 0x204 526 0x20E 536 0x218 546 0x222 556 0x22C 566 0x236 576 0x240 586 0x24A 596 0x254
507 0x1FB 517 0x205 527 0x20F 537 0x219 547 0x223 557 0x22D 567 0x237 577 0x241 587 0x24B 597 0x255
508 0x1FC 518 0x206 528 0x210 538 0x21A 548 0x224 558 0x22E 568 0x238 578 0x242 588 0x24C 598 0x256
509 0x1FD 519 0x207 529 0x211 539 0x21B 549 0x225 559 0x22F 569 0x239 579 0x243 589 0x24D 599 0x257
```

Convert a single decimal by passing `n`

```bash
$ hextable 45

45 0x2D
```

Convert multiple values by passing space seperated decimals

```bash
$ hextable 45 28 762

45 0x2D
28 0x1C
762 0x2FA
```

# License

[MIT](LICENSE)
