# Crystal Rails Template

This is a sample Rails-like project written in Crystal.  The goal is to organize and
utilize the underlying web framework in such a way that it feels as familiar as developing
in Rails itself.

This project should be considered a template and example only. This will not be versioned
and will have breaking changes if you were to depend on this as a code dependency.  To use
this repo simply clone it and make your modifications.

## Development

This project is open for continued advancement towards a more Rails-like design.

## Deployment

 * **Heroku**: At this time the Heroku buildpack for Crystal conflicts with the use of the `app` directory.  See issue: [crystal-lang/heroku-buildpack-crystal/issues/19](https://github.com/crystal-lang/heroku-buildpack-crystal/issues/19) .  Until this issue is resolved you may use an alternative one I've made: [danielpclark/heroku-buildpack-crystal](https://github.com/danielpclark/heroku-buildpack-crystal)

## Contributing

1. Fork it ( https://github.com/danielpclark/railslike/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [danielpclark](https://github.com/danielpclark) Daniel P. Clark - creator, maintainer

## License

The MIT License (MIT)

Copyright (C) 2017 by Daniel P. Clark and Contributors

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
