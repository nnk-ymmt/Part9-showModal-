//
//  ViewController.swift
//  Part9-showModal-
//
//  Created by 山本ののか on 2020/12/05.
//

import UIKit

enum Prefecture {
    case tokyo
    case saitama
    case chiba

    var displayName: String {
        switch self {
        case .tokyo:
            return "東京都"
        case .saitama:
            return "埼玉県"
        case .chiba:
            return "千葉県"
        }
    }
}

final class ViewController: UIViewController {

    @IBOutlet private weak var prefectureLabel: UILabel!

    @IBAction func exit(segue: UIStoryboardSegue) {
        guard let inputVC = segue.source as? InputViewController else { return }
        prefectureLabel.text = inputVC.selectedPrefecture?.displayName ?? "未選択"
    }

//    var prefecture: Prefecture?
//
//    @IBAction private func selectTokyo(segue: UIStoryboardSegue) {
//        prefecture = .tokyo
//        displayPrefecture()
//    }
//
//    @IBAction private func selectSaitama(segue: UIStoryboardSegue) {
//        prefecture = .saitama
//        displayPrefecture()
//    }
//
//    @IBAction private func selectChiba(segue: UIStoryboardSegue) {
//        prefecture = .chiba
//        displayPrefecture()
//    }
//
//    func displayPrefecture() {
//        prefectureLabel.text = prefecture?.displayName
//    }
}
