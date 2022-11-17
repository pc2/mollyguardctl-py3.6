# Testing

## Overview

| OS | Python Version | Installation working? | Mollyguarding working? |
|---|---|---|---|
| Almalinux 8.6 x86_64 | `Python 3.6.8` | Yes | Yes |
| Debian 11.5 arm64  | `Python 3.9.2` | Yes | Yes  |

## Detailed Tests

### Almalinux 8.6

```
Testing mollyguardctl on alma_86-x86_64
Linux alma_86-x86_64 4.18.0-372.9.1.el8.x86_64 #1 SMP Tue May 10 08:57:35 EDT 2022 x86_64 x86_64 x86_64 GNU/Linux
1. Check if service is active: 
active
Starting tests. If your computer is still running after this script everything is fine.
2. Testing 'shutdown'
2. 'shutdown' doesn't work. Continuing. Any output can be ignored
3. Testing 'shutdown now'
3. 'shutdown now' doesn't work. Continuing.
4. Testing 'poweroff'
4. 'poweroff' doesn't work. Continuing.
5. Testing 'init 0'
5. 'init 0' doesn't work. Continuing.
6. Testing 'halt'
6. 'halt' doesn't work. Continuing.
7. Testing 'reboot'
7. 'reboot' doesn't work. Continuing.
8. Testing 'init 6'
8. 'init 6' doesn't work. Continuing.
Finished tests
```
