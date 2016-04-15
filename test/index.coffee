#!/usr/bin/env coffee
{
  log
  error
} = console
echo = log
require 'shelljs/make'
dd = require 'ddeyes'
___ = require '../index'

target.all = ->
  a = [ 1, 2, 3 ]
  # target.assignObject()
  # target.assignArray()
  # target.spreadObject()
  # target.spreadArray()

target.assignObject = ->

  a = {
    'b'
    'c'
  }

  dd ___ a
  , {
    'd'
  }

target.assignArray = ->
  a = [
    1
    2
    3
  ]
  dd ___ a, 4
  dd ___ a, [
    4
    5
  ]

target.spreadObject = ->

  a = {
    'b'
    'c'
  }

  dd ___(
      ___ a
    , {
      'd'
    }
  )

target.spreadArray = ->

  a = [
    1
    2
    3
  ]

  dd ___(
    a[0..1] # object, so slice is ok
    4
    a[2]
  )

  dd ___(
    a[0..1]
    [
      4
      5
    ]
    a[2]
  )
