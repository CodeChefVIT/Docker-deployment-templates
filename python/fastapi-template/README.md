### Note

Kindly change `subdomain.yourdomain.tld` to your deployment domain in:
- [docker-compose.yaml](./docker-compose.yaml)
- [traefik.toml](./traefik.toml)

Kindly change `test@example.com` to your email address in:
- [traefik.toml](./traefik.toml)

Also, make a file called **acme.json** with `{}` as value and type
```bash
$ chmod 600 acme.json
```
to set permission 600 in your shell.