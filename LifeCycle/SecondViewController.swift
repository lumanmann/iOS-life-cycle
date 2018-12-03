//
//  SecondViewController.swift
//  LifeCycle
//
//  Created by WY NG on 3/12/2018.
//  Copyright © 2018 lumanman. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // 當 view 被載入到記憶體後，但畫面未被顯示之前，就會呼叫viewDidLoad，只會出現一次，所以於此方法中一般會寫入背景色、字體大小等。
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    }
    
    // 這方法是當在 view 將呈現在畫面，且還沒有任何的動畫開始出現在畫面上時被呼叫的。我們可以重寫這個方法來執行與 view 關聯的自定義任務。此階段的方法適合寫入一些要更新資料的東西，如得到使用者的位置資訊。您也可以使用此方法更改 status bar 的方向或樣式，以改變 status bar 即將在 view 呈現的樣子。
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
        
    }
    
    //在 viewWillAppear 結束後，即 view 被載入後到 view controller 後，就會載入這個方法，此階段的方法適合寫入一些動畫效果。
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    
    // 這個方法是當 view 將被移除，且動畫開始執行前呼叫的。我們可以重寫這個方法來改變 view 的各種狀態。如我們可以將被改變的 status bar 還原回來。
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
        super.viewWillDisappear(animated)
    }
    
    //當 view 被移除後（使用者已經在看新的畫面了），我們可以使用這個方法來後這時刻的自定義任務，一般可能用在停止與畫面有關的服務（EX ：停止播放），要不然會在畫面離開後仍然持續占著記憶體，影響裝置效率。
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
        super.viewDidDisappear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   
    
}
