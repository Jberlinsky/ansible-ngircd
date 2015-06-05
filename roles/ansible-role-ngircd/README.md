# ngircd

Install ngircd and generate self-signed certificate.

## Requirements

- Ubuntu
- Debian

## Role Variables

- `ngircd_hostname`
- `[Global]`
  - `ngircd_network_name`
  - `ngircd_admin_info1`
  - `ngircd_admin_info2`
  - `ngircd_admin_email`
  - `ngircd_info`
  - `ngircd_listen`
  - `ngircd_password`
  - `ngircd_ports`
- `[Limits]`
  - `ngircd_max_nick_length`
- `[SSL]`
  - `ngircd_ssl_cert_file`
  - `ngircd_ssl_dh_file`
  - `ngircd_ssl_key_file`
  - `ngircd_ssl_ports`
- role only
  - `ngircd_ssl_csr_file`
  - `ngircd_ssl_csr_subj`

## Dependencies

None.

## Example Playbook

    ---
    - hosts: servers
      roles:
         - { role: znzj.ngircd }

## Example host vars for self-signed ircs

```
---
ngircd_hostname: "localhost"
# [Global]
ngircd_network_name: "local-irc.example.net"
ngircd_admin_info1: "Local User"
ngircd_admin_info2: "Local City"
ngircd_admin_email: "irc@local-irc.example.com"
ngircd_info: "Yet another IRC Server running on localhost"
ngircd_listen: no
ngircd_password: "nadokapass"
ngircd_ports: no
# [Limits]
ngircd_max_nick_length: 18
# [SSL]
ngircd_ssl_cert_file: "/etc/ssl/certs/{{ ngircd_hostname }}.crt"
ngircd_ssl_dh_file: "/etc/ngircd/dhparams.pem"
ngircd_ssl_key_file: "/etc/ssl/private/{{ ngircd_hostname }}.key"
ngircd_ssl_ports: 6697
# role only
ngircd_ssl_csr_file: "/etc/ssl/{{ ngircd_hostname }}.csr"
ngircd_ssl_csr_subj: "/CN={{ ngircd_hostname }}"
```

## License

MIT License
