# Cloudflare Wrangler

[![dockeri.co](https://dockeri.co/image/fleuv/cloudflare-wrangler)](https://hub.docker.com/r/fleuv/cloudflare-wrangler)

A simple docker container which can be used to run [Wrangler](https://github.com/cloudflare/wrangler) commands.

## Usage

1. Create a new file in one of your `$PATH` directories and name it e.g. `wrangler`. For linux I suggest using the following command:

   ```
   touch /usr/local/bin/wrangler
   ```

2. Add executable permission to the file, in linux it's done like this:

   ```
   chmod +x /usr/local/bin/wrangler
   ```

3. Use your favorite editor to add the following contents to the file (only tested in linux):

   ```
   #!/bin/sh

   docker run \
       --rm \
       -v "$PWD":/app \
       --name usr-local-bin-wrangler \
       fleuv/cloudflare-wrangler:latest \
       "$@"

   exit $?
   ```

4. Use `wrangler` from a CLI in a local project its root directory.

## License

MIT
