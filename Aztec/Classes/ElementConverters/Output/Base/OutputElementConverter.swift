import UIKit


/// Converts a `ElementNode` into a `String` containing its HTML representation.
///
public protocol OutputElementConverter {
    
    typealias ChildrenSerializer = (_: [Node]) -> String
    
    /// Converts an instance of `ElementNode` into its string representation.
    ///
    /// - Parameters:
    ///     - elementNode: `ElementNode` to convert.
    ///     - childrenSerializer: Callback to serialize child elements.
    ///
    /// - Returns: the `String` representation.
    ///
    func convert(
        _ elementNode: ElementNode,
        childrenSerializer serializeChildren: ChildrenSerializer) -> String
}
