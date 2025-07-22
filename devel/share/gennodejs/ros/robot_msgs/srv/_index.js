
"use strict";

let IsHardwareReady = require('./IsHardwareReady.js')
let Shutdown = require('./Shutdown.js')
let Remap = require('./Remap.js')
let GetGain = require('./GetGain.js')
let MapsList = require('./MapsList.js')
let SetGain = require('./SetGain.js')
let UpdateMap = require('./UpdateMap.js')
let WheelDriver = require('./WheelDriver.js')
let Modes = require('./Modes.js')
let NavigationStatusError = require('./NavigationStatusError.js')
let HardwareDetected = require('./HardwareDetected.js')
let WheelError = require('./WheelError.js')
let RobotShutdown = require('./RobotShutdown.js')
let CurrentMap = require('./CurrentMap.js')
let DeleteMap = require('./DeleteMap.js')
let Relay = require('./Relay.js')

module.exports = {
  IsHardwareReady: IsHardwareReady,
  Shutdown: Shutdown,
  Remap: Remap,
  GetGain: GetGain,
  MapsList: MapsList,
  SetGain: SetGain,
  UpdateMap: UpdateMap,
  WheelDriver: WheelDriver,
  Modes: Modes,
  NavigationStatusError: NavigationStatusError,
  HardwareDetected: HardwareDetected,
  WheelError: WheelError,
  RobotShutdown: RobotShutdown,
  CurrentMap: CurrentMap,
  DeleteMap: DeleteMap,
  Relay: Relay,
};
