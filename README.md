# switch_segfault

All code is in main.dart.

Run this project in release on an arm64 device. App will segfault.

    flutter run --release

Issue appears to have started in Flutter 1.22.0 / Dart 2.10.1. Issue does not occur when tested with Flutter 1.20.04 / Dart 2.9.2.


## Segfaults

### Pixel 3

    *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***
    Build fingerprint: 'google/blueline/blueline:11/RP1A.201005.004/6782484:user/release-keys'
    Revision: 'MP1.0'
    ABI: 'arm64'
    Timestamp: 2020-12-28 15:03:57-0700
    pid: 24535, tid: 24564, name: 1.ui  >>> com.example.switch_segfault <<<
    uid: 10636
    signal 11 (SIGSEGV), code 1 (SEGV_MAPERR), fault addr 0x2
    Cause: null pointer dereference
        x0  0000000000000001  x1  0000000000000034  x2  0000000000000000  x3  0000000000000000
        x4  0000000000000010  x5  8080808080808080  x6  fefefefefefefeff  x7  7f7f7f7f7f7f7f7f
        x8  0000000000000000  x9  0000007190621b70  x10 0000000000000400  x11 0000000000000000
        x12 0000006fe4bb5cd0  x13 0000000000000002  x14 0000182286a29c7a  x15 0000006fe4bb77a8
        x16 0000006fe4adf000  x17 00000072e0e57ad4  x18 0000006fe400e000  x19 000000719061cc20
        x20 0000000000000000  x21 000000725060b020  x22 0000006fd7e00041  x23 0000007180614db0
        x24 0000006fd7e07ee1  x25 0000006fe4ade000  x26 000000719061cc20  x27 0000006fd668a8c0
        x28 0000000000000004  x29 0000006fe4bb77a8
        lr  0000006fe1855d84  sp  0000006fe4ade000  pc  0000006fe18136e4  pst 0000000020000000
    backtrace:
          #00 pc 00000000000206e4  /data/app/~~uEWGQ46I0o6695usGt5xFw==/com.example.switch_segfault-nLTC1ITFA68USrUhj7dTmg==/lib/arm64/libapp.so (offset 0xf000) (_kDartIsolateSnapshotInstructions+71396) (BuildId: 95227cfd47606f7d9553fa125279094e)


### Samsung Tab A SM-T290

    *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***
    Build fingerprint: 'samsung/gtowifixx/gtowifi:10/QP1A.190711.020/T290XXU3BTI2:user/release-keys'
    Revision: '4'
    ABI: 'arm64'
    Timestamp: 2020-12-28 15:19:16-0700
    pid: 27760, tid: 27819, name: 1.ui  >>> com.example.switch_segfault <<<
    uid: 10209
    signal 11 (SIGSEGV), code 1 (SEGV_MAPERR), fault addr 0x2
    Cause: null pointer dereference
        x0  0000000000000001  x1  0000000000000034  x2  0000000000000000  x3  0000000000000003
        x4  0000000000000000  x5  72657474756c66ff  x6  8080808080808080  x7  8080808080808080
        x8  0000000000000000  x9  0000007a49391230  x10 0000000000000400  x11 0000000000000000
        x12 0101010101010101  x13 0000000000000002  x14 0000000000000001  x15 0000007a55a4f838
        x16 0000007a55978000  x17 0000007b45acd2c4  x18 0000007a52702000  x19 0000007a4936fc00
        x20 0000000000000000  x21 0000007a493b2a40  x22 0000007a4e700041  x23 0000007aaaec2500
        x24 0000007a4e707ee1  x25 0000007a55977000  x26 0000007a4936fc00  x27 0000007a4908a8c0
        x28 0000000000000004  x29 0000007a55a4f838
        sp  0000007a55977000  lr  0000007a4ed37d84  pc  0000007a4ecf56e4
    
    backtrace:
          #00 pc 00000000000206e4  /data/app/com.example.switch_segfault-ct5ZXz18Ah7VGwO3eSxjIQ==/lib/arm64/libapp.so (offset 0xf000) (_kDartIsolateSnapshotInstructions+71396) (BuildId: 95227cfd47606f7d9553fa123f9abbfe)
