# YoRHa GRUB theme

![Alt text](preview.png?raw=true "Preview")

## Fork of [OliveThePuffin/yorha-grub-theme](https://github.com/OliveThePuffin/yorha-grub-theme)

I have only modified the 1080p resolution in this fork. If you like my modifications, you should be able to derive them for different resolutions by viewing the diff and/or reading this section.

In summary, my modifications consist of a higher quality yorha screencap, some minor spacing changes, and an icon set.

### Icons

This fork comes with an icon set derived from [AdisonCavani/distro-grub-themes](https://github.com/AdisonCavani/distro-grub-themes/tree/master/assets/icons).

It was modified by adding 3px of padding to the top of each icon using [this script](./yorha-1920x1080/icons/conv.sh). Inkscape might not look like it's doing anything in that script. However, grub won't display pngs directly saved by ImageMagick for some reason.

Everything in the [icons directory](./yorha-1920x1080/icons) is GPLv3 with the exception of `uefi.png`. The rest of the files in this repo are of ambiguous but not necessarily dubious license.

#### How do I use the icons?

In your grub config, add `--class <icon minus .png ext>` to each `menuentry`. For example, to use `windows.png`, it may look like `menuentry "Windows 10" --class windows {`.

As another example, I added `--class uefi` to my "UEFI Firmware Settings" entry.

## To test without installing:

I use [grub2-theme-preview](https://github.com/hartwork/grub2-theme-preview). I was seeing some weird bugs, so if it helps here is the exact command I used under Arch:

```bash
grub2-theme-preview --resolution=1920x1080 --grub-cfg=grub.cfg yorha-grub-theme/yorha-1920x1080
```

Copy your grub config from `/boot/grub/grub.cfg` and `chown` it. Otherwise, remove the `--grub-cfg` param. `grub2-theme-preview` will give you a generic default which you may be ok with just for testing purposes.

## To install:

### Step 1
Find your monitor's resolution and copy the corresponding folder to `/boot/grub/themes`

### Step 2
Edit your `/etc/default/grub` file to include `GRUB_THEME="/boot/grub/themes/ *folder you copied* /theme.txt"`

**For example:** `GRUB_THEME="/boot/grub/themes/yorha-1920x1080/theme.txt"`

### Step 3
Finalize your changes with `sudo update-grub`
