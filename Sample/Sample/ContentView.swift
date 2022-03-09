//
//  ContentView.swift
//  Sample
//
//  Created by Deo on 2020/7/6.
//  Copyright © 2020 Chainmeans. All rights reserved.
//

import SwiftUI
import NOTextInputEditText

struct ContentView: View {
    @State var text = ""
    @State var error = ""
    @State var isFocusable = false
    
    var body: some View {
        NOTextInputEditText(title: "AAA",
                            text: self.$text,
                            error: self.$error,
                            isFocusable: self.$isFocusable)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
