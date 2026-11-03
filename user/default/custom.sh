#!/bin/bash
echo "=============================================="
echo "Running custom commands"
mv files/overview.js feeds/luci/applications/luci-app-attendedsysupgrade/htdocs/luci-static/resources/view/attendedsysupgrade/overview.js
mkdir -p feeds/luci/modules/luci-mod-status/patches
mv files/998-single-wiphy.patch feeds/luci/modules/luci-mod-status/patches/998-single-wiphy.patch
find feeds/luci/modules/luci-mod-dashboard -name 10_router.js -exec sed -i 's/router\.model\.value/router.release.value/' {} +
mkdir -p package/kernel/mt76/patches
mv files/999-mt7996-ft-sae-bip-batch.patch package/kernel/mt76/patches/999-mt7996-ft-sae-bip-batch.patch
echo "=============================================="
