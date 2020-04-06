# ejshint

This little script parses an error message from [EJS-Lint](https://github.com/RyanZim/EJS-Lint) to provide some context.

## Example
### Without ejshint
```
> ejslint views/*
Unexpected token (15:23) in views/badfile.ejs
```

### With ejshint

```
ejshint.sh views/*
```
![Code snippet with colorized indication of the character<a href="#<%== s %>" class="nav-link" data-toggle="tab" role="tab" id="<%= s %>-tab" aria-
controls="<%= s %>"><%= s %></a></li>](example.png)

## Installation

As long as the two files `ejshint.sh` and `do-ejshint.sh` are in the same directory, you can call `ejshint.sh` *in place of* the ejslint CLI. 

I suggest putting them in your user root (`~/` in linux and creating an alias so that `ejshint` calls to the `ejshint.sh` file).

## Usage
```
ejshint.sh [filepath]
```

So far it is only configured to handle one error at a time. It could be adapted to handle more.

