import sublime_plugin


class GoToFileCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        view = self.view
        window = view.window()
        regions = view.sel()
        if len(regions) == 1:
            if not regions[0].empty():
                window.run_command("show_overlay",
                                   {"overlay": "goto", "show_files": True,
                                   "text": view.substr(regions[0])})
                return
        window.run_command("show_overlay", {
                            "overlay": "goto", "show_files": True})


class GoToSymbolCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        view = self.view
        window = view.window()
        regions = view.sel()
        if len(regions) == 1:
            if not regions[0].empty():
                window.run_command("show_overlay",
                                   {"overlay": "goto",
                                   "text": "@" + view.substr(regions[0])})
                return
        window.run_command("show_overlay", {"overlay": "goto", "text": "@"})
