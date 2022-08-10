# Phone Number Lookup POC

This is just a simple shell script to demonstrate how phone number lookups through UPI work.

For more info, you can read [this blog post](https://gotlou.srht.site/phone-num-lookup.html).

## Requirements

- bash

- httpie

- jq

## Usage

After cloning the project, run

```
bash upi.sh xxxxxxxxxx
```

where "xxxxxxxxxx" is a 10-digit Indian mobile phone number. It will try to do an optimized scan where it only searches for VPAs from the most popular UPI apps.

If the number is still not found, you can run 

```
bash upi.sh xxxxxxxxxx all
```

which is a more exhaustive, alphabetical search. This *will* take some time, so get something to eat while it runs (unless you luck out, of course).

## Disclaimer

I do NOT own or operate or have anything to do with upibankvalidator.com. While they don't really get a whole lot of info about you specifically other than that you made the request using httpie and what IP address you had at the time, I don't know how they use this information. Use at your own risk, I am NOT liable for any damages.

This tool was primarily made as a proof of concept, and for educational purposes.

## Acknowledgements

Thanks to [Aseem Shrey](https://aseemshrey.in/) for building a similar tool [here](https://github.com/LuD1161/upi-recon-cli), written in Go. One of the GitHub issues on that page led me to upibankvalidator.com

The suffix lists are taken from that project.

## License

This project is licensed under the GNU General Public Licence v2.
