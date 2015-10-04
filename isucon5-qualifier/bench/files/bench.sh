#!/bin/sh

. /home/isucon/env.bench.sh
TARGET_IP="${1:-127.0.0.1}" # CHANGEME

(
  cd /home/isucon/isucon5-qualify/bench
  cat /home/isucon/isucon5-qualify/webapp/script/testsets/testsets.json | \
    ruby -rjson -e "puts JSON.parse(STDIN.read).sample.to_json" | \
    gradle -q run -Pargs="net.isucon.isucon5q.bench.scenario.Isucon5Qualification ${TARGET_IP}" | \
    ruby -rjson -r/home/isucon/isucon5-qualify/eventapp/lib/score -e "r=JSON.parse(STDIN.read);puts Isucon5Portal::Score.calculate(r);puts r['responses'];r['violations'].each{|v| puts v['description']}"
)
