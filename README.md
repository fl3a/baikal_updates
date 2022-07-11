# baikal_updates

**Check for available updates of the [Baïkal CalDAV and CardDAV server](
https://sabre.io/baikal/)**   
by comparing *configured_version* from your *config/baikal.yaml* 
with the version of the [latest release from Github](
https://api.github.com/repos/sabre-io/Baikal/releases/latest).

If *configured_version* and latest version differ,    
it prints out a message with *configured_version*, latest release *version* 
and field *body*, which is used for release notes and changes.

E.g. output, *configured_version* is *0.9.1* while *0.9.2* is available:
```
Baïkal update available:
 - Running 0.9.1 -> 0.9.2 is available
Release notes:
 - Fix php warning in admin interface
 ```

## Usage

Excecute the script itself with  */path/to/baikal* as argument
```
baikal_updates.sh /path/to/baikal
```

For continuous checks via cron, e.g.:
```
MAILTO=mail@example.com
42 23 * * * baikal_updates.sh /path/to/baikal
```

## Requirements

- [curl](https://curl.se/)
- [jq](https://stedolan.github.io/jq/) - jq is a lightweight and flexible command-line JSON processor.
