class ez5.UserLogoPdfCreatorNode extends ez5.PdfCreator.Node
    @getName: ->
        "user-logo-pdf-creator-node"

    __renderPdfContent: (opts) ->
        
        if not opts.object
          return null

        object = opts.object

        data = @getData()

        # get the user logo
        userLogo = ez5.session.user?.data?.user?.picture?.versions?.preview?.url
        
        # if no user logo, get the logo from baseconfig
        if not userLogo
            userLogo = ez5.session.config.base.system.config.appearance?.logo?.versions?.preview?.url

        # if no user logo and no logo from baseconfig -> use fylr-logo (base64)
        if not userLogo
            userLogo = 'data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIzLjAuMywgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkViZW5lXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IgoJIHZpZXdCb3g9IjAgMCA1Ny44IDM0LjEiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDU3LjggMzQuMTsiIHhtbDpzcGFjZT0icHJlc2VydmUiPgo8cGF0aCBkPSJNNDQuOSwyNy43VjguNmgzLjRjMC4zLDAsMC41LDAsMC43LDAuMWMwLjIsMCwwLjQsMC4xLDAuNSwwLjJzMC4yLDAuMiwwLjMsMC40YzAuMSwwLjIsMC4xLDAuNCwwLjIsMC42bDAuMywxLjgKCWMwLjctMS4xLDEuNS0xLjksMi40LTIuNmMwLjktMC42LDEuOC0wLjksMi45LTAuOWMwLjksMCwxLjYsMC4yLDIuMSwwLjZMNTYuOSwxM2MwLDAuMy0wLjEsMC40LTAuMywwLjVjLTAuMSwwLjEtMC4zLDAuMi0wLjYsMC4yCgljLTAuMiwwLTAuNSwwLTAuNy0wLjFjLTAuMy0wLjEtMC42LTAuMS0xLjEtMC4xYy0xLjcsMC0zLjUsMS4yLTMuNSwzLjRjMCwxLjIsMCwxMC43LDAsMTAuN0g0NC45eiIvPgo8cGF0aCBkPSJNMjcuMyw4LjZjLTAuMywwLTAuNiwwLjEtMC45LDAuM2MtMC4zLDAuMi0wLjUsMC40LTAuNiwwLjdMMjMsMTcuOGMtMC4xLDAuNC0wLjcsMS45LTAuOCwyLjNjLTAuMS0wLjQtMC41LTEuNS0wLjctMi4zCglsLTMuMS04LjNjLTAuMS0wLjMtMC4zLTAuNS0wLjUtMC43Yy0wLjItMC4yLTAuNi0wLjMtMS0wLjNsLTEwLjksMFY3LjdjMC0wLjYsMC4xLTEuMSwwLjItMS42YzAuMS0wLjQsMC4zLTAuNywwLjYtMQoJYzAuMy0wLjMsMC42LTAuNCwxLTAuNUM4LDQuNSw4LjUsNC41LDksNC41YzAuMiwwLDAuMywwLDAuNS0wLjFjMC4yLDAsMC4zLTAuMSwwLjUtMC4yYzAuMS0wLjEsMC4yLTAuMiwwLjMtMC4zCgljMC4xLTAuMSwwLjEtMC4zLDAuMi0wLjVsMC4xLTIuOGMtMC40LTAuMS0wLjgtMC4yLTEuMi0wLjNDOC45LDAuMyw4LjQsMC4zLDgsMC4zYy0xLjIsMC0yLjMsMC4yLTMuMiwwLjVDMy44LDEuMiwzLDEuNiwyLjMsMi4zCglDMS43LDIuOSwxLjIsMy43LDAuOCw0LjVjLTAuNCwwLjktMC41LDEuOS0wLjUsM3YxLjF2MTkuMUg2VjEyLjVoNy40TDE5LjMsMjZsLTMuNyw3LjhoNC4zYzAuNSwwLDAuOS0wLjEsMS4yLTAuMwoJYzAuMi0wLjIsMC41LTAuNSwwLjYtMC44TDMyLDguNkgyNy4zeiIvPgo8cGF0aCBkPSJNNDAuNywwLjN2MjcuNGgtNS43VjAuM0g0MC43eiIvPgo8cGF0aCBkPSJNMjcuOCwzMC42Yy0wLjcsMC0xLjQsMC41LTEuNywxLjFsLTAuOCwyaDI1LjN2LTMuMkwyNy44LDMwLjZ6Ii8+Cjwvc3ZnPgo='

        divElem = CUI.dom.element('div')
        divElem.innerHTML = '<div class="fylr-plugin-user-logo-pdf-creator-node-logo" style="width: 100%; height:100%; background-position: center center; background-size: contain; background-repeat: no-repeat; background-image: url(' + userLogo + ');"></div>'
        
        return divElem

    __getSettingsFields: ->
        fields = []
        return fields

    __getStyleSettings: ->
        return ["class-name", "background", "width", "height", "border", "position-absolute", "display", "top", "left", "right", "bottom", "margin-top", "margin-left", "margin-right", "margin-bottom", "padding-top", "padding-left", "padding-right", "padding-bottom"]

ez5.PdfCreator.plugins.registerPlugin(ez5.UserLogoPdfCreatorNode)