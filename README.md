> This Plugin / Repo is being maintained by a community of developers.
There is no warranty given or bug fixing guarantee; especially not by
Programmfabrik GmbH. Please use the github issue tracking to report bugs
and self organize bug fixing. Feel free to directly contact the committing
developers.

# user-logo

This is a plugin for [fylr](https://docs.fylr.io/). The plugin is designed for instances where users from many different institutions work. Some institutions have their own logos and want to see them both in the top right corner of the header and in PDF printouts.
This plugin takes a user's image configured in /usermanager and replaces the logo (which can be either the fylr default logo or the logo specified in the base configuration).

## installation

The latest version of this plugin can be found [here](https://github.com/programmfabrik/fylr-plugin-user-logo/releases/latest/download/userLogo.zip).

The ZIP can be downloaded and installed using the plugin manager, or used directly (recommended).

Github has an overview page to get a list of [all releases](https://github.com/programmfabrik/fylr-plugin-user-logo/releases/).

## requirements
This plugin requires the fylr-plugin-pdf-creator. In order to use this Plugin, you need to enable the fylr-plugin-pdf-creator in your pluginmanager and / or the fylr.yml-configuration.

## configuration

There is no configuration in baseconfig or schema needed. 

Install the plugin [fylr-plugin-custom-l10n](https://github.com/programmfabrik/fylr-plugin-custom-l10n) and use it to change the term "admin.user.picture" to "Logo."

Now each user must or can be assigned their own logo or the logo of their institution in the user manager. The user can then no longer change their own image; this is left to the administrators.

There is also a new "User Logo" node in PDFCreator, which can be used to display the logo in PDF printouts. There are many CSS options for this node.

## sources

The source code of this plugin is managed in a git repository at <https://github.com/programmfabrik/fylr-plugin-user-logo>.
