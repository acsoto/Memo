//
//  MarkToday.swift
//  Memo
//
//  Created by 周子航 on 2021/10/25.
//

import SwiftUI

struct MarkToday: View {
    @EnvironmentObject var modelData: ModelData
    @State var date = Date()
    @State var feeling = ""
    @Environment(\.presentationMode) var mode
    var body: some View {
        VStack{
            Text("标记今天")
            Form {
                DatePicker("时间", selection: $date)
                HStack{
                    Text("感想")
                    TextEditor(text: $feeling)
                }
                Button(action: {
                    add()
                    self.mode.wrappedValue.dismiss()
                }, label: {
                    Text("提交")
                })
            }
        }
    }
    
    func add(){
        let mark = Mark(index: modelData.marks.count,type:ModelType.DAY ,name: date2StringId(date), date: date, feeling: feeling)
        modelData.marks.append(mark)
        modelData.saveMarks()
    }
}



struct MarkToday_Previews: PreviewProvider {
    static var previews: some View {
        MarkToday()
    }
}
