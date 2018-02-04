#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

saturnine_lines=$(xmllint --xpath '//SPEECH[SPEAKER[text()="SATURNINUS"]]' shakespeare-material/texts/moby/titus_andronicus_moby.xml)

# For every line in the parsed XML output
# emit the next relevant formatting options for
for line in $saturnine_lines; do
  if [[ $line == '<SPEAKER>SATURNINUS</SPEAKER>' ]]; then
    echo '%'
  elif [[ $line == '</SPEECH><SPEECH>' || $line == '</SPEECH>' ]]; then
    echo ''
    echo '    -- SATURNINE, Titus Andronicus'
  else
    echo $(echo "$line" | xmllint --xpath '//LINE/text()' - )
  fi
done
