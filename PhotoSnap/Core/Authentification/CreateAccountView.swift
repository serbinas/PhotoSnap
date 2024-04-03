
import SwiftUI

struct CreateAccountView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var isButtonPressed = false
    var body: some View {
       
        NavigationStack {
            //image
            VStack {
                //form fields
                VStack {
                    
                    Image("banner")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 166)
                        .ignoresSafeArea()
                
                    Text("Create account")
                        .fontWeight(.semibold)
                        .font(.system(size: 32))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                    //.padding()
                }
                //.padding(.bottom,42)
                Spacer()
            
            VStack (spacing: 16){
                    InputView(text: $email,placeholder: "Email address")
                        .padding(.horizontal, 16)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 40)
                        .foregroundColor(.black)
                        .background(Color(hex: 0xF4F4F4))
                        .cornerRadius(20)
                        .autocapitalization(.none)
                    
                    InputView(text: $username, placeholder: "Username")
                    .padding(.horizontal, 16)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 40)
                    .foregroundColor(.black)
                    .background(Color(hex: 0xF4F4F4))
                    .cornerRadius(20)
                    
                    InputView(text: $password, placeholder: "Password",
                              isSecureField: true)
                    .padding(.horizontal, 16)
                    .foregroundColor(.black)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 40)
                    .background(Color(hex: 0xF4F4F4))
                    .cornerRadius(20)
                    
                    InputView(text: $confirmPassword, placeholder: "Confirm password",
                              isSecureField: true)
                    .padding(.horizontal, 16)
                    .foregroundColor(.black)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 40)
                    .background(Color(hex: 0xF4F4F4))
                    .cornerRadius(20)
                }
                .padding(.horizontal)
                .padding(.top, 24)
            
          
                
                //sign up button
                
            Button(action: {
                print("Sign user up...")
                isButtonPressed = true
            }) {
                HStack {
                    Text("Sign up")
                        .fontWeight(.bold)
                }
                .foregroundColor(Color(hex: 0xD9D9D9))
                .frame(width: UIScreen.main.bounds.width - 32, height: 40)
                .background(isButtonPressed ? Color(hex : 0x1945CF): Color(hex: 0x09244B, opacity: 0.5)) // Змінюємо колір на синій, якщо кнопка натиснута
                .cornerRadius(20) // Опціонально: додаємо закруглені кути
            }
                .padding(.top, 36)
                .padding(.bottom, 36)
                
                //Spacer()
            
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
            
            .padding(.bottom, 24)
                 Spacer()
                //log in button
                
                NavigationLink {
                    LoginView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack {
                        Text("Already have an account?")
                            .foregroundColor(.black)
                        Text ("Log in")
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
    CreateAccountView()
}
