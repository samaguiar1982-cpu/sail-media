# sail-media

Public static asset host for aguiarinjurylawyers.com registry elements,
served by Render from this repo's `trucking-guides/` folder.

Images are generated illustrations (fictional, simulated) for the trucking
interactive guides. `fetch.sh` runs at build time and pulls the binaries
listed in `urls.tsv` onto the Render disk; the binaries themselves are not
committed to git.
