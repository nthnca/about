# Go Hints and Tips

The links here are mostly to keep reminding myself of interesting and useful things I have read while learning about and improving my skills as a go developer. Overall though, one of the best resources, is the go website itself:
https://golang.org/.

## Code Layout

- https://blog.golang.org/organizing-go-code - Excellent advice, don't forget it.
- https://github.com/golang-standards/project-layout - Doesn't override the advice from the link above, but gives an example of how things might look in a larger project. Remember, start simple, don't try to over organize right from the start.
- https://medium.com/golang-learn/go-project-layout-e5213cdcfaa2 - And a bit more analysis of the various ways you could do things.
- My own comments:
  - Don't forget about https://godoc.org/. Some of these code layouts work better with godoc than others. For example I have found code under cmd/ isn't processed.
  - Don't forget about internal/, it is a nice way to be able to still break code into packages without making the packages public.

## Code Documentation

- https://blog.golang.org/godoc-documenting-go-code
- https://github.com/fluhus/godoc-tricks

## Versioning Code (Modules)

I haven't taken the time to really use this yet, but I think it is important to understand.

- https://go.googlesource.com/proposal/+/master/design/24301-versioned-go.md

## Other Useful Links

- https://play.golang.org/

## Miscellaneous items that I haven't decided if I care about yet.

- https://medium.com/@benbjohnson/standard-package-layout-7cdbc8391fc1
- https://research.swtch.com/vgo
