#!/bin/bash
echo "=============================================="
echo "Running custom commands"
mv files/overview.js feeds/luci/applications/luci-app-attendedsysupgrade/htdocs/luci-static/resources/view/attendedsysupgrade/overview.js
mv files/902-pfring-fix.patch feeds/packages/libs/libpfring/patches/902-pfring-fix.patch
mkdir -p feeds/luci/modules/luci-mod-status/patches
mv files/998-single-wiphy.patch feeds/luci/modules/luci-mod-status/patches/998-single-wiphy.patch
mkdir -p package/kernel/mt76/patches
mv files/999-mt7996-ft-sae-bip-batch.patch package/kernel/mt76/patches/999-mt7996-ft-sae-bip-batch.patch
echo "=============================================="
