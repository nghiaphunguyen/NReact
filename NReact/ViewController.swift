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
            
            DispatchQueue.main.async {
                self.changeState({ (state: inout TestState) in
                    state.error = nil
                    state.names = ["Hieu"]
                })
            }
            return
        }
    }
}

class TestingViewController<Reactor: NKReactable>: NKReactViewController<Reactor> where Reactor.NKAction == TestAction, Reactor.NKState == TestState {
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.reactor.execute(action: .fetch)
    }
    
    override func setupState() {
        self.reactor.stateObservable.map{$0.names}.distinctUntilChanged {
            $0.0 == $0.1
            }.subscribe(onNext: {
            print("names \($0)")
        }).addDisposableTo(disposeBag)
    }
}

extension TestingViewController {
    static var instance: TestingViewController<TestReactor> {
        return TestingViewController<TestReactor>(reactor: TestReactor())
    }
}
