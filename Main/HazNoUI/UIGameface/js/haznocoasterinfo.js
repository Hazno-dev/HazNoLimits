import { RidePrestigeInfoPanel } from '/js/project/modules/infoPanel/components/RidePrestigeInfoPanel.js';

import('/js/common/lib/preact.js').then((preact) => {
    const originalH = preact.h;

    // Idempotency: patch only once
    let patchedCtor = null;

    // Helper: decide if a type is *the* inner component we care about
    function isInnerCoasterPanelType(type) {
        // We’re looking for a class component whose prototype owns `_tabData`
        // (your inner class `_CoasterRidesInfoPanel`).
        return typeof type === 'function'
            && type.prototype
            && Object.prototype.hasOwnProperty.call(type.prototype, '_tabData')
            && Array.isArray(type.prototype._tabData);
    }

    // 2) Intercept element creation
    preact.h = function (type, props, ...children) {
        if (!patchedCtor && isInnerCoasterPanelType(type)) {
            try {
                const td = type.prototype._tabData;

                // === YOUR MUTATIONS HERE ===
                // Examples:

                // A) Insert a new tab (dummy component here—replace with your own)
                const HazCustomTab = function HazCustomTab() { return null; };
                td.push({
                    tabName: 'PrestigeTOO',
                    tooltip: '[InfoPanel_Prestige]',
                    icon: 'img/icons/prestige.svg',
                    content: RidePrestigeInfoPanel,
                    enabledFunc: () => true,
                });

                // B) Rename an existing tab:
                const testing = td.find(t => t.tabName === 'Testing');
                if (testing) testing.tabName = 'Testing (Patched)';

                // C) Reorder: move “Finances” to the front
                const idx = td.findIndex(t => t.tabName === 'Finances');
                if (idx > 0) td.unshift(td.splice(idx, 1)[0]);

                // D) Remove a tab:
                // const i = td.findIndex(t => t.tabName === 'Help');
                // if (i >= 0) td.splice(i, 1);

                patchedCtor = type; // remember we’re done
                console.debug('[HazPatch] Coaster inner panel _tabData mutated.');
            } catch (e) {
                console.warn('[HazPatch] _tabData patch failed:', e);
            }
        }

        // Continue normal element creation
        return originalH(type, props, ...children);
    };
}).catch((e) => console.warn('[HazPatch] preact import failed:', e));