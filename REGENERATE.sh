
cd cbhtml-ethercalc \
  && cd node_modules/socialcalc \
  && npm run build \
&& \
cd ../.. \
  && make ETHERCALC_ARGS="--basepath /cell-block-html"
