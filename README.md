# sailor-md
Extension to Sailor that allows to read a markdown file and include on a view.

## Installation

    luarocks install sailor-md
    
## Usage example in a view of a Sailor application

```lua
<?lua
    local md = require "sailor.md"
    md.include("views/docs/my_file.md") -- or page:include_md("views/docs/my_file.md")
?>
```    
## Licence
   MIT
