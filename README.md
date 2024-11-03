# pdflinkextractor

Originally made by [Glutanimate](https://askubuntu.com/a/395155).

This script finds any `pdf` files hyperlinked in a webpage and provides output of the links or download them.

## Usage
### Bash One Liner

```bash
curl -fsSL https://nibirsan.org/pdflinkextractor/script.sh | sh -s - [-d] <website> 
```

Using `-d` will enable you to download the files instead of just saving the links. 

To save the links to a file, just do `> file` at the end of the command.

### Local

```bash
git clone https://github.com/moiSentineL/pdflinkextractor.git
cd pdflinkextractor && chmod +x script.sh
./script.sh [-d] <website>
```

> [!TIP]
> Alias it for better access.

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