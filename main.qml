import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 800
    height: 600
    title: qsTr("The GAME")

    //Задний план
    Rectangle {
        id: background
        x: 0
        y: 0
        width: 800
        height: 600
        color: "#d3d3d3"
       }

    //Игрок
    Rectangle
    {
        id: player
        x: background.width / 2
        y: background.height - 30
        width: 30
        height: 30
        color: "#4e9a06"
        opacity: 1
        visible: true
        clip: false
        focus: true

        property int xv: 0
        property int yv: 0

                Keys.onPressed:
                {
                    if (event.isAutoRepeat) return;


                    switch (event.key)
                    {
                        case Qt.Key_Left: xv -= 2; break;
                        case Qt.Key_Right: xv += 2; break;
                    }

                }

                Keys.onReleased:
                {
                    if (event.isAutoRepeat) return;
                    switch (event.key)
                    {
                        case Qt.Key_Left: xv += 2; break;
                        case Qt.Key_Right: xv -= 2; break;
                    }

                }


                Timer
                {
                        interval: 8
                        running: true
                        repeat: true
                        onTriggered:
                        {
                            player.x += player.xv
                        }
                }
    }



}


