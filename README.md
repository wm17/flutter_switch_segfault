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


### Samsung Tab A SM-T350

    *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***
    Build fingerprint: 'samsung/gt58wifixx/gt58wifi:7.1.1/NMF26X/T350XXU1CQJ5:user/release-keys'
    Revision: '4'
    ABI: 'arm'
    pid: 5410, tid: 5435, name: 1.ui  >>> com.example.switch_segfault <<<
    signal 11 (SIGSEGV), code 1 (SEGV_MAPERR), fault addr 0x2
        r0 00000001  r1 8a488021  r2 00000002  r3 00000000
        r4 8a489a21  r5 8a16ddf9  r6 8a48c2a9  r7 88f1bc7c
        r8 00000002  r9 8a911765  sl 8a20b200  fp a63b5590
        ip a62c8000  sp a63b5590  lr 9ec67590  pc 9ec140bc  cpsr 200e0010
    
    backtrace:
        #00 pc 000290bc  /data/app/com.example.switch_segfault-1/lib/arm/libapp.so (offset 0xc000) (_kDartIsolateSnapshotInstructions+118972)
        #01 pc 0007c58c  /data/app/com.example.switch_segfault-1/lib/arm/libapp.so (offset 0xc000) (_kDartIsolateSnapshotInstructions+460172)


### iPad A1474 (iOS 12.4.1)

    ReportCrash	Exception Type:  EXC_BAD_ACCESS (SIGSEGV)
    Exception Subtype: KERN_INVALID_ADDRESS at 0x0000000000000002
    VM Region Info: 0x2 is not in any region.  Bytes before following region: 4302815230
          REGION TYPE                      START - END             [ VSIZE] PRT/MAX SHRMOD  REGION DETAIL
          UNUSED SPACE AT START
    --->  
          __TEXT                 000000010077c000-0000000100784000 [   32K] r-x/r-x SM=COW  ...er.app/Runner
    
    Termination Signal: Segmentation fault: 11
    Termination Reason: Namespace SIGNAL, Code 0xb
    Terminating Process: exc handler [240]
    Triggered by Thread:  7
    
    ReportCrash	Thread 0 name:  Dispatch queue: com.apple.main-thread
    Thread 0:
    0   libsystem_malloc.dylib        	0x000000022a40bf5c 0x22a3f0000 + 114524
    1   libsystem_malloc.dylib        	0x000000022a40a5f0 0x22a3f0000 + 108016
    2   libsystem_malloc.dylib        	0x000000022a40a5f0 0x22a3f0000 + 108016
    3   libsystem_malloc.dylib        	0x000000022a3f6bf4 0x22a3f0000 + 27636
    4   libsystem_malloc.dylib        	0x000000022a3ffca0 0x22a3f0000 + 64672
    5   libsystem_malloc.dylib        	0x000000022a400520 0x22a3f0000 + 66848
    6   libobjc.A.dylib               	0x0000000229a05500 0x2299f1000 + 83200
    7   libobjc.A.dylib               	0x0000000229a1066c 0x2299f1000 + 128620
    8   UIKitCore                     	0x0000000256e62338 0x2561c8000 + 13214520
    9   UIKitCore                     	0x0000000256e55c84 0x2561c8000 + 13163652
    10  UIKitCore                     	0x0000000256f131dc 0x2561c8000 + 13939164
    11  UIKitCore                     	0x0000000256f133b4 0x2561c8000 + 13939636
    12  UIKitCore                     	0x0000000256<…>
    241	default	16:15:37.667840-0700	ReportCrash	Thread 1:
    0   libsystem_pthread.dylib       	0x000000022a43fcd0 0x22a431000 + 60624
    241	default	16:15:37.669023-0700	ReportCrash	Thread 2:
    0   libsystem_pthread.dylib       	0x000000022a43fcd0 0x22a431000 + 60624
    241	default	16:15:37.670582-0700	ReportCrash	Thread 3:
    0   libsystem_pthread.dylib       	0x000000022a43fcd0 0x22a431000 + 60624
    241	default	16:15:37.672069-0700	ReportCrash	Thread 4:
    0   libsystem_pthread.dylib       	0x000000022a43fcd0 0x22a431000 + 60624
    
    ReportCrash	Thread 5 name:  com.apple.uikit.eventfetch-thread
    Thread 5:
    0   libsystem_kernel.dylib        	0x000000022a3af0f4 0x22a397000 + 98548
    1   libsystem_kernel.dylib        	0x000000022a3ae5a0 0x22a397000 + 95648
    2   CoreFoundation                	0x000000022a7af120 0x22a705000 + 696608
    3   CoreFoundation                	0x000000022a7aa030 0x22a705000 + 675888
    4   CoreFoundation                	0x000000022a7a97c0 0x22a705000 + 673728
    5   Foundation                    	0x000000022b17798c 0x22b170000 + 31116
    6   Foundation                    	0x000000022b17781c 0x22b170000 + 30748
    7   UIKitCore                     	0x0000000256b6a754 0x2561c8000 + 10102612
    8   Foundation                    	0x000000022b2a44a0 0x22b170000 + 1262752
    9   libsystem_pthread.dylib       	0x000000022a43c2c0 0x22a431000 + 45760
    10  libsystem_pthread.dylib       	0x000000022a43c220 0x22a431000 + 45600
    11  libsystem_pthread.dylib       	0x000000022a43fcdc 0x22a431000 + 60636
    124	default	16:15:37.682889-0700	useractivityd	client process changing types to scan for to Handoff, CopyPaste
    48	default	16:15:37.685400-0700	SpringBoard	notifyBestAppChanged:(null) UASuggestedActionType=0 <private>/<private> opts=(null) when=Mon Dec 28 16:15:37 2020 confidence=0 from=<private>/<private>
    53	default	16:15:37.689862-0700	sharingd	Skipping request for enabled: YES, state: PoweredOn, shouldStart: NO, scanForCopyPaste: YES, scanForHandoff: YES
    241	default	16:15:37.691282-0700	ReportCrash	Thread 6:
    0   libsystem_pthread.dylib       	0x000000022a43fcd0 0x22a431000 + 60624
    
    ReportCrash	Thread 7 name:  io.flutter.1.ui
    Thread 7 Crashed:
    0   App                           	0x00000001030a46e4 0x103088000 + 116452
    1   App                           	0x00000001030e6d84 0x103088000 + 388484
    2   App                           	0x00000001030e6d84 0x103088000 + 388484
    3   App                           	0x00000001030e6c48 0x103088000 + 388168
    4   App                           	0x00000001030e6e98 0x103088000 + 388760
    5   App                           	0x00000001030e79d0 0x103088000 + 391632
    6   App                           	0x00000001030e6ad4 0x103088000 + 387796
    7   App                           	0x00000001030a7328 0x103088000 + 127784
    8   App                           	0x00000001030aa5f8 0x103088000 + 140792
    9   App                           	0x00000001030d8b34 0x103088000 + 330548
    10  App                           	0x00000001030aa7d0 0x103088000 + 141264
    11  App                           	0x00000001030ac904 0x103088000 + 149764
    12  App                           	0x00000001030e6b58 0x103088000<…>
    
    ReportCrash	Thread 8 name:  io.flutter.1.raster
    Thread 8:
    0   libsystem_kernel.dylib        	0x000000022a3af0f4 0x22a397000 + 98548
    1   libsystem_kernel.dylib        	0x000000022a3ae5a0 0x22a397000 + 95648
    2   CoreFoundation                	0x000000022a7af120 0x22a705000 + 696608
    3   CoreFoundation                	0x000000022a7aa030 0x22a705000 + 675888
    4   CoreFoundation                	0x000000022a7a97c0 0x22a705000 + 673728
    5   Flutter                       	0x00000001009f527c 0x1009b8000 + 250492
    6   Flutter                       	0x00000001009f4c04 0x1009b8000 + 248836
    7   libsystem_pthread.dylib       	0x000000022a43c2c0 0x22a431000 + 45760
    8   libsystem_pthread.dylib       	0x000000022a43c220 0x22a431000 + 45600
    9   libsystem_pthread.dylib       	0x000000022a43fcdc 0x22a431000 + 60636
    
    ReportCrash	Thread 9 name:  io.flutter.1.io
    Thread 9:
    0   libsystem_kernel.dylib        	0x000000022a3af0f4 0x22a397000 + 98548
    1   libsystem_kernel.dylib        	0x000000022a3ae5a0 0x22a397000 + 95648
    2   CoreFoundation                	0x000000022a7af120 0x22a705000 + 696608
    3   CoreFoundation                	0x000000022a7aa030 0x22a705000 + 675888
    4   CoreFoundation                	0x000000022a7a97c0 0x22a705000 + 673728
    5   Flutter                       	0x00000001009f527c 0x1009b8000 + 250492
    6   Flutter                       	0x00000001009f4c04 0x1009b8000 + 248836
    7   libsystem_pthread.dylib       	0x000000022a43c2c0 0x22a431000 + 45760
    8   libsystem_pthread.dylib       	0x000000022a43c220 0x22a431000 + 45600
    9   libsystem_pthread.dylib       	0x000000022a43fcdc 0x22a431000 + 60636
    
    ReportCrash	Thread 10 name:  io.flutter.worker.1
    Thread 10:
    0   libsystem_kernel.dylib        	0x000000022a3b9ee4 0x22a397000 + 143076
    1   libsystem_pthread.dylib       	0x000000022a434cf8 0x22a431000 + 15608
    2   libc++.1.dylib                	0x0000000229990090 0x229988000 + 32912
    3   Flutter                       	0x00000001009ef8d8 0x1009b8000 + 227544
    4   libsystem_pthread.dylib       	0x000000022a43c2c0 0x22a431000 + 45760
    5   libsystem_pthread.dylib       	0x000000022a43c220 0x22a431000 + 45600
    6   libsystem_pthread.dylib       	0x000000022a43fcdc 0x22a431000 + 60636
    
    ReportCrash	Thread 11 name:  io.flutter.worker.2
    Thread 11:
    0   libsystem_kernel.dylib        	0x000000022a3b9ee4 0x22a397000 + 143076
    1   libsystem_pthread.dylib       	0x000000022a434cf8 0x22a431000 + 15608
    2   libc++.1.dylib                	0x0000000229990090 0x229988000 + 32912
    3   Flutter                       	0x00000001009ef8d8 0x1009b8000 + 227544
    4   libsystem_pthread.dylib       	0x000000022a43c2c0 0x22a431000 + 45760
    5   libsystem_pthread.dylib       	0x000000022a43c220 0x22a431000 + 45600
    6   libsystem_pthread.dylib       	0x000000022a43fcdc 0x22a431000 + 60636
    
    ReportCrash	Thread 12 name:  dart:io EventHandler
    Thread 12:
    0   libsystem_kernel.dylib        	0x000000022a3bb8f4 0x22a397000 + 149748
    1   Flutter                       	0x0000000100d73b9c 0x1009b8000 + 3914652
    2   Flutter                       	0x0000000100da1ba8 0x1009b8000 + 4103080
    3   libsystem_pthread.dylib       	0x000000022a43c2c0 0x22a431000 + 45760
    4   libsystem_pthread.dylib       	0x000000022a43c220 0x22a431000 + 45600
    5   libsystem_pthread.dylib       	0x000000022a43fcdc 0x22a431000 + 60636
    
    ReportCrash	Thread 7 crashed with ARM Thread State (64-bit):
        x0: 0x0000000000000001   x1: 0x0000000000000034   x2: 0x0000000000000000   x3: 0x0000000000000015
        x4: 0x0000000157d2ef70   x5: 0x0000000000000014   x6: 0x0000000000000000   x7: 0x000000016fa4e2e8
        x8: 0x0000000000000000   x9: 0x0000000000000400  x10: 0x000000000000000f  x11: 0x0000000000000000
       x12: 0x0000000157d2f000  x13: 0x0000000000000fff  x14: 0x0000000000000000  x15: 0x000000016fa4fde8
       x16: 0x000000016f9f0000  x17: 0x0000000006e00000  x18: 0x0000000000000000  x19: 0x000000015805b200
       x20: 0x0000000000000000  x21: 0x00000001034ac000  x22: 0x0000000103180041  x23: 0x0000000158856500
       x24: 0x0000000103187ee1  x25: 0x000000016f9ef000  x26: 0x000000015805b200  x27: 0x000000010360a8c0
       x28: 0x0000000000000004   fp: 0x000000016fa4fde8   lr: 0x00000001030e6d84
        sp: 0x000000016f9ef000   pc: 0x00000001030a46e4 cpsr: 0x20000000
