# Basic Auth Proxy on Railway

Railway packaging for [nginx](https://nginx.org/). It builds on the official, unmodified image, pinned to a release, and adds only what Railway needs.

Puts a username and password in front of any site or private Railway service.

| Variable | Example | Purpose |
|---|---|---|
| `ORIGIN` | `http://my-app.railway.internal:3000` | Where requests are sent |
| `BASIC_AUTH` | `admin:long-password` | One or more `user:password` pairs, comma separated |
| `ALLOW_NO_AUTH` | `true` | Optional: run without a login |

Listens on `$PORT` (default `80`). `/healthz` answers without a login for health checks.

## License

The files in this repository are MIT licensed (see `LICENSE`). nginx itself is licensed separately by its authors; this repository does not include or modify its source code.
