/**
 * @license
 * Cesium - https://github.com/CesiumGS/cesium
 * Version 1.120
 *
 * Copyright 2011-2022 Cesium Contributors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * Columbus View (Pat. Pend.)
 *
 * Portions licensed separately.
 * See https://github.com/CesiumGS/cesium/blob/main/LICENSE.md for full licensing details.
 */

import {
  EllipseGeometry_default
} from "./chunk-ZQRAO433.js";
import "./chunk-SK7K3XCL.js";
import "./chunk-TTGPEQCE.js";
import "./chunk-3ZXDE3JO.js";
import "./chunk-E2ORNQ7A.js";
import "./chunk-6S2SRI34.js";
import "./chunk-GNHZH7HP.js";
import "./chunk-LSSWVB2X.js";
import "./chunk-O2ZNYFBP.js";
import "./chunk-UFYHGIDI.js";
import "./chunk-ZPBMQ3ST.js";
import "./chunk-JYQNWIQQ.js";
import "./chunk-T73L7VKT.js";
import "./chunk-7Q3HNUP2.js";
import "./chunk-FWV2IGPE.js";
import "./chunk-A7QKLDT4.js";
import {
  Cartesian3_default,
  Ellipsoid_default
} from "./chunk-KRJHBW7G.js";
import "./chunk-4RHGGDZC.js";
import "./chunk-RHBWXX7C.js";
import "./chunk-ZIKGV7EL.js";
import "./chunk-BAVI3ZS2.js";
import "./chunk-TGY6H6N6.js";
import {
  defined_default
} from "./chunk-N4QEHO3U.js";

// packages/engine/Source/Workers/createEllipseGeometry.js
function createEllipseGeometry(ellipseGeometry, offset) {
  if (defined_default(offset)) {
    ellipseGeometry = EllipseGeometry_default.unpack(ellipseGeometry, offset);
  }
  ellipseGeometry._center = Cartesian3_default.clone(ellipseGeometry._center);
  ellipseGeometry._ellipsoid = Ellipsoid_default.clone(ellipseGeometry._ellipsoid);
  return EllipseGeometry_default.createGeometry(ellipseGeometry);
}
var createEllipseGeometry_default = createEllipseGeometry;
export {
  createEllipseGeometry_default as default
};
