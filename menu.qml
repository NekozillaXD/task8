import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Window 2.3

Window {
    id: menu
    visible: true
    minimumWidth: 1024
    minimumHeight: 768
    maximumWidth: 1024
    maximumHeight: 768
    title: qsTr("The GAME")

    signal gameStarted

    Item {
        id: element
        anchors.fill: parent

        Button {
            id: startgame
            x: (parent.width - this.width) / 2
            y: 159
            width: 300
            text: "Играть"
            font.family: "Verdana"
            font.pointSize: 16

            onClicked: {
                menu.gameStarted()
            }

        }

        Button {
            id: settings
            width: 300
            text: "Настройки"
            anchors.verticalCenterOffset: 80
            anchors.verticalCenter: startgame.verticalCenter
            font.family: "Verdana"
            font.pointSize: 16
            anchors.horizontalCenter: startgame.horizontalCenter
        }

        Button {
            id: exitgame
            width: 300
            text: "Выход"
            anchors.verticalCenterOffset: 80
            anchors.verticalCenter: settings.verticalCenter
            anchors.horizontalCenterOffset: 0
            font.family: "Verdana"
            font.pointSize: 16
            anchors.horizontalCenter: startgame.horizontalCenter
            onClicked: {
                menu.close();
            }
        }

    }
}
