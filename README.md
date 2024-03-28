# roblox-template
This is a Roblox game repository template for Github projects. Be sure to change `roblox-template` names to the name of your project.

# Setup
This repository is set up as a template. When creating a new repository for a project you can import this repository to use it as a base.

This repository is set up with several preset packages and scripts which are detailed below.

## Rojo
This template is set up to use Rojo as a file sync for Roblox Studio. It is recommended to use the Rojo plugin for VSCode to do this. Please see https://rojo.space/ for more information on Rojo.

## Wally
This template uses Wally as a package manager. To install Wally, and for any other Wally information, please go to https://wally.run/.

With Wally installed, simply run `wally install` to automatically install and update any packages associated with your project.

New Wally packages can be installed by adding a new entry to the `wally.toml` file. This template organizes Wally packages into `ServerPackages` for packages to be exclusively used by the server and `Packages` for all other shared packages.

## Knit
This template is set up to automatically run with Knit. For more information about Knit please go to https://sleitnick.github.io/Knit/.

This template comes with two scripts which automatically load any Knit Services or Controllers. `StarterPlayer.client.lua` loads any client controllers which are stored in the `client` folder in the ReplicatedStorage folder. `KnitServer.server.lua` loads any server services which are stored in the `shared` folder in the ReplicatedStorage. When creating Controllers or Services you need only to name them and locate them correctly in order for them to function.

# Fusion
This template is set up to work with Fusion and the Hoarcekat plugin for UI previews. For more information on Fusion please go to https://elttob.uk/Fusion/0.2/. For more information on Hoarcekat please go to https://github.com/Kampfkarren/hoarcekat.

## Client scripts location
By default, this template locates the client scripts in the ReplicatedStorage and runs them with Knit. This is done so that Hoarcekat can load any client scripts when running UI previews. 

# Use without Knit
If you would like to use this template without Knit you need to delete the `StarterPlayer.client.lua` script and the `StarterPlayer.client.lua`. Please note that doing this will also mean you will need to relocate your client scripts.

## Relocating client scripts
In order to have your client scripts run without needing to be loaded by Knit you must locate them in the `starterplayer` folder. If you want to move your `client` folder to the StarterPlayer, or to any other location, you must update your `default.project.json` StarerPlayer section to this:
```json
  "StarterPlayer": {
      "StarterPlayerScripts": {
        "Source": {
          "$path": "src/starterplayer"
        }
      }
    }
```

# List of included Wally packages

## Knit
See the Knit section above.

## Fusion
See the Fusion section above.

## Signal
A useful package for generic events. See here for more information https://sleitnick.github.io/RbxUtil/api/Signal/.

## TableUtil
A collection of useful table functions. Includes things like reconciliation, sorting, etc. See documentation here https://sleitnick.github.io/RbxUtil/api/TableUtil.

## Janitor
A simple garbage collector for Roblox. Useful for cleaning up objects and connections. See here for more information https://howmanysmall.github.io/Janitor/.

## ZonePlus
A module which allows for the construction of dynamic zones and areas in the Workspace. Players and parts within the boundary of a zone can be easily tracked. See documentation here https://1foreverhd.github.io/ZonePlus/.

## ProfileService
The current standard for DataStores on Roblox. Includes features such as session locking, auto-saving, and much more. See documentation here https://madstudioroblox.github.io/ProfileService/. 
