import XCTest
import SwiftTreeSitter
import TreeSitterClojureOrchard

final class TreeSitterClojureOrchardTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_clojure_orchard())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Clojure grammar")
    }
}
