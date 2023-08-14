//
//  MainView.swift
//  Spar
//
//  Created by dsm 5e on 14.08.2023.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var vm: MainVM
    @State private var location = ""
    
    var body: some View {
        VStack {
            Header(location: $location)
            
            Divider()
            
            ScrollView {
                VStack(spacing: 20) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(vm.stories) { cell in
                                StoriesCell(image: cell.image, title: cell.title)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(vm.banners) { cell in
                                Button(action: {}, label: {
                                    BannerCell(image: cell.image)
                                })
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    Button {
                        
                    } label: {
                        Image("wideBanner1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 350, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 4)
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(vm.smallBanners) { cell in
                                Button(action: {}, label: {
                                    SmallBannerCell(image: cell.image)
                                })
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    HStack {
                        Text("Рекомендуем")
                            .font(.title.bold())
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(vm.items) { cell in
                                Button(action: {}, label: {
                                    ItemCell(item: cell)
                                })
                                .padding(.horizontal, 5)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    HStack {
                        Text("Сладкое настроение")
                            .font(.title.bold())
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(vm.randomItems) { cell in
                                Button(action: {}, label: {
                                    ItemCell(item: cell)
                                })
                                .padding(.horizontal, 5)
                            }
                        }
                        .padding(.horizontal)
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    MainView(vm: MainVM.init())
}

struct Header: View {
    
    @Binding var location: String
    
    var body: some View {
        HStack {
            HStack {
                Image("location")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .foregroundColor(.red)
                TextField("Москва, Москва и московская область", text: $location)
                    .font(.system(size: 14))
            }
            .padding(8)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray, lineWidth: 1)
            )
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .frame(width: 20, height: 15)
            }
        }
        .padding(.horizontal)
        .padding(.bottom, 5)
    }
}
