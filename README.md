# ios-wwdc23

## Config

DEVELOPMENT_TEAM: 
- Add DEVELOPMENT_TEAM in (Xcode menu → Preferences… → Locations → Custom Paths)

Source : https://stackoverflow.com/a/40424891

## Troubleshooting

### Previews

If previews display a message like : "Cannot preview in this file -- active scheme does not build this file."
Try theses :
- `sudo xcodebuild -license`
- clean build folder
