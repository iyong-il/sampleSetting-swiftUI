//
//  ContentView.swift
//  sampleSetting
//
//  Created by 이용일 on 2022/08/16.
//

import SwiftUI

struct ContentView: View {
  @State var search = ""
  @State var toggleOn = false


  var body: some View {
    
    
    NavigationView {
      
      List {
        HStack{
          Image(systemName: "magnifyingglass")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 20, height: 20)
            .foregroundColor(.gray)
          TextField("검색", text: $search)
            .keyboardType(.default)
        }
        Section {
          
          NavigationLink  {
            Text("프로필 화면")
          } label: {
            HStack {
              Image(systemName: "car.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .padding(.all, 10)
                .background(.gray)
                .clipShape(Circle())
              VStack(alignment: .leading, spacing: 3) {
                Text("yong-il")
                  .font(.system(size: 24))
                  .fontWeight(.semibold)
                Text("Apple ID, iCloud, 미디어 및 구입")
                  .font(.system(size: 14))
              }
              .padding(.leading, 6)
            }
            .padding(.vertical, 10)
          }
        }

        Section {
          // 에어플레인모드
          HStack {
            Image(systemName: "airplane")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 20, height: 20)
              .padding(.all, 4)
              .background(.orange)
              .foregroundColor(.white)
              .cornerRadius(6)
            Text("에어플레인모드")
            Toggle(isOn: self.$toggleOn) {

            }
          }
          // 와이파이
          HStack {
            Image(systemName: "wifi")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 20, height: 20)
              .padding(.all, 4)
              .background(.blue)
              .foregroundColor(.white)
              .cornerRadius(6)
            
            NavigationLink("Wi-fi") {
              Text("와이파이 화면")
            }
          }
          HStack {
            Image(systemName: "safari")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 20, height: 20)
              .padding(.all, 4)
              .background(.blue)
              .foregroundColor(.white)
              .cornerRadius(6)
            
            NavigationLink("Bluetooth") {
              Text("블루투스 화면")
              
            }
          }
          HStack {
            Image(systemName: "antenna.radiowaves.left.and.right")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 20, height: 20)
              .padding(.all, 4)
              .background(.green)
              .foregroundColor(.white)
              .cornerRadius(6)
            NavigationLink("셀룰러") {
              Text("셀룰러 화면")
            }
          }
          HStack {
            Image(systemName: "personalhotspot")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 20, height: 20)
              .padding(.all, 4)
              .background(.green)
              .foregroundColor(.white)
              .cornerRadius(6)
            
            NavigationLink("개인용 핫스팟") {
              Text("개인용 핫스팟 화면")
            }
          }
        }
        
        Section {
          HStack {
            Image(systemName: "bell.badge.fill")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 20, height: 20)
              .padding(.all, 4)
              .background(.red)
              .foregroundColor(.white)
              .cornerRadius(6)

            NavigationLink("알림") {
              Text("알림 화면")
            }
          }
          HStack {
            Image(systemName: "speaker.wave.3.fill")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 20, height: 20)
              .padding(.all, 4)
              .background(.pink)
              .foregroundColor(.white)
              .cornerRadius(6)

            NavigationLink("사운드 및 햅틱") {
              Text("사운드 및 햅틱화면")
            }
          }
          HStack {
            Image(systemName: "moon.fill")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 20, height: 20)
              .padding(.all, 4)
              .background(.indigo)
              .foregroundColor(.white)
              .cornerRadius(6)

            NavigationLink("집중모드") {
              Text("집중모드 화면")
            }
          }
          HStack {
            Image(systemName: "hourglass")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 20, height: 20)
              .padding(.all, 4)
              .background(.indigo)
              .foregroundColor(.white)
              .cornerRadius(6)

            NavigationLink("스크린 타임") {
              Text("스크린타임 화면")
            }
          }
        }
        Section {
          HStack {
            Image(systemName: "gear")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 20, height: 20)
              .padding(.all, 4)
              .background(.gray)
              .foregroundColor(.white)
              .cornerRadius(6)
            NavigationLink("일반") {
              List {
                Section {
                  HStack {
                    NavigationLink("정보") {
                      Text("정보 화면")
                    }
                  }
                }
                Section {
                  HStack {
                    NavigationLink("키보드") {
                      Text("키보드 화면")
                    }
                  }
                  HStack {
                    NavigationLink("게임컨트롤러") {
                      Text("게임컨트롤러 화면")
                    }
                  }
                  HStack {
                    NavigationLink("서체") {
                      Text("서체화면")
                    }
                  }
                  HStack {
                    NavigationLink("언어 및 지역") {
                      Text("언어 및 지역 화면")
                    }
                  }
                  HStack {
                    NavigationLink("사전") {
                      Text("사전 화면")
                    }
                  }
                }
                Section {
                  HStack {
                    NavigationLink("전송 또는 iPhone재설정") {
                      Text("전송 또는 iPhone재설정 화면")
                    }
                  }
                }
              }

            }
          }
          HStack {
            Image(systemName: "switch.2")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 20, height: 20)
              .padding(.all, 4)
              .background(.gray)
              .foregroundColor(.white)
              .cornerRadius(6)
            NavigationLink("제어센터") {
              Text("제어센터 화면")
            }
          }
          HStack {
            Image(systemName: "textformat.size")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 20, height: 20)
              .padding(.all, 4)
              .background(.blue)
              .foregroundColor(.white)
              .cornerRadius(6)
            NavigationLink("디스플레이 및 밝기") {
              Text("디스플레이 및 밝기 화면")
            }
          }
          HStack {
            Image(systemName: "square.grid.4x3.fill")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 20, height: 20)
              .padding(.all, 4)
              .background(.blue)
              .foregroundColor(.white)
              .cornerRadius(6)
            NavigationLink("홈 화면") {
              Text("홈 화면의 화면")
            }
          }
          HStack {
            Image(systemName: "circle.fill")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 20, height: 20)
              .padding(.all, 4)
              .background(.blue)
              .foregroundColor(.white)
              .cornerRadius(6)
            NavigationLink("손쉬운 사용") {
              Text("손쉬운 사용 화면")
            }
          }
          HStack {
            Image(systemName: "hand.raised.fill")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 20, height: 20)
              .padding(.all, 4)
              .background(.blue)
              .foregroundColor(.white)
              .cornerRadius(6)
            NavigationLink("개인 정보 보호") {
              Text("개인 정보 보호 화면")
            }
          }
          
        }
      }
      .navigationTitle(Text("설정"))
      
    }
    
    
  }
  
  
  
  struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
  }
}
