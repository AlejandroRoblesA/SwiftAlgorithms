import Foundation

public func table0fContents (text: [String]) -> [String] {
    let filteredText = text.filter { $0.hasPrefix("#") }
    var summaryModel: SummaryModel = SummaryModel(text: "", chapter: 0, section: 0)
    var summary: [String] = [String]()
    for title in filteredText {
        let data: SummaryModel = replaceHash(summaryModel: SummaryModel(text: title,
                                                                        chapter: summaryModel.chapter,
                                                                        section: summaryModel.section))
        summary.append(data.text)
        summaryModel.chapter = data.chapter
        summaryModel.section = data.section
    }
    return summary
}

private func replaceHash(summaryModel: SummaryModel) -> (SummaryModel) {
    var summary = summaryModel
    if summary.text.prefix(1) == "#" && summary.text.prefix(2) != "##" {
        summary.chapter = summary.chapter + 1
        summary.section = 0
        summary.text = summary.text.replacingOccurrences(of: "#", with: "\(summary.chapter).")
    } else if summary.text.prefix(2) == "##" {
        summary.section = summary.section + 1
        summary.text = summary.text.replacingOccurrences(of: "##", with: "\(summary.chapter).\(summary.section).")
    }
    return SummaryModel(text: summary.text, chapter: summary.chapter, section: summary.section)
}
