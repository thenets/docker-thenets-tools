# docker-thenets-tools

Common packages used for troubleshooting.

## Usage examples

```bash
# Shell with many tools
docker run -it --rm thenets/tools

# Create htpasswd
# (you must run 'htpasswd' INSIDE the container, or
# your password will be stored in bash history file!)
docker run -it --rm thenets/tools
htpasswd -nbB myName myPassword # bcrypt
htpasswd -nbm myName myPassword # MD5
htpasswd -nbs myName myPassword # SHA1
htpasswd -nbd myName myPassword # CRYPT

# Port forward
# from localhost:8080 to thenets.org:80
docker run --rm \
    -p 8080:8080 \
    thenets/tools \
        socat -s TCP4-LISTEN:8080,fork,reuseaddr TCP4:thenets.org:80
```
