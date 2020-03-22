c.auto_save.session = True
c.content.javascript.alert = True

config.set("zoom.default", 120)
c.tabs.favicons.show = "always"

c.tabs.indicator.width = 0

c.url.searchengines = {"DEFAULT": "https://duckduckgo.com/?q={}"}
c.url.start_pages = "https://start.duckduckgo.com"

c.fonts.default_family = "mono"
c.fonts.default_size = "12pt"

c.tabs.background = True

config.set("content.javascript.enabled", True, "file://*")
config.set("content.javascript.enabled", True, "chrome://*/*")
config.set("content.javascript.enabled", True, "qute://*/*")
