//
//  InputViewController.swift
//  Part9-showModal-
//
//  Created by 山本ののか on 2020/12/05.
//

import UIKit

final class InputViewController: UIViewController {

    var selectedPrefecture: Prefecture?

    @IBAction private func selectTokyo(_ sender: Any) {
        performExitSegue(prefecture: .tokyo)
    }

    @IBAction private func selectSaitama(_ sender: Any) {
        performExitSegue(prefecture: .saitama)
    }

    @IBAction private func selectChiba(_ sender: Any) {
        performExitSegue(prefecture: .chiba)
    }

    private func performExitSegue(prefecture: Prefecture) {
        selectedPrefecture = prefecture
        performSegue(withIdentifier: "exit", sender: nil)
    }

    @IBAction private func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}



// 改善点

// 初回のコードはコメントアウト、unwind segueを1つにしたコードで書き直している
// 初回の作りだとunwind segueを47都道府県だったらその数分作らなければならなくなる

// 解答例1

// private(set)は「外から取得はできるが、変更はできない」構造
// exitWithSegueのidentifierにexitを設定
//private(set) var selectedPrefecture: Prefecture?
//
//@IBAction private func didTapTokyo(_ sender: Any) {
//    performExitSegue(prefecture: .tokyo)
//}
//
//private func performExitSegue(prefecture: Prefecture) {
//    selectedPrefecture = prefecture
//    performSegue(withIdentifier: "exit", sender: nil)
//}
//
//final class ViewController: UIViewController {
//
//    @IBOutlet private weak var selectedPrefectures: UILabel!
//
//    @IBAction func exit(segue: UIStoryboardSegue) {
//        guard let inputVC = segue.source as? InputViewController else { return }
//        selectedPrefectures.text = inputVC.selectedPrefecture?.displayName ?? "未選択"
//    }
//}

//解答例2

//@IBOutlet weak var button1: UIButton!
//@IBOutlet weak var button2: UIButton!
//@IBOutlet weak var button3: UIButton!
//@IBOutlet weak var button4: UIButton!

//var selectedButtonNumber = 0
//var prefName:[String] = ["東京都","神奈川県","埼玉県","千葉県"]
//private var buttons: [UIButton] {
//    [button1, button2, button3, button4]
//}

//override func viewDidLoad() {
//    super.viewDidLoad()
//    prefectureName()
//}

//func prefectureName() {
//    zip(buttons, prefName).forEach { button, prefName in
//        button.setTitle(prefName, for: .normal)
//    }
//}
