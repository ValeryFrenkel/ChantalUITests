import Foundation
import XCTest

extension ChantalUITestBase {
        
        func givenAppIsReady() {
            XCTContext.runActivity(named: "Given App is ready ") { _ in
                XCTAssertTrue(ChantalScreen.chantalTitle.element.exists)
                XCTAssertTrue(ChantalScreen.toDoLabel.element.exists)
                XCTAssertTrue(ChantalScreen.doneLabel.element.exists)
                XCTAssertTrue(ChantalScreen.addButton.element.exists)
            }
            
        }
        
        func alertToAddItemIsReady() {
            XCTContext.runActivity(named: "Alert to add new item is ready") { _ in
                ChantalScreen.addButton.element.tap()
                XCTAssertTrue(ChantalScreen.alertTitle.element.exists)
                XCTAssertTrue(ChantalScreen.activityTextField.element.exists)
                XCTAssertTrue(ChantalScreen.cancelButton.element.exists)
                XCTAssertTrue(app.alerts.buttons["Add"].exists)
                XCTAssertFalse(app.alerts.buttons["Add"].isEnabled)
            }
        }
        
        func whenItemIsAddedToTheList(text : String ) {
            XCTContext.runActivity(named: " When i type \(text) and press Add button") { _ in
                ChantalScreen.activityTextField.element.typeText(text)
                app.alerts.buttons["Add"].tap()
            }
            
        }
        
        func thenIShouldSeeItemInTheList() {
            XCTContext.runActivity(named: "Then i should see my activity in the list") { _ in
                XCTAssertTrue(ChantalScreen.activityName.element.exists)
            }
        }
    
        func andICanDeleteItemFromTheList() {
            XCTContext.runActivity(named: "Activity is deleted from the list") { _ in
                ChantalScreen.activityName.element.swipeLeft()
                ChantalScreen.deleteButton.element.tap()
                XCTAssertFalse(ChantalScreen.activityTextField.element.exists)
        }
    }
    
    
        func andICanMoveItemToTheDoneSeection() {
            XCTContext.runActivity(named: "Activity is added to the Done section") { _ in
                ChantalScreen.activityName.element.swipeRight()
                ChantalScreen.doneButton.element.tap()
                XCTAssertTrue(ChantalScreen.activityName.element.exists)
        }
        
    }
    
        
}
