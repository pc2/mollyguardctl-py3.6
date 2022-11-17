# mollyguardctl
A suite to mollyguard your server to prevent accidental shutdowns, reboots, suspends etc. and to auto-decrypt a potential LUKS root volume on boot. 

This is a fork of [conqp/mollyguardctl](https://github.com/conqp/mollyguardctl) made to run on our HPC-Clusters. Thank you [@conqp](https://github.com/conqp/).

This fork is modified to run with Python 3.6 packaged with RHEL. See the file `TESTS.md` to check whats working or not. You are probably better of using the original if you don't need to use Python 3.6.

## Configuration
`mollyguardctl` is configured via `/etc/mollyguardctl.conf`.

### Section `MollyGuard`
* `units` A space-seperated list of systemd units to mask. Defaults to the default units (see below). 
* `hostname` Specifies whether to prompt for the host name. Defaults to: `true`.
* `systemctl` The systemctl binary to use. Defaults to `/usr/bin/systemctl`.


### Units masked by default
If not configured otherwise the following units will be masked by mollyguardctl:

* `halt.target`
* `hibernate.target`
* `poweroff.target`
* `reboot.target`
* `shutdown.target`
* `suspend.target`
* `suspend-then-hibernate.target`

## Usage
Start and enable `mollyguard.service`. 
To reboot the system then, use `mollyguardctl reboot`.
