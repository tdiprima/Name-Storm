# Codename

[GitHub Repo](https://github.com/lucasepe/codename)

[Generate random memorable "superhero like" codenames - just like Docker does with container names](https://www.reddit.com/r/golang/comments/n8b4v3/generate_random_memorable_superhero_like/)

[![Go Report Card](https://goreportcard.com/badge/github.com/lucasepe/codename?style=flat-square)](https://goreportcard.com/report/github.com/lucasepe/codename) &nbsp;&nbsp;&nbsp;  [![PkgGoDev](https://pkg.go.dev/badge/github.com/lucasepe/codename)](https://pkg.go.dev/github.com/lucasepe/codename)

> an [RFC1178](https://tools.ietf.org/html/rfc1178) implementation to generate pronounceable, sometimes even memorable, _"superhero like"_ codenames, consisting of a random combination of adjective and noun.


## Usage

Codename it's a [package](https://golang.org/doc/code#ImportingRemote), so all you need to do is import it into your code ([Try it!](https://play.golang.org/p/TrbW97r7aAO)):

```go
package main

import (
	"fmt"
	"github.com/lucasepe/codename"
)

func main() {
	rng, err := codename.DefaultRNG()
	if err != nil {
		panic(err)
	}

	for i := 0; i < 8; i++ {
		name := codename.Generate(rng, 0)
		fmt.Println(name)
	}
}
```

This is how the output looks like (since it's random your will be different).

```txt
coherent-jolt
enhanced-smasher
heroic-nightstar
driven-talkback
included-eradicator
assuring-lord-tyger
caring-batwoman
solid-blackheart
```

You can request the addition of a token to create even more entropy ([Try it!](https://play.golang.org/p/5gZTKfLyIUN)):

```go
package main

import (
	"fmt"
	"github.com/lucasepe/codename"
)

func main() {
	rng, err := codename.DefaultRNG()
	if err != nil {
		panic(err)
	}

	for i := 0; i < 8; i++ {
		name := codename.Generate(rng, 4)
		fmt.Println(name)
	}
}
```

note the token (with the specified length) added at the end:

```txt
immortal-butterfly-f065
maximum-captain-planet-edb2
relieved-polaris-aa58
welcome-huntress-a2c1
magnetic-kinetix-c8c3
touching-air-walker-7cf5
national-spy-6964
lenient-retro-girl-09ff
```
