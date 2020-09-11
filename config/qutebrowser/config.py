c.auto_save.session = False
c.content.javascript.alert = True

config.set("zoom.default", 120)
c.tabs.favicons.show = "always"
c.colors.webpage.prefers_color_scheme_dark

c.tabs.indicator.width = 0

c.url.searchengines = {"DEFAULT": "https://duckduckgo.com/?q={}"}
c.url.start_pages = "https://start.duckduckgo.com"

c.fonts.default_family = "JetBrains Mono"
c.fonts.default_size = "12pt"

c.tabs.background = True

config.set("content.javascript.enabled", True, "file://*")
config.set("content.javascript.enabled", True, "chrome://*/*")
config.set("content.javascript.enabled", True, "qute://*/*")


# web fonts
c.fonts.web.family.serif = "Liberation Serif"
c.fonts.web.family.sans_serif = "Liberation Sans"
c.fonts.web.family.standard = "Liberation Sans"
c.fonts.web.family.fixed = "JetBrains Mono"
