

import SwiftUI

struct LoginView: View {
    @State private var emailOrUsername = ""
    @State private var password = ""
    @State private var isButtonPressed = false
    @Environment(\.dismiss)var dismiss
    var body: some View {
        NavigationStack {
            VStack {
                
                //image
                VStack {
                    
                    Image("banner")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 166)
                        .ignoresSafeArea()
                    
                    Text("Log in")
                        .fontWeight(.semibold)
                        .font(.system(size: 32))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                }
                .padding(.bottom,42)
                //Spacer()
                  
                    VStack (spacing: 16) {
                        InputView(text: $emailOrUsername,placeholder: "Email address or username")
                            .padding(.horizontal, 16)
                            .frame(width: UIScreen.main.bounds.width - 32, height: 40)
                            .foregroundColor(.black)
                            .background(Color(hex: 0xF4F4F4))
                            .cornerRadius(20)
                            .autocapitalization(.none)
                        
                        InputView(text: $password, placeholder: "Password",
                                  isSecureField: true)
                        .padding(.horizontal, 16)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 40)
                        .foregroundColor(.black)
                        .background(Color(hex: 0xF4F4F4))
                        .cornerRadius(20)
                    }
                    .padding(.horizontal)
                    .padding(.top, 24)
                    //.padding(.bottom, 12)
                   
                HStack {
                    Spacer()
                    Button ("Forgot your password?") {
                        
                    }
                    .fontWeight(.semibold)
                    .font(.system(size: 12))
                    .foregroundColor(Color(hex: 0x1945CF))
                    .padding(.trailing)
                    //.padding(.top, 12)

                }
                Spacer()
                
                Button {
                    print("Log user in...")
                } label: {
                    HStack {
                        Text("Log in")
                            .fontWeight(.bold)
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 40)
                    .background(isButtonPressed ? Color(hex : 0x1945CF): Color(hex: 0x09244B, opacity: 0.5)) // Змінюємо колір на синій, якщо кнопка натиснута
                    .cornerRadius(20)
                }
                .padding(.top, 24)
                .padding(.bottom, 36)
                
                ZStack {
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 98, height: 1)
                        .padding(.leading,UIScreen.main.bounds.width - 140)
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 98, height: 1)
                        .padding(.trailing,UIScreen.main.bounds.width - 140)
                    
                    VStack {
                            Text("Sign up with")
                            .fontWeight(.regular)
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            }
                }
                    .padding(.bottom, 24)
                
                HStack(spacing: 20) {
                    Circle()
                        .foregroundColor(Color(hex: 0xF4F4F4))
                        .frame(width: 54, height: 54)
                        .overlay(
                                Image("google") // ваше зображення
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                  )
                    
                    Circle()
                        .foregroundColor(Color(hex: 0xF4F4F4))
                        .frame(width: 54, height: 54)
                        .overlay(
                                Image("facebook") // ваше зображення
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                  )
                    
                    Circle()
                        .foregroundColor(Color(hex: 0xF4F4F4))
                        .frame(width: 54, height: 54)
                        .overlay(
                                Image("ios") // ваше зображення
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                  )
                    
                }
                .padding(.bottom,24)
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Text("Already have an account?")
                            .foregroundColor(.black)
                        Text ("Sign up")
                            .foregroundColor(Color(hex: 0x1945CF))
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                }
            }
            
        }
    }
}


#Preview {
    LoginView()
}
