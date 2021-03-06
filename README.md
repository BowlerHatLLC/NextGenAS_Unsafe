# NextGenAS Unsafe

*Note: This project is no longer under active development. Use at your own risk.*

Utilities for manipulating untyped JavaScript objects in ActionScript. The ActionScript Virtual Machine always verifies types at runtime, but when ActionScript is transpiled to JavaScript, there are ways to break out of the compile-time type system at run-time.

## Unsafe.cast()

An alternative to normal ActionScript casting that completely bypasses type coercion. In other words, the result may be assigned to any type without generating a compile-time error. Useful for converting untyped JavaScript objects into typed ActionScript objects.

### Usage

``` actionscript
var point:Object = { x: 2, y: 10 };
var result:IPoint = Unsafe.cast( point );
```

---

Special thanks to the following sponsors for their generous support:

* [YETi CGI](http://yeticgi.com/)
