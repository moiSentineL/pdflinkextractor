# pdflinkextractor

Originally made by [Glutanimate](https://askubuntu.com/a/395155).

```bash
curl -fsSL https://nibirsan.org/pdflinkextractor/script.sh | sh -s - [-d] <website> 
```

Using `-d` will enable you to download the files instead of just saving the links. 

> Tip: Alias it for better access.

## Dependencies

You have to have `wget` and `lynx` installed:

### Ubuntu

```bash
sudo apt-get install wget lynx
```

### Arch Linux

```bash
sudo pacman -S wget lynx
```