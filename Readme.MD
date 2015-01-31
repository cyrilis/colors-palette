### A ImageMagick Script Can Generate Color Palettes JSON Format.

#### Install

First download and install  [ImageMagick](http://www.imagemagick.org/). In Mac OS X, you can simply use [Homebrew](http://mxcl.github.io/homebrew/) and do:

    brew install imagemagick

then either use npm:

    npm install colors-palette

or clone the repo:

    git clone git://github.com/cyrilis/colors-palette.git

#### Usage :

```javascript
    var colorPalette = require("colors-palette");

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
    { counts: 272530,
        rgb: '228,234,237',
        hex: 'E4EAED',
        percentage: 29.57,
        percent: '29.57%' },
    { counts: 148684,
        rgb: '172,142,114',
        hex: 'AC8E72',
        percentage: 16.13,
        percent: '16.13%' },
    { counts: 133115,
        rgb: '191,181,170',
        hex: 'BFB5AA',
        percentage: 14.44,
        percent: '14.44%' },
    { counts: 103595,
        rgb: '95,11,9',
        hex: '5F0B09',
        percentage: 11.24,
        percent: '11.24%' },
    { counts: 100268,
        rgb: '201,177,152',
        hex: 'C9B198',
        percentage: 10.88,
        percent: '10.88%' },
    { counts: 84419,
        rgb: '163,59,55',
        hex: 'A33B37',
        percentage: 9.16,
        percent: '9.16%' },
    { counts: 66604,
        rgb: '57,20,15',
        hex: '39140F',
        percentage: 7.23,
        percent: '7.23%' },
    { counts: 12385,
        rgb: '189,113,141',
        hex: 'BD718D',
        percentage: 1.34,
        percent: '1.34%' }
    ]
}
```

#### Test Image
![Test Image](https://github.com/cyrilis/colors-palette/raw/master/test.jpg)
#### Example
![Demo Image](https://github.com/cyrilis/colors-palette/raw/master/test_demo.png)


