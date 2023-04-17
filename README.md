# Simple HTTP v2ray-plugin Docker

This is a Docker image for [v2ray-plugin](https://github.com/shadowsocks/v2ray-plugin), a plugin for shadowsocks that provides obfuscation for VPN traffic, with a simple HTTP server included.

## Usage

1. Pull the Docker image:

docker pull tony19821016/simple-http-v2ray-plugin-docker


2. Run the Docker container:

```
docker run -d -p 80:80 -e PASSWORD=yourpassword tony19821016/simple-http-v2ray-plugin-docker
````

Here, `PASSWORD` is the password for your shadowsocks server.

3. Access the simple HTTP server by visiting `http://<IP address or hostname>` in your web browser.

## Encryption Protocol

This [Docker image](poe://www.poe.com/_api/key_phrase?phrase=Docker%20image&prompt=Tell%20me%20more%20about%20Docker%20image.) is configured to use a specific [encryption protocol](poe://www.poe.com/_api/key_phrase?phrase=encryption%20protocol&prompt=Tell%20me%20more%20about%20encryption%20protocol.) and does not support switching to a different `METHOD` by modifying the `METHOD` environment variable. If you need to use a different encryption protocol, you will need to modify the [Docker](poe://www.poe.com/_api/key_phrase?phrase=Docker&prompt=Tell%20me%20more%20about%20Docker.) image configuration accordingly.

If you have any questions or need assistance with modifying the [Docker image configuration](poe://www.poe.com/_api/key_phrase?phrase=Docker%20image%20configuration&prompt=Tell%20me%20more%20about%20Docker%20image%20configuration.), please refer to the `v2ray-plugin` documentation or seek help from the Docker community.

## Using [Caddy v2](poe://www.poe.com/_api/key_phrase?phrase=Caddy%20v2&prompt=Tell%20me%20more%20about%20Caddy%20v2.) as a [Reverse Proxy](poe://www.poe.com/_api/key_phrase?phrase=Reverse%20Proxy&prompt=Tell%20me%20more%20about%20Reverse%20Proxy.)

Caddy v2 makes it easy to set up a reverse proxy for the simple HTTP server provided by this Docker image. Here's an example [Caddyfile](poe://www.poe.com/_api/key_phrase?phrase=Caddyfile&prompt=Tell%20me%20more%20about%20Caddyfile.) configuration:

```
yourdomain.com {
 reverse_proxy localhost:80 {
     header_up Host {host}
     header_up X-Real-IP {remote}
     header_up X-Forwarded-For {remote}
     header_up X-Forwarded-Proto {scheme}
 }
}
```

Replace `yourdomain.com` with your own domain name or IP address.

If you have any questions or need assistance with configuring Caddy v2, please refer to the [Caddy documentation](poe://www.poe.com/_api/key_phrase?phrase=Caddy%20documentation&prompt=Tell%20me%20more%20about%20Caddy%20documentation.) or seek help from the Caddy community.

## License

This Docker image is licensed under the [MIT License](poe://www.poe.com/_api/key_phrase?phrase=MIT%20License&prompt=Tell%20me%20more%20about%20MIT%20License.). See the [LICENSE](LICENSE) file for details.
```

I hope that helps! Let me know if you have any further questions.
