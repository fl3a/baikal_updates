# baikal_updates

**Check for available updates of the [Baïkal CalDAV and CardDAV server](https://sabre.io/baikal/)**   
by comparing current version with the version of the latest release from Github.

If current and latest version differ, it prints out a message with current and latest version
and field *body*, which is often used for release notes and changes

E.g. output: running *0.9.1* while *0.9.2* is available, showing release note of *0.9.2*:
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
