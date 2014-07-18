should = require('chai').should()
type = require('../')

describe 'type', ->
  types  = {
    num: 10
    str: 'a string'
    boo: true
    fun: ->
    arr: []
    reg: /10/
    date: new Date()
    obj: {}
  }
  
  describe 'type', ->
    it 'should be an function', ->
    type.should.be.a 'function'

  describe 'type()', ->
    it 'should return a object', ->
      type(v).should.be.an 'object' for k, v of types

    it 'should have a `is` property, which is an object', ->
      type(v).is.should.be.an 'object' for k, v of types

  describe 'is.number', ->
    it 'should be true if given a number argument', ->
      type(types.num).is.number.should.be.true
    it 'should be false if given a non-number argument', ->
      type(v).is.number.should.be.false for k, v of types when k isnt 'num'

  describe 'is.string', ->
    it 'should be true if given a string argument', ->
      type(types.str).is.string.should.be.true
    it 'should be false if given a non-string argument', ->
      type(v).is.string.should.be.false for k, v of types when k isnt 'str'

  describe 'is.bool', ->
    it 'should be true if given a boolean argument', ->
      type(types.boo).is.bool.should.be.true
    it 'should be false if given a non-string argument', ->
      type(v).is.bool.should.be.false for k, v of types when k isnt 'boo'

  describe 'is.func', ->
    it 'should be true if given a function argument', ->
      type(types.fun).is.func.should.be.true
    it 'should be false if given a non-function argument', ->
      type(v).is.func.should.be.false for k, v of types when k isnt 'fun'

  describe 'is.array', ->
    it 'should be true if given a array argument', ->
      type(types.arr).is.array.should.be.true
    it 'should be false if given a non-array argument', ->
      type(v).is.array.should.be.false for k, v of types when k isnt 'arr'

  describe 'is.re', ->
    it 'should be true if given a regexp argument', ->
      type(types.reg).is.re.should.be.true
    it 'should be false if given a non-regexp argument', ->
      type(v).is.re.should.be.false for k, v of types when k isnt 'reg'

  describe 'is.date', ->
    it 'should be true if given a date argument', ->
      type(types.date).is.date.should.be.true
    it 'should be false if given a non-date argument', ->
      type(v).is.date.should.be.false for k, v of types when k isnt 'date'

  describe 'is.object', ->
    it 'should be true if given a array argument', ->
      type(types.obj).is.object.should.be.true
    it 'should be false if given a non-array argument', ->
      type(v).is.object.should.be.false for k, v of types when k isnt 'obj'
