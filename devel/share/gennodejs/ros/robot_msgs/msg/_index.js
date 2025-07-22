
"use strict";

let robotPose = require('./robotPose.js');
let wheel_status = require('./wheel_status.js');
let node_status = require('./node_status.js');
let bateria = require('./bateria.js');
let sensorStatus = require('./sensorStatus.js');
let mode_status = require('./mode_status.js');
let GPS = require('./GPS.js');
let wheel = require('./wheel.js');
let map_size = require('./map_size.js');
let Coordinates = require('./Coordinates.js');
let isAlive = require('./isAlive.js');
let modes_status = require('./modes_status.js');
let DockingResult = require('./DockingResult.js');
let DockingGoal = require('./DockingGoal.js');
let DockingActionGoal = require('./DockingActionGoal.js');
let DockingFeedback = require('./DockingFeedback.js');
let DockingActionFeedback = require('./DockingActionFeedback.js');
let DockingAction = require('./DockingAction.js');
let DockingActionResult = require('./DockingActionResult.js');

module.exports = {
  robotPose: robotPose,
  wheel_status: wheel_status,
  node_status: node_status,
  bateria: bateria,
  sensorStatus: sensorStatus,
  mode_status: mode_status,
  GPS: GPS,
  wheel: wheel,
  map_size: map_size,
  Coordinates: Coordinates,
  isAlive: isAlive,
  modes_status: modes_status,
  DockingResult: DockingResult,
  DockingGoal: DockingGoal,
  DockingActionGoal: DockingActionGoal,
  DockingFeedback: DockingFeedback,
  DockingActionFeedback: DockingActionFeedback,
  DockingAction: DockingAction,
  DockingActionResult: DockingActionResult,
};
