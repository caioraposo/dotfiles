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

config.source('gruvbox-dark-qutebrowser.py')

c.hints.chars = "aoeuidhtns"
