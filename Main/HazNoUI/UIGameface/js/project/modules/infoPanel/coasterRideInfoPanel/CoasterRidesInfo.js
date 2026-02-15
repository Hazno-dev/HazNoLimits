import * as DataStoreComponent from '/js/common/components/DataStoreComponent.js';
import * as FocusableComponent from '/js/common/components/Focusable.js';
import { Tab } from '/js/common/components/Tab.js';
import * as Audio from '/js/common/core/Audio.js';
import * as DS from '/js/common/core/DataStore.js';
import * as Engine from '/js/common/core/Engine.js';
import * as preact from '/js/common/lib/preact.js';
import * as DataStoreUtil from '/js/common/util/DataStoreUtil.js';
import { PanelStatusTag } from '/js/project/modules/infoPanel/common/InfoPanelsCommon.js';
import { HelpInfoPanel } from '/js/project/components/HelpInfoPanel.js';
import { HighlightTab } from '/js/project/components/HighlightTab.js';
import { Panel, PanelType } from '/js/project/components/panel/Panel.js';
import { PanelShortcuts } from '/js/project/components/panel/PanelShortcuts.js';
import { getRidesIconFromEnum } from '/js/project/data/CPTDataUtil.js';
import { EntityStatus, Game } from '/js/project/data/GameTypes.js';
import { getHelpCategory } from '/js/project/data/HelpScreensDataUtil.js';
import { CoasterRideAddOnsInfoPanel } from '/js/project/modules/infoPanel/coasterRideInfoPanel/CoasterRideAddOnsInfo.js';
import { CoasterRideCustomizationInfoPanel } from '/js/project/modules/infoPanel/coasterRideInfoPanel/CoasterRideCustomizationInfo.js';
import { CoasterRideFinancesInfoPanel } from '/js/project/modules/infoPanel/coasterRideInfoPanel/CoasterRideFinancesInfo.js';
import { CoasterRideMaintenanceInfoPanel } from '/js/project/modules/infoPanel/coasterRideInfoPanel/CoasterRideMaintenanceInfo.js';
import { CoasterRideOperationsInfoPanel } from '/js/project/modules/infoPanel/coasterRideInfoPanel/CoasterRideOperationsInfo.js';
import { CoasterRideShowRequirementsInfoPanel } from '/js/project/modules/infoPanel/coasterRideInfoPanel/CoasterRideShowRequirementsInfo.js';
import { CoasterRideShowStatsInfoPanel } from '/js/project/modules/infoPanel/coasterRideInfoPanel/CoasterRideShowStats.js';
import { CoasterRideStaffInfo } from '/js/project/modules/infoPanel/coasterRideInfoPanel/CoasterRideStaffInfo.js';
import { CoasterRideStatusInfoPanel } from '/js/project/modules/infoPanel/coasterRideInfoPanel/CoasterRideStatusInfo.js';
import { CoasterRideTestingInfoPanel } from '/js/project/modules/infoPanel/coasterRideInfoPanel/CoasterRideTestingInfo.js';
import { CoasterRideToolsInfoPanel } from '/js/project/modules/infoPanel/coasterRideInfoPanel/CoasterRideToolsInfo.js';
import { RidePrestigeInfoPanel } from '/js/project/modules/infoPanel/components/RidePrestigeInfoPanel.js';
import { Tutorial } from '/js/project/utils/TutorialHighlightUtil.js';
class State {
    type = Game.Rides.RideTypes.Coaster;
    visibleTabIndex = 0;
    visibleTabName = '';
    hasHelpItems = false;
    status = EntityStatus.Closed;
}
class _CoasterRidesInfoPanel extends preact.Component {
    state = new State;
    _rideTestingTabName = 'Testing';
    _availableTabsData = [];
    _tabData = [
        {
            tabName: 'Status',
            tooltip: '[InfoPanel_Summary]',
            icon: 'img/icons/clipboard.svg',
            content: CoasterRideStatusInfoPanel,
            tutorialPath: [Tutorial.Area.infoPanel, Tutorial.Area.coasterStatusTab],
        },
        {
            tabName: 'Requirements',
            tooltip: '[InfoPanel_Requirements]',
            icon: 'img/icons/showRequirements.svg',
            content: CoasterRideShowRequirementsInfoPanel,
            enabledFunc: (s) => s.type == Game.Rides.RideTypes.Show,
        },
        {
            tabName: 'ShowStats',
            tooltip: '[InfoPanel_ShowStats]',
            icon: '/img/icons/objectBrowserShows.svg',
            content: CoasterRideShowStatsInfoPanel,
            enabledFunc: (s) => s.type == Game.Rides.RideTypes.Show,
        },
        {
            tabName: 'Finances',
            tooltip: '[InfoPanel_finances]',
            icon: 'img/icons/cash.svg',
            content: CoasterRideFinancesInfoPanel,
            tutorialPath: [Tutorial.Area.infoPanel, Tutorial.Area.coasterFinancesTab],
        },
        {
            tabName: 'Testing',
            tooltip: '[InfoPanel_Testing]',
            icon: 'img/icons/ride_test.svg',
            content: CoasterRideTestingInfoPanel,
            enabledFunc: (s) => s.type != Game.Rides.RideTypes.Show,
            tutorialPath: [Tutorial.Area.infoPanel, Tutorial.Area.coasterTestingTab],
        },
        {
            tabName: 'Prestige',
            tooltip: '[InfoPanel_Prestige]',
            icon: 'img/icons/prestige.svg',
            content: RidePrestigeInfoPanel,
        },
        {
            tabName: 'PrestigeToo',
            tooltip: '[InfoPanel_Prestige]',
            icon: 'img/icons/prestige.svg',
            content: RidePrestigeInfoPanel,
        },
        {
            tabName: 'Operations',
            tooltip: '[InfoPanel_Operations]',
            icon: 'img/icons/settings.svg',
            content: CoasterRideOperationsInfoPanel,
            enabledFunc: (s) => s.type != Game.Rides.RideTypes.Show
        },
        {
            tabName: 'Maintenance',
            tooltip: '[InfoPanel_Maintenance]',
            icon: 'img/icons/wrench.svg',
            content: CoasterRideMaintenanceInfoPanel,
            enabledFunc: (s) => s.type != Game.Rides.RideTypes.Show,
        },
        {
            tabName: 'Connections',
            tooltip: '[InfoPanel_AddOns]',
            icon: 'img/icons/connections.svg',
            content: CoasterRideAddOnsInfoPanel,
            enabledFunc: (s) => s.type != Game.Rides.RideTypes.FlatRide
        },
        {
            tabName: 'Customisation',
            tooltip: '[InfoPanel_Customise]',
            icon: 'img/icons/palette.svg',
            content: CoasterRideCustomizationInfoPanel,
            tutorialPath: [Tutorial.Area.infoPanel, Tutorial.Area.coasterCustomsationTab],
        },
        {
            tabName: 'Advanced Control',
            tooltip: '[InfoPanel_advanced_settings]',
            icon: 'img/icons/menu.svg',
            content: CoasterRideToolsInfoPanel,
        },
        {
            tabName: 'Help',
            tooltip: '[OptionsMenu_help]',
            icon: 'img/icons/help.svg',
            content: HelpInfoPanel,
            enabledFunc: (s) => s.hasHelpItems,
        }
    ];
    onContextChanged(context, dataHelper) {
        if (context) {
            DataStoreUtil.bindDSPropsToState(this, context, dataHelper, Object.keys(this.state));
            dataHelper.getAllPropertiesNow();
            this.validateHelpContext();
            this.validateTabs(this.props.initialTab || '');
        }
        Audio.onAction(this, "show", this.state.type);
    }
    componentDidMount() {
        Engine.sendEvent('InfoPanel_ComponentDidMount', this._tabData.length);
    }
    render(props, state) {
        if (this._availableTabsData.length) {
            let tabs = [];
            let tabContents = [];
            for (let tab of this._availableTabsData) {
                tabs.push(tab.tutorialPath ?
                    preact.h(HighlightTab, { tooltip: tab.tooltip, icon: tab.icon, tutorialPath: tab.tutorialPath }) :
                    preact.h(Tab, { tooltip: tab.tooltip, icon: tab.icon }));
                tabContents.push(preact.h(tab.content, { context: props.context }));
            }
            return preact.h(Panel, { type: PanelType.InfoPanel, modifiers: props.modifiers, context: props.context, visibleTabIndex: state.visibleTabIndex, tabs: tabs, onClose: this.onCloseInfoPanel, icon: getRidesIconFromEnum(state.type), onTabChange: this.changeVisibleTab, headerElement: preact.h(PanelStatusTag, { status: state.status }), footerElement: preact.h(PanelShortcuts, { context: props.context, eventPrefix: this.getEventPrefix(state.type), rideStatus: state.status, camera: true, locate: true, move: true, advancedMove: true, delete: true }) }, tabContents);
        }
    }
    getRideTypeName = (type) => {
        switch (type) {
            case Game.Rides.RideTypes.Coaster:
                return 'CoasterRide';
            case Game.Rides.RideTypes.FlatRide:
                return 'FlatRide';
            case Game.Rides.RideTypes.Powered:
                return 'PoweredRide';
            default:
                return 'CoasterRide';
        }
    };
    getEventPrefix = (type) => {
        switch (type) {
            case Game.Rides.RideTypes.Coaster:
                return 'InfoPanel_CoasterRide_';
            case Game.Rides.RideTypes.FlatRide:
                return 'InfoPanel_FlatRide_';
            case Game.Rides.RideTypes.Powered:
                return 'InfoPanel_PoweredRide_';
            default:
                return 'InfoPanel_CoasterRide_';
        }
    };
    onCloseInfoPanel = () => {
        Audio.onAction(this, "hide", this.state.type);
        this.props.onClose?.();
    };
    validateTabs(tabName) {
        const tabs = this._tabData.filter(tab => tab.enabledFunc == undefined || tab.enabledFunc(this.state) === true);
        const visibleTabIndex = Math.max(tabs.findIndex(tab => tab.tabName == tabName), 0);
        this._availableTabsData = tabs;
        this.changeVisibleTab(visibleTabIndex);
    }
    changeVisibleTab = (visibleIndex) => {
        let prevTabName = this.state.visibleTabName;
        let tabName = this._availableTabsData[visibleIndex].tabName;
        const type = this.state.type;
        this.setState({ visibleTabIndex: visibleIndex, visibleTabName: tabName });
        const eventPrefix = this.getEventPrefix(type);
        const rideTypeName = this.getRideTypeName(type);
        if (tabName == this._rideTestingTabName) {
            Engine.sendEvent(`${eventPrefix}_TestTab_Active`, this.props.context, true);
        }
        else if (prevTabName == this._rideTestingTabName) {
            Engine.sendEvent(`${eventPrefix}_TestTab_Active`, this.props.context, false);
        }
        Engine.sendEvent('InfoPanel_TabActive', rideTypeName, tabName);
        Audio.onAction(this, "tabChange", tabName, undefined, 'TabNavigator');
    };
    validateHelpContext = () => {
        if (!this.props.context)
            return;
        const categoryID = DS.getValue([this.props.context[0]], 'helpCategoryID') ?? this.props.context[0];
        this.setState({ hasHelpItems: getHelpCategory(categoryID)?.items?.length > 0 });
    };
}
;
export const CoasterRidesInfoPanel = FocusableComponent.decorate(DataStoreComponent.decorate(_CoasterRidesInfoPanel));
//# sourceMappingURL=CoasterRidesInfo.js.map