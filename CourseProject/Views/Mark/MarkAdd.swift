//
//  MovieAdder.swift
//  CourseProject
//
//  Created by 周子航 on 2021/10/24.
//

import SwiftUI


struct MarkAdd: View {
    @EnvironmentObject var modelData: ModelData
    var type:ModelType
    @State var name = ""
    @State var date = Date()
    @State var feeling = ""
    
    @Environment(\.presentationMode) var mode
    
    init(type:ModelType){
        self.type = type
    }
    
    var body: some View {
        VStack{
            Text("标记\(type.rawValue)")
            Form {
                HStack{
                    TextField("\(type.rawValue)名称",text: $name)
                }
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
        let mark = Mark(index: modelData.marks.count,type:type ,name: name, date: date, feeling: feeling)
        modelData.marks.append(mark)
        modelData.saveMarks()
    }
    
}




struct MovieAdder_Previews: PreviewProvider {
    static var previews: some View {
        MarkAdd(type:ModelType.BOOK)
    }
}
