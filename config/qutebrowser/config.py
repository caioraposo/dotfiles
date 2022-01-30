config.load_autoconfig(False)
c.auto_save.session = False
c.content.javascript.alert = True

config.set("zoom.default", 120)
c.tabs.favicons.show = "always"

c.tabs.indicator.width = 0

c.url.searchengines = {"DEFAULT": "https://duckduckgo.com/?q={}"}
c.url.start_pages = "https://start.duckduckgo.com"

c.fonts.default_family = "Fira Sans"
c.fonts.default_size = "12pt"

c.tabs.background = True

config.set("content.javascript.enabled", True, "file://*")
config.set("content.javascript.enabled", True, "chrome://*/*")
config.set("content.javascript.enabled", True, "qute://*/*")

# web fonts
c.fonts.web.family.serif = "IBM Plex Serif"
c.fonts.web.family.sans_serif = "Fira Sans"
c.fonts.web.family.standard = "Fira Sans"
c.fonts.web.family.fixed = "Go Mono"
