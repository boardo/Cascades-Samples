/*
 * Copyright (c) 2011, 2012 Research In Motion Limited.
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
 */

import bb.cascades 1.0

Page {
    Container {
        layout: DockLayout {}

        // The background image
        ImageView {
            horizontalAlignment: HorizontalAlignment.Fill
            verticalAlignment: VerticalAlignment.Fill
            imageSource: "asset:///images/background.png"
        }

        // The top-level Container that contains the Maze and control elements
        Container {
            horizontalAlignment: HorizontalAlignment.Fill
            verticalAlignment: VerticalAlignment.Fill
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }

            // The left side of the screen
            Container {
                preferredWidth: 600
                verticalAlignment: VerticalAlignment.Center
                layoutProperties: StackLayoutProperties {
                    spaceQuota: 2
                }
                layout: DockLayout {}

//! [0]
                // The maze board
                Maze {
                    horizontalAlignment: HorizontalAlignment.Center
                    verticalAlignment: VerticalAlignment.Center
                }
//! [0]
            }

            // The right side of the screen
            Container {
                preferredWidth: 400
                verticalAlignment: VerticalAlignment.Center
                layoutProperties: StackLayoutProperties {
                    spaceQuota: 2
                }

//! [1]
                Button {
                    horizontalAlignment: HorizontalAlignment.Center
                    text: qsTr ("New Game")
                    onClicked: _gameController.newGame()
                }

                Button {
                    horizontalAlignment: HorizontalAlignment.Center
                    text: qsTr ("Quit")
                    onClicked: _app.quit()
                }
//! [1]
            }
        }
    }
}
