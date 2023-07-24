# My Shaders

Collection of helpful 2D shaders for the Godot game engine

## The shaders

They are all CanvasItem shaders, that is, 2D shaders.

The shaders are in the folder:

    /shaders

There are 2 classes:

### Object Shaders

Meant to be used in a Sprite or any other kind of object with Texture.

- Add a ShaderMaterial to your object.
- Add the shader to the ShaderMaterial
- Configure the settings if any

### Postprocessing

Meant to be used as a final screen effect.

They have the suffix `_postprocessing` in the file name.

- Add a `ColorRect` to your scene.
- _Optional_: You may want to put it in a separated `CanvasLayer` to avoid Camera movements.
- Add a ShaderMaterial to the `ColorRect`.
- - Add the shader to the ShaderMaterial
- Configure the settings if any

## The Demo Scene

This scene:

    /scenes/demo/demo.tscn

Works as a playground to test all the shaders. Use the right panel to select the shader. Each shader has its own controls that will be visible when the shader is active.

## The list

### Pattern Blend

Postprocessing shader to blend the Screen with a Texture Pattern using any of these blend modes:

- Multiply (1)
- Screen (2)
- Darken (3)
- Lighten (4)
- Difference (5)
- Exclusion (6)
- Overlay (7)
- Hard (8)
- Soft (9)
- Color (10)
- Linear (11)
- Color (12)
- Linear (13)

#### Options

- **modulate_color**: Color modulation to apply to the *Pattern Texture* before blending
- **pattern_texture**: The *Pattern Texture* to blend
- **pattern_scale**: The scale of the *Pattern Texture*
- **pattern_offset**: The offset of the *Pattern Texture*
- **inverted**: Color invert of the *Pattern Texture* before blending
- **blend_mode**: The *Blend Filter* to use (1 to 13, in the order of the above list)

## Acknowledgements

For the assets:

- https://www.kenney.nl/

For the patterns used in the Pattern Blend demo:

- https://unsplash.com/photos/i0kQM6OdeVc
- https://unsplash.com/photos/OPyoU4zCwWI
- https://www.rawpixel.com/image/6129082/paper-texture-background-old-yellow-design

For the shaders inspiration:

- https://godotshaders.com/snippet/blending-modes/
