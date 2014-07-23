Detect the type of a variable.

### Install

```
npm install type.is --save
```

### Usage

```
var type = require('type.is')

var fn = function() {};
if (type(fn).is.func) {
    fn.call(this);
}
```

### Available detections

|Type        | Detector             |
|:-----------|:---------------------|
|Number      | `type(v).is.number`  |
|String      | `type(v).is.string`  |
|Boolean     | `type(v).is.bool`    |
|Function    | `type(v).is.func`    |
|Array       | `type(v).is.array`   |
|Date        | `type(v).is.date`    |
|RegExp      | `type(v).is.re`      |
|Object      | `type(v).is.object`  |


### License
MIT

