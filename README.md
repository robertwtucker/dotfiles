# Dotfiles

These are the configuration files and settings I use every day. I use [yadm](https://yadm.io)
to sync files in this repo so it'll be easy to bootstrap a new machine.

I do my work on a Mac, but occasionally use Linux, so I try to keep things
portable by wrapping the Mac-specific stuff. If you happen to find something
useful here, you are welcome to use/adapt it for your needs. I know I certainly
~~stole~~ learned a lot of what I use here studying other dotfile repos.

## Notes For Future-Me

To bootstrap a new machine, download and install [yadm](https://github.com/yadm-dev/yadm).

```bash
curl -fLo /usr/local/bin/yadm https://github.com/yadm-dev/yadm/raw/master/yadm && chmod a+x /usr/local/bin/yadm
```

Clone [this repository](https://github.com/robertwtucker/dotfiles) using `yadm`
with the `--bootstrap` option.

```bash
yadm clone https://github.com/robertwtucker/dotfiles --bootstrap
```

Start a new shell and execute the following commands:

```fish
yadm decrypt
fisher update
```

_NB: If you were following along at home and aren't future-me, that first step is
obviously going to fail._

## License

This project is made available under the [MIT License](LICENSE).

## Questions

Open an [issue](https://github.com/robertwtucker/dotfiles/issues).

Robert Tucker - [@robertwtucker](https://x.com/robertwtucker)
