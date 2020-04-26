# TinTin++ Return of the Shadow Profile

Scripts for playing [Return of the Shadow][rots] with [TinTin++][tintin] and [tmux][tmux].

## Contents
1. [Installation](#installation)
1. [Quick Start](#quick-start)
1. [General](#general)
1. [Chat Window](#chat-window)
1. [Mapping](#mapping)
1. [Spams](#spams)
1. [Exits](#exists)
1. [Documentation](#docs)

## Installation
1. Clone or download this repository.
1. Install [TinTin++][tintin]
1. Install [tmux][tmux]
## Quick Start
1. Run `./rots.sh`
1. Hit `~` to connect to [rotsmud.org][rots]
1. Exit with `#end`
## General

## [Chat Window](/commands/lazyness/social.tin)

All `say`, `group-say`, `chat`, `narrate`, `tell`, and `whisper` commands are captured and sent to the chat window.

**NOTE**: The chat log isn't purged between sessions, to clear type `clearLog` and TinTin++ will execute the truncate command on it.

## Mapping

## [Spams][paths]
Travel between two pre-determined locations. All spams have an inverse spams.
E.g. `CatsToFidds` would also have `FiddsToCats`

### Using Paths
To run from point a to point b use the command `run {PathName}` with the approiate variable name in [paths.tin][paths]
E.g. `run CatsToFidds` will take you from the entrance of Catacombs to Fidds' Inn.

**NOTE**: Most of the spams try to stay on the road for Beorning optimization.

If want to load up the path but don't want to spam their you can use `load {PathName}` and hit the key `\` to move forward in the next step in the path.
E.g. `load CatsToFidds` will load the path from the entrance of Catacombs to Fidds' Inn and to step through it press `\`.

### Creating New Paths
When wanting to create a path use the command `create path` this will open the class paths, create a path, start a path, and all the path actions to avoid adding unintended directions from wrong incorrect directions and such.

After you have the path mapped out use the command `path stop` to stop mapping out the directions.

If you want to save the path use the command `save path {forward direction} {backword direction}` for saving the forward and backwards path to a variable and `save paths` to write out to [paths.tin][paths]

E.g. if you map Catacombs to Fidds' Inn and want to save it type `save path CatsToFidds FiddsToCats` 

### Paths
* CatsToFidds
* CrossroadsToFidds
* DFRToMntVillage
* DFRToTroy
* EasterlingsToFidds
* FiddsToCats
* FiddsToEasterlings
* LTToTaben
* LTToThranduil
* MntVillageToDFR
* RCToVinya
* TabenToLT
* ThranduilToLT
* TroyToDFR
* VinyaToRC

## Exits

## Documentation


## TODO
* [ ] Set up follower path making
* [ ] Add spams to common super mobs
* [ ] Add docs to items and smob information



[rots]: https://rotsmud.org/
[tintin]: http://tintin.sourceforge.net
[tmux]: https://tmux.github.io
[paths]: /commands/exits/paths.tin
