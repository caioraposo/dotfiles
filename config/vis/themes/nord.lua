-- nord-vis by Caio Raposo
-- Nord scheme by arcticicestudio

local lexers = vis.lexers

local colors = {
	['nord00'] = '#2E3440',
	['nord01'] = '#3B4252',
	['nord02'] = '#434C5E',
	['nord03'] = '#4C566A',
	['nord04'] = '#D8DEE9',
	['nord05'] = '#E5E9F0',
	['nord06'] = '#ECEFF4',
	['nord07'] = '#8FBCBB',
	['nord08'] = '#88C0D0',
	['nord09'] = '#81A1C1',
	['nord0A'] = '#5E81AC',
	['nord0B'] = '#BF616A',
	['nord0C'] = '#D08770',
	['nord0D'] = '#EBCB8B',
	['nord0E'] = '#A3BE8C',
	['nord0F'] = '#B48EAD',
}

lexers.colors = colors

local fg = ',fore:'..colors.nord05..','
local bg = ',back:'..colors.nord00..','

lexers.STYLE_DEFAULT = bg..fg
lexers.STYLE_NOTHING = bg
lexers.STYLE_COMMENT = 'fore:'..colors.nord03..',italics'
lexers.STYLE_NUMBER = 'fore:'..colors.nord0F
lexers.STYLE_REGEX = 'fore:'..colors.nord0C
lexers.STYLE_IDENTIFIER = 'fore:'..colors.nord04
lexers.STYLE_VARIABLE = 'fore:'..colors.nord04
lexers.STYLE_CONSTANT = 'fore:'..colors.nord04..',bold'
lexers.STYLE_CLASS = 'fore:'..colors.nord07
lexers.STYLE_TYPE = 'fore:'..colors.nord07
lexers.STYLE_LABEL = 'fore:'..colors.nord07
lexers.STYLE_FUNCTION = 'fore:'..colors.nord08..',bold'
lexers.STYLE_DEFINITION = 'fore:'..colors.nord08
lexers.STYLE_KEYWORD = 'fore:'..colors.nord09
lexers.STYLE_OPERATOR = 'fore:'..colors.nord09
lexers.STYLE_TAG = 'fore:'..colors.nord09
lexers.STYLE_PREPROCESSOR = 'fore:'..colors.nord0A
lexers.STYLE_ERROR = 'fore:'..colors.nord0B..',italics'
lexers.STYLE_STRING = 'fore:'..colors.nord0E
lexers.STYLE_EMBEDDED = 'fore:'..colors.nord04

lexers.STYLE_LINENUMBER = 'fore:'..colors.nord02
lexers.STYLE_LINENUMBER_CURSOR = 'fore:'..colors.nord04
lexers.STYLE_CURSOR = 'reverse'
lexers.STYLE_CURSOR_PRIMARY = 'fore:'..colors.nord00..',back:'..colors.nord04
lexers.STYLE_CURSOR_LINE = 'back:'..colors.nord01
lexers.STYLE_COLOR_COLUMN = 'back:'..colors.nord01
lexers.STYLE_SELECTION = 'back:'..colors.nord02
lexers.STYLE_STATUS = 'fore:'..colors.nord04..',back:'..colors.nord01
lexers.STYLE_STATUS_FOCUSED = 'fore:'..colors.nord09..',back:'..colors.nord01
lexers.STYLE_SEPARATOR = lexers.STYLE_DEFAULT
lexers.STYLE_INFO = 'fore:default,back:default,bold'
lexers.STYLE_EOF = ''
