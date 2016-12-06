import Foundation

// MARK: - NSAttributedString Enconding methods
//
extension NSAttributedString
{
    static let pastesboardUTI = "com.wordpress.aztec.attributedString"

    func archiveToData() -> Data {
        let data = NSKeyedArchiver.archivedData(withRootObject: self)
        return data
    }

    static func unarchive(fromData data: Data) -> NSAttributedString? {
        let attributedString = NSKeyedUnarchiver.unarchiveObject(with: data) as? NSAttributedString
        return attributedString
    }
    
}
