//
//  TestingViewController.swift
//  NKit
//
//  Created by Nghia Nguyen on 12/17/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import UIKit
import RxSwift

struct TestState: NKInitable {
    var isLoading = false
    var names = [String]()
    var error: String? = nil
}

enum TestAction {
    case fetch
}

class TestReactor: NKReactor<TestAction, TestState>, NKReactable {
    func execute(action: TestAction) {
        switch action {
        case .fetch:
            self.changeState({ (state: inout TestState) in
                state.names = ["Nghia"]
            })
            return
        }
    }
}

class TestingViewController<Reactor: NKReactable>: UIViewController where Reactor.NKAction == TestAction, Reactor.NKState == TestState {
    
    let disposeBag = DisposeBag()
    
    let reactor: Reactor
    
    init(reactor: Reactor) {
        self.reactor = reactor
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.reactor.stateObservable.map{$0.names}.subscribe(onNext: {
                print("names \($0)")
        }).addDisposableTo(disposeBag)
        
        self.reactor.execute(action: .fetch)
    }
}

extension TestingViewController {
    static var instance: TestingViewController<TestReactor> {
        return TestingViewController<TestReactor>(reactor: TestReactor())
    }
}
