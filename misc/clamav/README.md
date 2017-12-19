# Installs clamav client and server

Installs clamd, a frontend to a remote virus scanner. Clamd is memory heavy, so heaving one instance per app server is a bit huge. Running a single clamd server is preferrable.

### Install server

(needs currently ca. 1 GB RAM)

```yaml
- hosts: clamd
  roles:
   - role: dresden-weekly.rails/misc/clamav/server
     clamd_port: 3310
```

If you are running in a public cloud environment, more steps for securing are useful (iptables, VPN, ...). Otherwise you might end up scanning for somebody else :).

### Install client (inside rails / sidekiq vm provisioning)

```yaml
- role: dresden-weekly.rails/misc/clamav/client
  clamd_host: 127.0.0.1
  clamd_port: 3310
  # clamd_host: "{{ hostvars['clamd.YOURSERVER.pludoni.com'].ansible_default_ipv4.address }}"
```
