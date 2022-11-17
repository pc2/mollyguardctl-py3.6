# mollyguardctl
A suite to mollyguard your server to prevent accidental shutdowns, reboots, suspends etc. and to auto-decrypt a potential LUKS root volume on boot. 

This is a fork of [conqp/mollyguardctl](https://github.com/conqp/mollyguardctl) made to run on our HPC-Clusters. Thank you [@conqp](https://github.com/conqp/).

This fork is modified to run with Python 3.6 packaged with RHEL. See the file `TESTS.md` to check whats working or not. You are probably better of using the original if you don't need to use Python 3.6.

## Usage

Run `./setup.sh` as root to install and enable mollyguarding. Run `./test.sh` if you wan't to make sure  it works (Attention: This could restart your system)

To reboot the system now, use `mollyguardctl reboot`.
