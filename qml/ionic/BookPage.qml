import QtQuick 1.1
import com.nokia.meego 1.0
import com.nokia.extras 1.0

import com.pipacs.ionic.Bookmark 1.0
import com.pipacs.ionic.Book 1.0

Page {
    property Book book: emptyBook

    tools: libraryTools

    PageHeader {
        id: header
        text: book.title
    }

    ToolBarLayout {
        id: libraryTools
        visible: true
        ToolIcon {
            iconId: "toolbar-back"
            onClicked: {
                pageStack.pop()
            }
        }
        ToolIcon {
            iconId: "toolbar-jump-to"
            onClicked: {
                pageStack.pop(null)
                library.setNowReading(book)
            }
        }
        ToolIcon {
            iconId: "toolbar-delete"
            onClicked: {
                // library.remove(book)
                pageStack.pop()
            }
        }
    }
}