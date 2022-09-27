config.load_autoconfig(False)
c.auto_save.session = False
c.content.javascript.alert = True
c.colors.webpage.preferred_color_scheme = "dark"

config.set("zoom.default", 120)

c.tabs.indicator.width = 0

c.url.searchengines = {"DEFAULT": "https://duckduckgo.com/?q={}"}
c.url.start_pages = "https://start.duckduckgo.com"

#c.content.user_stylesheets = ["./style.css"]
c.fonts.default_family = "Fira Sans"
c.fonts.default_size = "12pt"

config.set("content.javascript.enabled", True, "file://*")
config.set("content.javascript.enabled", True, "chrome://*/*")
config.set("content.javascript.enabled", True, "qute://*/*")

# web fonts
c.fonts.web.family.serif = "Libertinus Serif"
c.fonts.web.family.sans_serif = "Fira Sans"
c.fonts.web.family.standard = "Fira Sans"
c.fonts.web.family.fixed = "Go Mono"

config.source('nord-qutebrowser.py')
