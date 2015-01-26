exec = require("child_process").exec
path = require "path"
colorScript = path.resolve(__dirname, "./color-palette.sh")
module.exports = (imgPath, number, cb, debug)->
  cmd = "#{colorScript} #{imgPath} #{number}"
  exec cmd, (err, stdout, stderr)->
    if err
      cb(err)
      if debug
        console.error(err)
    else
      if stderr and debug
        console.warn stderr
      if stdout
        result = try
          json = JSON.parse(stdout)
          sum = 0
          for instance in json.result
            sum += parseInt instance.counts
          console.log sum
          for instance, index in json.result
            json.result[index].percent = Math.round(parseInt(instance.counts) / parseInt(sum) * 10000)/100 + "%"
          json
        catch err
          stdout
        cb null, result
      else
        cb stderr
