#!/bin/bash
# create multiresolution windows icon
ICON_SRC=../../src/qt/res/icons/RCoinUSA.png
ICON_DST=../../src/qt/res/icons/RCoinUSA.ico
convert ${ICON_SRC} -resize 16x16 RCoinUSA-16.png
convert ${ICON_SRC} -resize 32x32 RCoinUSA-32.png
convert ${ICON_SRC} -resize 48x48 RCoinUSA-48.png
convert RCoinUSA-48.png RCoinUSA-32.png RCoinUSA-16.png ${ICON_DST}

