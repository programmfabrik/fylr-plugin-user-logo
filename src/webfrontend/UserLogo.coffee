CUI.ready ->     
    # check if user has a logo and replace logo from baseconfig with it
    if ez5.session?.user?.data?.user?.picture
      # replace the logo with the user picture
      ez5.session.config.base.system.config.appearance.logo = ez5.session.user.data.user.picture
      # update the logo in header
      ez5.start.updateLogo()

    # show the logo (its hidden in the css). This can be default logo, logo from baseconfig or the user logo
    setTimeout ->
      logo = document.querySelector('.ez5-root-layout-top .ez-config-logo .ez-logo')
      if logo
        logo.classList.add('user-logo-visible')
    , 1000