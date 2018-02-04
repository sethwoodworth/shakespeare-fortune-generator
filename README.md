# Shakespeare fortune generator
Scripts that generate fortune files from Shakespeare

## Usage

    fortune ./

> Why art thou thus attired, Andronicus?
>
>    -- SATURNINE, Titus Andronicus


## Setup
This bash script expects you are on a debian variant.
Docker would be a great way to run this otherwise.

### Get this repo

    git clone https://github.com/sethwoodworth/shakespeare-fortune-generator.git
    cd shakespeare-fortune-generator
    git submodule update --init

### Required packages
You need `xmllint`.

    sudo apt install libxml2-utils

## Generating files
To generate `saturnine.fortune` and `saturnine.fortune.dat`:

    ./run.sh


