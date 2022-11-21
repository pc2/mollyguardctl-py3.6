# Install mollyguardctl with BlueBanquise

1. Clone this branch into the BlueBanquise roles directory (Something `/etc/bluebanquise/roles/custom/mollyguard`)
2. Add the role to the playbook of the host(s)  you want to protect:
```
    - role: mollyguard
      tags: mollyguard
```
3. Roll the playbook out.
4. All done. As long as the service is running (Started and enabled by default) your system is protected. Reboot with `mollyguardctl reboot

