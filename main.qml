import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.13
import QtQuick.Dialogs.qml 1.0
import QtGraphicalEffects 1.0

ApplicationWindow {
    id: window
    visible: true
    width: 680
    height: 480
    minimumWidth: 340
    minimumHeight: 240
    title: qsTr("Elcus задатчик")

    property bool running: false

    signal elcusStateChanged(bool state)


    function stateApplicationChenged(state)
    {
        running = state;
    }

    ToolBar {
        RowLayout {
            anchors.fill: parent

            ToolButton {
                id: connect
                ToolTip.text: running === true ? qsTr("Работает") : qsTr("Запустить")
                onHoveredChanged: highlighted = hovered
                onClicked: {
                    running = true;
                    elcusStateChanged(running)
                    connectElcus.open()
                }
                enabled: running ? false : true

                Image {
                    anchors.fill: parent
                    sourceSize: Qt.size(24,24)
                    source: "qrc:/icons/connected.png"
                    ColorOverlay {
                        anchors.fill: parent
                        source: parent
                        color: running ? "gray" : "transparent"
                    }
                }

            }

            ToolButton {
                id: disconnect
                ToolTip.text: running === true ? qsTr("Остановить") : qsTr("Остановлено")
                onHoveredChanged: highlighted = hovered
                onClicked: {
                    running = false
                    elcusStateChanged(running)
                }
                enabled: running ? true : false

                Image {
                    anchors.fill: parent
                    sourceSize: Qt.size(24,24)
                    source: "qrc:/icons/disconnected.png"
                    ColorOverlay {
                        anchors.fill: parent
                        source: parent
                        color:  running ? "transparent" : "gray"
                    }
                }

            }

            ToolButton {
                id: toolButton2
              text: qsTr("Tool Button")
            }

              ToolButton {
                  id: toolButton3
                  text: qsTr("Tool Button")
              }

              SpinBox {
                  id: spinBox
              }

        }
    }

    ConnectToElcus {
        id: connectElcus;
    }

}


