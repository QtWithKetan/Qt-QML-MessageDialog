import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")   

    Row
    {
        spacing: 20
        anchors.centerIn: parent
        Button
        {
            id:myButton_Information
            //anchors.centerIn: parent
            text:"Click Me For Information ..."
            onClicked:
            {
                myMessageDialog_Information.open()
            }
        }
        Button
        {
            id:myButton_Warning
            //anchors.centerIn: parent
            text:"Click Me For Warning ..."
            onClicked:
            {
                myMessageDialog_Warning.open()
            }
        }
        Button
        {
            id:myButton_Critical
            //anchors.centerIn: parent
            text:"Click Me For Critical ..."
            onClicked:
            {
                myMessageDialog_Critical.open()
            }
        }
        Button
        {
            id:myButton_Question
            //anchors.centerIn: parent
            text:"Click Me For Question ..."
            onClicked:
            {
                myMessageDialog_Question.open()
            }
        }
        Button
        {
            id:myButton_Custom
            //anchors.centerIn: parent
            text:"Click Me For Custom ..."
            onClicked:
            {
                myMessageDialog_Custom.open()
            }
        }
    }

    MessageDialog
    {
        id:myMessageDialog_Custom
        text: "Custom Message Dialog Box"
        title: "Qt QML Custom MessageBox"
        icon: StandardIcon.Information
        standardButtons: MessageDialog.Ok | MessageDialog.Reset | MessageDialog.Help | MessageDialog.NoToAll | MessageDialog.YesToAll
        onAccepted:
        {
            console.log("Custom Ok Button Clicked.");
        }
        onHelp:
        {
            console.log("Custom Help Button Clicked.");
        }
        onNo:
        {
            console.log("Custom No Button Clicked.");
        }
        onReset:
        {
            console.log("Custom Reset Button Clicked.");
        }
    }


    MessageDialog
    {
        id:myMessageDialog_Information
        text: "Information Message Dialog Box"
        title: "Qt QML Information MessageBox"
        icon: StandardIcon.Information
        standardButtons: MessageDialog.Ok
        onAccepted:
        {
            console.log("Information Ok Button Clicked.");
        }
    }

    MessageDialog
    {
        id:myMessageDialog_Warning
        text: "Warning Message Dialog Box"
        title: "Qt QML Warning MessageBox"
        icon: StandardIcon.Warning
        standardButtons: MessageDialog.Ok | MessageDialog.Yes
        onAccepted:
        {
            console.log("Warning Ok Button Clicked.");
        }
    }

    MessageDialog
    {
        id:myMessageDialog_Critical
        text: "Critical Message Dialog Box"
        title: "Qt QML Critical MessageBox"
        icon: StandardIcon.Critical
        standardButtons: MessageDialog.Ok
        onAccepted:
        {
            console.log("Critical Ok Button Clicked.");
        }
    }

    MessageDialog
    {
        id:myMessageDialog_Question
        text: "Question Message Dialog Box"
        title: "Qt QML Question MessageBox"
        icon: StandardIcon.Question
        standardButtons: MessageDialog.Yes | MessageDialog.No
        onYes:
        {
            console.log("Question Yes Button Clicked.");
        }
        onNo:
        {
             console.log("Question No Button Clicked.");
        }
    }

}
