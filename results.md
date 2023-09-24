##

## info vs silent

info - real    0m9.309s
silent - real    0m8.168s



# NPM install (/wo package-lock.json, ./node-modules, clean cache)

real    0m19.540s
42212532 bytes

# NPM install (/wo. package-lock.json, /node-modules)

real    0m10.033s
11930 bytes


# NPM install (/wo. /node-modules, clean cache)

real    0m11.081s
13717046 bytes

# NPM install (/wo. /node-modules)

real    0m7.105s
12584 bytes

# NPM install (/wo. package-lock.json)

real    0m1.842s
11989

# NPM install (cache clear)

real    0m1.754s
227686

## Caching

npm install @babel/core@7.22.20 --no-save
npm install core-js@3.32.2 --no-save

real    0m8.026s
12560