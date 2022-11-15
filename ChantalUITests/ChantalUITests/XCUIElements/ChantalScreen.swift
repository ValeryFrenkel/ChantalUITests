import Foundation
import XCTest

enum ChantalScreen: String {
    
    case chantalTitle = "Chantal"
    case toDoLabel = "To-do"
    case doneLabel = "Done"
    case addButton = "Add"
    case alertTitle = "Add Task"
    case activityTextField = "Enter task name..."
    case cancelButton = "Cancel"
    case activityName = "Watch Netflix"
    case deleteButton = "delete"
    case doneButton = "done"
    
    var element: XCUIElement {
        
        switch self {
        case .chantalTitle, .toDoLabel, .doneLabel, .activityName:
            return XCUIApplication().staticTexts[self.rawValue]
        case .activityTextField:
            return XCUIApplication().textFields[self.rawValue]
        case .addButton, .cancelButton, .deleteButton, .doneButton:
            return XCUIApplication().buttons[self.rawValue]
        case .alertTitle:
            return XCUIApplication().alerts[self.rawValue]
            }
        }
    }
