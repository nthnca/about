# Chromebook Tips

- Change the search button to ctrl. May want to adjust key repeat settings.
- Change search engine to duck duck go.
- Make sure to set "sleep" when idle AND when lid is closed.
- Create an [SSH key](SshKeyGen.md) and store it on the filesystem.
- Setup apps along the bottom bar - Chrome, Secure Shell App, txt, file system, ...
  - Alt-# will switch between those apps.
- Setup secure shell app
  - Import SSH key
  - Text font family: "Hack", monospace
  - Custom CSS: https://cdn.jsdelivr.net/npm/hack-font@3.3.0/build/web/hack.css
  - Font size 14 (for my machine)
- Alt-TAB will switch between windows.
- Ctrl-Shift-Q twice will logout (can't simply lock the screen because I don't have a search button.)
- Ctrl-Alt-? to get full list of short cuts.
- Ctrl-? will give chromebook tips

Git Setup

```shell
git config --global user.email "nathanbullock@gmail.com"
git config --global user.name "Nathan Bullock"

// To make sure you don't forget to commit or push code
// Add this to: /usr/share/git-core/templates/hooks/pre-push
if [ $(git status --porcelain | wc -l) -gt 0 ]; then
  echo "Repo is dirty... please clean it up/commit before pushing."
  exit 1
fi
```
