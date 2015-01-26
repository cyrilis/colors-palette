colorPalette = require "./index"
path = require "path"
testImage = path.resolve __dirname, "./test.jpg"
colorNumbers = 8
colorPalette testImage, colorNumbers, (err, result)->
  console.log err, result