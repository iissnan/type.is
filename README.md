Detect the type of a variable.

### Install

```
npm install isn.typeis --save
```

### Usage

```
var type = require('isn.typeis')

var fn = function() {};
if (type(fn).is.func) {
    fn.call(this);
}
```

### Available detections


* Number:   `type(v).is.number`
* String:   `type(v).is.string`
* Boolean:  `type(v).is.bool`
* Function: `type(v).is.func`
* Array:    `type(v).is.array`
* Date:     `type(v).is.date`
* RegExp:   `type(v).is.re`
* Object:   `type(v).is.object`


### License
MIT

