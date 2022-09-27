import QtQuick 2.0
import QtQuick.Dialogs 1.2

Dialog {
    width: 300
    height: 200
    title: qsTr("Подключиться к плате")
    standardButtons: Dialog.Ok | Dialog.Cancel | Dialog.Apply
}
