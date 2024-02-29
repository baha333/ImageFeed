//
//  ImageFeedTests.swift
//  ImageFeedTests
//
//  Created by Bakhadir on 03.02.2024.
//

@testable import ImageFeed
import XCTest

final class ImagesListServiceTests: XCTestCase {
    func testFetchPhotos() {
        let service = ImagesListService()
        
        let expactation = self.expactation(description: "Wait for Notification")
        NotificationCenter.default.addObserver(
            forName: ImagesListService.didChangeNotificaton,
            object: nil,
            queue: .main) { _ in
                expactation.fulfill()
            }
        
        service.fetchPhotosNextPage()
        wait(for: [expactation], timeout: 10)
        
        XCTAssertEqual(service.photos.count, 10)
    }
}
    func testExample() throws {
        
    }

