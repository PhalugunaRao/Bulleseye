import XCTest
@testable import Bulleseye

final class BulleseyeTests: XCTestCase {
    var game: Game!
    
    override func setUpWithError() throws {
       game = Game()
    }
    
    override func tearDownWithError() throws {
       game = nil
    }
    
//    func testExample() throws {
//        XCTAssertEqual(game.points(sliderValue: 50), 999)
//    }
    
    
    func testScorePositive(){
        var guess = game.target + 5
        var score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative(){
        var guess = game.target - 5
        var score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
   
}
