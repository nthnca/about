# [ssh-keygen](README.md)

Generally, I create an RSA ssh key for each computer I use. I try to name them in a way that I can easily keep track of them and keep track of how old they are, so something like `<machine-name>-<year>-<month>`.

These keys can then be used for connecting to github, virtual machines, etc.

`ssh-keygen -t rsa -b 4096 -C "nathanbullock@machineyearmonth.ca" -N "" -f rsa.machineyearmonth`

- `-t`: Key type, rsa seems to be the current best option.
- `-b`: Key size, bigger is better.
- `-C`: Comment, some situations care about this.
- `-N`: Don't use a passphrase, this reduces security but is convenient.
- `-f`: Filename, the private key will use this filename, the public key will have a ".pub" suffix.

The private key should now be moved to the correct place, for example `~/.ssh/id_rsa`, and should not be world readable, so `chmod 600`.

The public key can also sit alongside it at `~/.ssh/id_rsa.pub`, but I also move them to a common location so it is easy to grab the correct ones when I want to give that machine access to something (github, GCP, etc).

## Chromebooks

Since I can't generate these keys on a chromebook I will usually do this on another machine and then copy and paste the private key onto the chromebook, and then delete it from the computer I generated it on.

Now I can use the "import" key option in the secure shell app so I am able to log in to my various machines.

## Warning

Remember, using ssh keys have some advantages to passwords, but they still have significant dangers if not managed and used correctly.
