def draw_button(label_text, x, y, foreground_color, is_dark_mode)
    buttonSchematics = ButtonSchematics.new(label_text, x, y, foreground_color)
    if is_dark_mode
        buttonSchematics.darkModeColor
    else
        buttonSchematics.lightModeColor
    end
end

class ButtonSchematics
    attr_reader :label_text, :x, :y, :foreground_color
    def initialize(label_text, x, y, foreground_color)
        @label_text = label_text
        @x = x
        @y = y
        @foreground_color
    end

    def darkModeColor
        # darken foreground color for dark mode
        paint(label_text, x, y, foreground_color - 10, '#111111')
    end
    
    def lightModeColor
        # lighten foreground color for non-dark mode
        paint(label_text, x, y, foreground_color + 10, '#E0E0E0')
    end
end