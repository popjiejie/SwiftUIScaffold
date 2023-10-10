// The Swift Programming Language
// https://docs.swift.org/swift-book


import SwiftUI

public struct 页面脚手架<背景: View, 标题: View>: View {
    let 背景区域: 背景
    let 标题区域: 标题
    
    init(背景色: () -> 背景, 标题: () -> 标题) {
        self.背景区域 = 背景色()
        self.标题区域 = 标题()
    }
    
    public var body: some View {
        ZStack {
            背景区域
            标题区域
        }
    }
}
