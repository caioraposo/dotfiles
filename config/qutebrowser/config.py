config.load_autoconfig()
c.auto_save.session = True
c.content.javascript.alert = True
c.colors.webpage.preferred_color_scheme = "dark"

config.set("zoom.default", 110)

c.tabs.indicator.width = 0

c.url.searchengines = {"DEFAULT": "https://duckduckgo.com/?q={}"}
c.url.start_pages = "https://start.duckduckgo.com"

#c.content.user_stylesheets = ["./style.css"]
c.fonts.default_family = "sans-serif"
c.fonts.default_size = "12pt"

config.set("content.javascript.enabled", True, "file://*")
config.set("content.javascript.enabled", True, "chrome://*/*")
config.set("content.javascript.enabled", True, "qute://*/*")

# web fonts
c.fonts.web.family.serif = "Libertinus Serif"
c.fonts.web.family.sans_serif = "FiraGO"
c.fonts.web.family.standard = "FiraGO"
c.fonts.web.family.fixed = "Go Mono"

config.source('gruvbox-dark-qutebrowser.py')

c.hints.chars = "aoeuidhtns"

# Minimizing fingerprinting
#config.set("content.headers.accept_language", "en-US,en;q=0.5")
#config.set("content.headers.custom", {"accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"})
#config.set("content.canvas_reading", False)
