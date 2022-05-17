# K8s Architecture Icons — Illustrator File

The original illustrator file is located at `files/k8s-architecture-icons.ai`

## Considerations

- This illusrator file contains all icons each within their own artboard.
- The vector work is unexpanded, ensure future contributors can match exact stroke width or easily adjust rounding on smart corners

## How to mass export svg files

You need to export the artboards `File > Export > Export As.. >`

Choose the format to be `SVG (svg)`

Checkbox on Use Artboards

Save As: `.svg`

We don't provide a Save as name beacuse other it would be prefix to every file name.

Illustrator will prefix an underscore eg. (_service.svg) so we'll need to programmatically remove the prefix.

On Mac OS you can select all files, choose Rename and easily replace the prefix en-masse.