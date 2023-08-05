import Foundation

public func table0fContents (text: [String]) -> [String] {
    let filteredText = text.filter { $0.hasPrefix("#") }
    var chapter: Int = 0
    var section: Int = 0
    var summary: [String] = [String]()
    for title in filteredText {
        let data: (text: String, chapter: Int, section: Int) = replaceHash(text: title, chapter: chapter, section: section)
        summary.append(data.text)
        chapter = data.chapter
        section = data.section
    }
    return summary
}

private func replaceHash(text: String, chapter: Int, section: Int) -> (text: String, chapter: Int, section: Int) {
    var newText = ""
    var chapter = chapter
    var section = section
    if text.prefix(1) == "#" && text.prefix(2) != "##" {
        chapter = chapter + 1
        section = 0
        newText = text.replacingOccurrences(of: "#", with: "\(chapter).")
    } else if text.prefix(2) == "##" {
        section = section + 1
        newText = text.replacingOccurrences(of: "##", with: "\(chapter).\(section).")
    }
    return (text: newText, chapter: chapter, section: section)
}
