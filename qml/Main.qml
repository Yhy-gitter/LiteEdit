import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true

    width: 1000
    height: 700

    title: "CppQtTemplate"

    Text {
        anchors.centerIn: parent
        text: "Hello, Qt!"
        font.pixelSize: 28
    }
}