#!/bin/bash
# Created by Sam Gleske (@samrocketman on GitHub)
# Created Tue 24 May 2022 10:57:17 AM EDT
# MIT Licensed

# link https://github.com/endless-sky/endless-sky/blob/e7151f423136300f6b528a1717b3e2260aac9b52/.appveyor.yml
# ENVIRONMENT VARIABLES (can be overridden by user)
ENDLESS_SKY_URL="${ENDLESS_SKY_URL:-https://github.com/endless-sky/endless-sky/blob}"

while [ "$#" -gt 0 ]; do
  case "$1" in
    --commit)
      commit="${2:-}"
      shift
      shift
      ;;
    --tracefile)
      tracefile="${2:-}"
      shift
      shift
      ;;
  esac
done

if [ ! "$(wc -c <<< "${commit:-}")" -eq 41 ] || [ ! -f "${tracefile:-}" ]; then
  cat <<EOF
ERROR: you must provide two options.
  --commit "git long hash"
  --tracefile "path to a text file that exists"

Example Usage:

    ${0##*/} --commit e7151f423136300f6b528a1717b3e2260aac9b52 --tracefile ./file.dump

EOF
  exit 1
fi

echo "Stack trace:"
echo

grep -o '[^ ]\+\.cpp:[:0-9]\+' "${tracefile}" |
  awk -F: -v commit="${commit}" -v URL="${ENDLESS_SKY_URL:-}" \
    '{if(NR == 1){source=" (crash point)";}else{source=""};print "* "URL"/"commit"/source/"$1"#L"$2source}'
