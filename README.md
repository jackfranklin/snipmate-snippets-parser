# Snippets Parser for Snipmate

Sometimes I want a way to search through the [snippet files](https://github.com/honza/snipmate-snippets) of the Vim [Snipmate Plugin](https://github.com/garbas/vim-snipmate).

Therefore I wrote this tiny little hacked together Ruby script. For example, running:

```
./parser.rb html.snippets left
```

Will give:

```
snippet left
  &#x2190;
# →
```

You can also list all the snippets:

```
./parser.rb html.snippets
```

```
snippet nbs
{ and so on }
snippet wbr
```

It's quick and dirty but it does work.
