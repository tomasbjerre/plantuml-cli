#!/bin/bash

version=$(node -p -e "require('./package.json').version")
echo releasing $version

rm -rf build \
 && mkdir build \
 && wget –q https://github.com/plantuml/plantuml/releases/download/v$version/plantuml-$version.jar -P build

FILE=build/plantuml-$version.jar
if [ -f "$FILE" ]; then
 echo JAR downloaded ok
else
 echo JAR not downloaded ok
 exit
fi

#npm version prerelease --preid=alpha
rm -f package-lock.json
npm install \
 && npm publish \
 && git commit -a -m "releasing $version" \
 && git tag $version \
 && git push -u origin --tags \
 && git push
