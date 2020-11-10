//
//  STLViewItem.swift
//  Pakae
//
//  Created by Evan Renanto on 31/10/20.
//

import SwiftUI

struct STLViewItem: View {
    
    @State private var didTap1:Bool = true
    @State var bookmarkButton:String = "star"
    @State var tagButton:String = "tag"
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack{
                
                ZStack{
                    
                    Image("coba-5").resizable()
                        .frame(width: 660, height: 665)
                        .edgesIgnoringSafeArea(.top)
                }
                
                HStack{
                    
                    VStack{
                        
                        HStack{
                            
                            VStack{
                                
                                HStack{
                                    
                                    Image(systemName: "bag")
                                    Text("Girl of the Month")
                                        .font(.custom("Poppins-SemiBold", size: 15))
                                        .foregroundColor(.gray)
                                }
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                if(didTap1 == true) {
                                    self.bookmarkButton = "star.fill"
                                    didTap1 = false
                                } else if (didTap1 == false) {
                                    self.bookmarkButton = "star"
                                    didTap1 = true
                                }
                            }, label: {
                                Image(systemName: bookmarkButton).resizable().frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }).frame(width: 35, height: 35).background(Color.white).cornerRadius(30)
                        }
                        
                        HStack{
                            
                            Text("Monochrome")
                                .font(.custom("Poppins-SemiBold", size: 20))
                            
                            Spacer()
                        }
                        
                        HStack{
                            
                            Text("Rp 749,900")
                                .font(.custom("Poppins-Regular", size: 17))
                                .foregroundColor(.gray)
                                .padding(.top,1)
                            
                            Spacer()
                        }
                    }
                }.frame(width: 350)
                .offset(y: -20)
                
                Spacer()
                
                HStack{
                    
                    Text("Product Description")
                        .font(.custom("Poppins-SemiBold", size: 17))
                        .padding(.top,4)
                    Spacer()
                }.frame(width: 350)
                .offset(y: -20)
                
                HStack{
                    
                    Text("The night that’s become dark again, My room that’s all square and straight, Feels like I’m trapped in it again, At that moment, something knocks on my window, The moonlight that shines on me, And curls around me")
                        .font(.custom("Poppins-Regular", size: 15))
                        .padding(.top,1)
                    
                    Spacer()
                }.frame(width: 350)
                .offset(y: -20)
                
                Spacer()
                
                HStack{
                    
                }.frame(width: 350)
                .offset(y: -20)
                
                Spacer()
                
                ViewOnWebsiteButton()
                
            }.offset(y: -75)
        }
    }
}

class getData : ObservableObject {

    @Published var data = [Type]()
    @Published var count = 1

    init() {

       loadData()
    }
    
    func loadData(){
//        let url = "http://18.140.3.202:8080/api/v1/user/style"

//        let request : URLRequest = URLRequest(url: url)
//
//        let session = URLSession(configuration: .default)
//
//        let body : [String : cloth] = ["clothes" : clothes]
//
//        request.httpMethod = "POST"
//        request.setValue(forHTTPHeaderField: "Content-Type")
//        request.setValue("Bearer \(accessToken)",forHTTPHeaderField: "Authorization")
//        request.httpBody = body

//        session.dataTask(with: request) { (body, response, err) in
//            if err! nil{
//                print((err?.localizedDescription)!)
//                return
//            }
//        }
        
    }
}

struct STLViewItemResults : Decodable {
    
    var results : Response
}

struct STLViewItemResponse : Decodable {
    
    var image : String
    var price : String
    var name : String
}

struct STLViewItem_Previews: PreviewProvider {
    static var previews: some View {
        STLViewItem()
    }
}
