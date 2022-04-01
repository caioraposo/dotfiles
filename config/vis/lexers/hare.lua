-- ? LPeg lexer.

local l = require('lexer')
local token, word_match = l.token, l.word_match
local P, R, S = lpeg.P, lpeg.R, lpeg.S

local M = {_NAME = 'hare'}

local builtin = token(l.FUNCTION, word_match{
	'len', 'offset', 'free', 'alloc', 'assert', 'append', 'insert',
	'abort', 'delete',
})

local comment = token(l.COMMENT, '//' * l.nonnewline_esc^0)

local constant = token(l.CONSTANT, word_match{
	'true', 'false',
})

local identifier = token(l.IDENTIFIER, l.word)

local keyword = token(l.KEYWORD, word_match{
	'let', 'const', 'fn', 'def', 'static', 'export', 'defer', 'for',
	'return', 'break', 'continue', 'if', 'else', 'match', 'switch',
	'type', 'yield', 'case',
})

local operator = token(l.OPERATOR, word_match{
	'is', 'as', "..", "...",
} + S('+-/*%<>~!=^&|?~:;,.()[]{}'))

local hex_digit = R("09") + R("af") + R("AF")
local integer_suffix = word_match{
	"i", "u", "z", "i8", "i16", "i32", "i64", "u8", "u16", "u32",
	"u64",
}
local integer_constant = (P("0x") * hex_digit^1
	+ P("0o") * R("07")^1
	+ P("0b") * R("01")^1
	+ R("09")^1) * integer_suffix^-1
local number = token(l.NUMBER, integer_constant)

local preproc = token(l.PREPROCESSOR,
	l.starts_line('use ') * l.nonnewline_esc^0 * lpeg.B(';')
	+ '@' * R("az")^1)

local named_escape = P('\\0') + '\\a' + '\\b' + '\\f' + '\\n' + '\\r' + '\\v' + '\\\\' + '\\\'' + '\\"'
local escape_sequence = named_escape
	+ '\\x' * hex_digit * hex_digit
	+ '\\u' * hex_digit * hex_digit * hex_digit * hex_digit
local rune = escape_sequence + l.nonnewline_esc-S("\\'")
local string_char = escape_sequence + l.nonnewline_esc-S('\\"')
local string = token(l.STRING, "'" * rune * "'" + '"' * string_char^0 * '"')

-- TODO: highlight size correctly both as keyword and type
local type = token(l.TYPE, word_match{
	'u8', 'u16', 'u32', 'u64', 'i8', 'i16', 'i32', 'i64', 'uint',
	'int', 'uintptr', 'size', 'f32', 'f64', 'bool', 'char', 'rune',
	'str', 'void', 'struct', 'union', 'enum', 'nullable', 'null',
})

local ws = token(l.WHITESPACE, l.space^1)

M._rules = {
	{'builtin', builtin},
	{'constant', constant},
	{'comment', comment},
	{'keyword', keyword},
	{'number', number},
	{'operator', operator},
	{'preproc', preproc},
	{'string', string},
	{'type', type},
	{'whitespace', ws},

	{'identifier', identifier},
}

return M
