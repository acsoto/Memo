//
//  MarkEdit.swift
//  Memo
//
//  Created by 周子航 on 2021/10/25.
//

import SwiftUI

struct MarkEdit: View {
    @EnvironmentObject var modelData: ModelData
    @Binding var mark:Mark
    @State var date = Date()
    @State var feeling = ""
    @Environment(\.presentationMode) var mode
    
    
    var body: some View {
        VStack{
            Text("修改\(mark.type.rawValue)标记")
            Form {
                MarkDateList(dates: $mark.dates)
                HStack{
                    Text("第 \(mark.dates.count+1) 次看")
                    DatePicker("", selection: $date)
                }
                Text(mark.feeling).font(.body).foregroundColor(.gray)
                HStack{
                    TextField("新的感想",text: $feeling)
                }
                Button(action: {
                    edit()
                    self.mode.wrappedValue.dismiss()
                }, label: {Text("提交")})
            }
        }
    }
    
    func edit(){
        mark.dates.append(date)
        mark.feeling.append("\n"+feeling)
        modelData.saveMarks()
    }
}
