Elegant type detection.

### Install

```
npm install type.is --save
```

### Usage

```javascript
var type = require('type.is')

var fn = function() {};
type(fn).is.func && fn.call(this);
```

Write hummable test code with chaijs

```coffee-script
describe 'is.string', ->

  it 'should be true if given a string argument', ->
    type('hi').is.string.should.be.true

  it 'should be false if given a non-string argument', ->
    type(v).is.string.should.be.false for k, v of types when k isnt 'str'
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

