import Foundation
import XCTest

class ChantalUITests : ChantalUITestBase {
    
    func testAllEllementsDisplayedOnTheScreen(){
        givenAppIsReady()
    }
    
    func testAddNewItemsToTheList() {
        alertToAddItemIsReady()
        whenItemIsAddedToTheList(text: "Watch Netflix")
        thenIShouldSeeItemInTheList()
    }
    
    func testDeleteItemsFromTheList() {
        alertToAddItemIsReady()
        whenItemIsAddedToTheList(text: "Watch Netflix")
        thenIShouldSeeItemInTheList()
        andICanDeleteItemFromTheList()
    }
    
    func testAddingToDoneSection() {
        alertToAddItemIsReady()
        whenItemIsAddedToTheList(text: "Watch Netflix")
        thenIShouldSeeItemInTheList()
        andICanMoveItemToTheDoneSeection()
    }

}
