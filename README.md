# ejshint

This little script parses an error message from [EJS-Lint](https://github.com/RyanZim/EJS-Lint) to provide some context.

## Example
### Without ejshint
```
> ejslint views/*
Unexpected token (15:23) in views/badfile.ejs
```

### With ejshint

![Code snippet with colorized indication of the character<a href="#<%== s %>" class="nav-link" data-toggle="tab" role="tab" id="<%= s %>-tab" aria-
controls="<%= s %>"><%= s %></a></li>](with.png)
