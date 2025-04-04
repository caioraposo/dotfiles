-- nord-vis by Caio Raposo <caioraposo@disroot.org>
-- Nord scheme by arcticicestudio

local lexers = vis.lexers

local colors = {
	nord00 = '#2E3440',
	nord01 = '#3B4252',
	nord02 = '#434C5E',
	nord03 = '#4C566A',
	nord04 = '#D8DEE9',
	nord05 = '#E5E9F0',
	nord06 = '#ECEFF4',
	nord07 = '#8FBCBB',
	nord08 = '#88C0D0',
	nord09 = '#81A1C1',
	nord0A = '#5E81AC',
	nord0B = '#BF616A',
	nord0C = '#D08770',
	nord0D = '#EBCB8B',
	nord0E = '#A3BE8C',
	nord0F = '#B48EAD',
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

lexers.STYLE_LINENUMBER = 'fore:'..colors.nord03
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
lexers.STYLE_EOF = 'fore:'..colors.nord03

-- lexer specific styles

-- Diff
lexers.STYLE_ADDITION = 'fore:green'
lexers.STYLE_DELETION = 'fore:red'
lexers.STYLE_CHANGE = 'fore:yellow'

-- CSS
lexers.STYLE_PROPERTY = lexers.STYLE_ATTRIBUTE
lexers.STYLE_PSEUDOCLASS = ''
lexers.STYLE_PSEUDOELEMENT = ''

-- HTML
lexers.STYLE_TAG_UNKNOWN = lexers.STYLE_TAG .. ',italics'
lexers.STYLE_TAG_SINGLE = lexers.STYLE_TAG
lexers.STYLE_TAG_DOCTYPE = lexers.STYLE_TAG .. ',bold'
lexers.STYLE_ATTRIBUTE_UNKNOWN = lexers.STYLE_ATTRIBUTE .. ',italics'

-- Latex, TeX, and Texinfo
lexers.STYLE_COMMAND = lexers.STYLE_KEYWORD
lexers.STYLE_COMMAND_SECTION = lexers.STYLE_CLASS
lexers.STYLE_ENVIRONMENT = lexers.STYLE_TYPE
lexers.STYLE_ENVIRONMENT_MATH = lexers.STYLE_NUMBER

-- Makefile
lexers.STYLE_TARGET = ''

-- Markdown
lexers.STYLE_HR = ''
for i = 1,6 do lexers['STYLE_HEADING_H'..i] = lexers.STYLE_HEADING end
lexers.STYLE_BOLD = 'bold'
lexers.STYLE_ITALIC = 'italics'
lexers.STYLE_LIST = lexers.STYLE_KEYWORD
lexers.STYLE_LINK = lexers.STYLE_KEYWORD
lexers.STYLE_REFERENCE = lexers.STYLE_KEYWORD
lexers.STYLE_CODE = lexers.STYLE_EMBEDDED

-- Output
lexers.STYE_FILENAME = ''
lexers.STYLE_LINE = ''
lexers.STYLE_COLUMN = ''
lexers.STYLE_MESSAGE = ''

-- Python
lexers.STYLE_KEYWORD_SOFT = ''

-- Taskpaper
lexers.STYLE_NOTE = ''
lexers.STYLE_TAG_EXTENDED = ''
lexers.STYLE_TAG_DAY = 'fore:yellow'
lexers.STYLE_TAG_OVERDUE = 'fore:red'
lexers.STYLE_TAG_PLAIN = ''

-- XML
lexers.STYLE_CDATA = ''

-- YAML
lexers.STYLE_ERROR_INDENT = 'back:red'

-- The following are temporary styles until their legacy lexers are migrated.

-- Antlr
lexers.STYLE_ACTION = ''

-- Clojure
lexers.STYLE_CLOJURE_KEYWORD = lexers.STYLE_TYPE
lexers.STYLE_CLOJURE_SYMBOL = lexers.STYLE_TYPE .. ',bold'

-- Crystal
--lexers.STYLE_SYMBOL = lexers.STYLE_STRING

-- Gleam
lexers.STYLE_MODULE = lexers.STYLE_CONSTANT
lexers.STYLE_DISCARD = lexers.STYLE_COMMENT

-- Icon
lexers.STYLE_SPECIAL_KEYWORD = lexers.STYLE_TYPE

-- jq
lexers.STYLE_FORMAT = lexers.STYLE_CONSTANT
lexers.STYLE_SYSVAR = lexers.STYLE_CONSTANT .. ',bold'

-- Julia
-- lexers.STYLE_SYMBOL = lexers.STYLE_STRING
lexers.STYLE_CHARACTER = lexers.STYLE_CONSTANT

-- Mediawiki
lexers.STYLE_BEHAVIOR_SWITCH = lexers.STYLE_KEYWORD

-- Moonscript
lexers.STYLE_TBL_KEY = lexers.STYLE_REGEX
lexers.STYLE_SELF_REF = lexers.STYLE_LABEL
lexers.STYLE_PROPER_IDENT = lexers.STYLE_CLASS
lexers.STYLE_FNDEF = lexers.STYLE_PREPROCESSOR
-- lexers.STYLE_SYMBOL = lexers.STYLE_EMBEDDED

-- reST
lexers.STYLE_LITERAL_BLOCK = lexers.STYLE_EMBEDDED
lexers.STYLE_FOOTNOTE_BLOCK = lexers.STYLE_LABEL
lexers.STYLE_CITATION_BLOCK = lexers.STYLE_LABEL
lexers.STYLE_LINK_BLOCK = lexers.STYLE_LABEL
lexers.STYLE_CODE_BLOCK = lexers.STYLE_CODE
lexers.STYLE_DIRECTIVE = lexers.STYLE_KEYWORD
lexers.STYLE_SPHINX_DIRECTIVE = lexers.STYLE_KEYWORD
lexers.STYLE_UNKNOWN_DIRECTIVE = lexers.STYLE_KEYWORD
lexers.STYLE_SUBSTITUTION = lexers.STYLE_VARIABLE
lexers.STYLE_INLINE_LITERAL = lexers.STYLE_EMBEDDED
lexers.STYLE_ROLE = lexers.STYLE_CLASS
lexers.STYLE_INTERPRETED = lexers.STYLE_STRING

-- txt2tags
lexers.STYLE_LINE = 'bold'
for i = 1,5 do lexers['STYLE_H'..i] = lexers.STYLE_HEADING end
lexers.STYLE_IMAGE = 'fore:green'
lexers.STYLE_STRIKE = 'italics'
lexers.STYLE_TAGGED = lexers.STYLE_EMBEDDED
lexers.STYLE_TAGGED_AREA = lexers.STYLE_EMBEDDED
lexers.STYLE_TABLE_SEP = 'fore:green'
lexers.STYLE_HEADER_CELL_CONTENT = 'fore:green'
