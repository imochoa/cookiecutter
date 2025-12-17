# Exploration
```bash
rg --regexp '^\s*sprite '


# called with <name>(){} or <name>()
rg --regexp '^\s*!define '
rg --regexp '^\s*!define \S+\([^)]+\)'  --only-matching

jq -Rs '
  split("\n") |
  map(select(length > 0) | split(":!define ") | {col1: .[0], col2: .[1]}) |
  group_by(.col1)[] | {(.[0].col1): ([.[] | .col2] | sort )}
' defines.txt


rg --regexp '^\s*!procedure '
rg --regexp '^\s*!function '

```

# Define is getting deprecated

Use:
- `!define should be replaced by return !function`
- `!definelong should be replaced by !procedure`


params:
- `p_alias`: used as the variable name for connections
- `p_label`: displayed label on the Top
- `p_techn`: [bottom in curive]
- `p_descr`: description text, Optional!

`p_` always refers to a AWSParticipant!!! (`participant`)
  - only for
    - timing ???
    - sequence
`e_` AWSEntity (`rectangle`)



# [stdlib structure](https://crashedmind.github.io/PlantUMLHitchhikersGuide/Stdlib/StandardisingStdLib2.html)

## structure
PlantUML stdlib
- library (e.g. awslib)
  - library category (e.g. awslib/ARVR)
    - sprite (e.g. awslib/ARVR/Sumerian)
    - `all.puml` (e.g. `awslib/ARVR/all.puml`)

## 2.1. Plantuml Stdlib Terminology
Plantuml Stdlib Terminology

Term
	

Meaning

PlantUML Stdlib
	

Plantuml Standard Library

    i.e. https://github.com/plantuml/plantuml-stdlib

Library
	

Plantuml stdlib consists of several icon libraries

    e.g. awslib, elastic, azure…

Category
	

Each icon library consists one or more icons categories

    Category is a subdir / grouping of icons within an icon library

    some libraries don’t sub-divide the icons - so the category is the library

Icon
	

Each category consists one or more icons

    An Icon is a decorated sprite e.g. a coloured sprite in a rectangle with all the text and colour

Macro
	

The pre-processor code applied to a sprite

    i.e. the define/definelong or function/procedure associated with a sprite to make it an icon

    The call from the user puml file is a macro.

Sprite
	

A 2D bitmap

Diagram
	

Everything you see. Everything represented by the puml file

Style
	

A collection of attributes that specify the appearance for a single icon.

        A style can specify attributes such as font color, font size, background color, and much more.

        Optional.

    If present, a style takes precedence over a theme

Theme
	

A type of style that’s applied to the entire diagram - not just an individual icon.

    A collection of coordinated styles that determine the color, background attributes, and the fonts used on a layout.

    Themes also enhance the appearance of a layout and give all your layouts a consistent look.

    A theme does not control the placement or behavior of fields or objects on a layout.

Layout
	

An arrangement of fields, objects, pictures, and layout parts that represents the way information is organized and presented.