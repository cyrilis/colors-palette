### A ImageMagick Script Can Generate Color Palettes JSON Format.

#### Install

First download and install  [ImageMagick](http://www.imagemagick.org/). In Mac OS X, you can simply use [Homebrew](http://mxcl.github.io/homebrew/) and do:

    brew install imagemagick

then either use npm:

    npm install color-palette

or clone the repo:

    git clone git://github.com/cyrilis/color-palette.git

#### Usage :

```javascript
    var colorPalette = require("colorPalette");

    colorPalette("/path/to/img", 8, function(err, colors){

        if(err){
            console.error(err);
            return false;
        }

        console.log(colors);

    });
```
#### Result JSON:
```json
{
    "result": [
        {
            "counts": "272530",
            "rgb": "228,234,237",
            "hex": "E4EAED",
            "percent": "29.57%"
        },
        {
            "counts": "148684",
            "rgb": "172,142,114",
            "hex": "AC8E72",
            "percent": "16.13%"
        },
        {
            "counts": "133115",
            "rgb": "191,181,170",
            "hex": "BFB5AA",
            "percent": "14.44%"
        },
        {
            "counts": "103595",
            "rgb": "95,11,9",
            "hex": "5F0B09",
            "percent": "11.24%"
        },
        {
            "counts": "100268",
            "rgb": "201,177,152",
            "hex": "C9B198",
            "percent": "10.88%"
        },
        {
            "counts": "84419",
            "rgb": "163,59,55",
            "hex": "A33B37",
            "percent": "9.16%"
        },
        {
            "counts": "66604",
            "rgb": "57,20,15",
            "hex": "39140F",
            "percent": "7.23%"
        },
        {
            "counts": "12385",
            "rgb": "189,113,141",
            "hex": "BD718D",
            "percent": "1.34%"
        }
    ]
}
```

#### Test Image
![Test Image](https://github.com/cyrilis/color-palette/raw/master/test.jpg)
#### Example
![Demo Image](https://github.com/cyrilis/color-palette/raw/master/test_demo.png)


