-- Acme editor color scheme
local lexers = vis.lexers

local colors = {
	['base00'] = '#2E3440',
	['base01'] = '#3B4252',
	['base02'] = '#434C5E',
	['base03'] = '#4C566A',
	['base04'] = '#D8DEE9',
	['base05'] = '#E5E9F0',
	['base06'] = '#ECEFF4',
	['base07'] = '#8FBCBB',
	['base08'] = '#88C0D0',
	['base09'] = '#81A1C1',
	['base0A'] = '#5E81AC',
	['base0B'] = '#BF616A',
	['base0C'] = '#D08770',
	['base0D'] = '#EBCB8B',
	['base0E'] = '#A3BE8C',
	['base0F'] = '#B48EAD',
}

lexers.colors = colors

local fg = ',fore:'..colors.base05..','
local bg = ',back:'..colors.base00..','

lexers.STYLE_COMMENT = 'fore:'..colors.base03..',italics'
lexers.STYLE_DEFAULT = bg..fg
lexers.STYLE_NOTHING = bg
lexers.STYLE_IDENTIFIER = 'fore:'..fg
lexers.STYLE_NUMBER = 'fore:'..fg
lexers.STYLE_REGEX = 'fore:'..fg
lexers.STYLE_VARIABLE = 'fore:'..fg
lexers.STYLE_CLASS = 'fore:'..fg
lexers.STYLE_TYPE = 'fore:'..fg
lexers.STYLE_LABEL = 'fore:'..fg
lexers.STYLE_FUNCTION = 'fore:'..fg..',bold'
lexers.STYLE_DEFINITION = 'fore:'..fg
lexers.STYLE_KEYWORD = 'fore:'..fg
lexers.STYLE_OPERATOR = 'fore:'..fg
lexers.STYLE_TAG = 'fore:'..fg
lexers.STYLE_PREPROCESSOR = 'fore:'..fg
lexers.STYLE_ERROR = 'fore:'..fg..',italics'
lexers.STYLE_STRING = 'fore:'..fg
lexers.STYLE_EMBEDDED = 'fore:'..fg
lexers.STYLE_CONSTANT = 'fore:'..fg


lexers.STYLE_LINENUMBER = 'fore:'..colors.base02..',back:'..colors.base00
lexers.STYLE_CURSOR = 'fore:'..colors.base00..',back:'..colors.base05
lexers.STYLE_CURSOR_PRIMARY = 'fore:'..colors.base00..',back:'..colors.base05
lexers.STYLE_CURSOR_LINE = 'back:'..colors.base01
lexers.STYLE_COLOR_COLUMN = 'back:'..colors.base01
lexers.STYLE_SELECTION = 'back:'..colors.base02
lexers.STYLE_STATUS = 'fore:'..colors.base04..',back:'..colors.base01
lexers.STYLE_STATUS_FOCUSED = 'fore:'..colors.base09..',back:'..colors.base01
lexers.STYLE_SEPARATOR = lexers.STYLE_DEFAULT
lexers.STYLE_INFO = 'fore:default,back:default,bold'
lexers.STYLE_EOF = ''

