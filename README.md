# Docker SASSC image with filewatcher (inotifywait)

This is a tiny (8MB) docker image containing the SassC binary with inotifywait as a filewatcher.

## Usage
To setup a filewatcher and compile a sass file for example at ./scss/main.scss into a file called ./css/main.css with mapping in the current directory:

### Docker Run
`$ docker run -t -e SASSC_CMD="sassc -m auto ./scss/main.scss ./css/main.css" --volume=$PWD:/sassc glaand/sassc-filewatcher`

### Docker Compose
```
sassc-filewatcher:
    image: glaand/sassc-filewatcher
    volumes:
     - .:/sassc
    environment:
      SASSC_CMD: sassc -m auto ./scss/main.scss ./css/main.css
```