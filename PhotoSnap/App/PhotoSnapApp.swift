
import SwiftUI
extension Color {
    init(hex: Int, opacity: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: opacity
        )
    }
}
struct ContentView: View {
    @State private var email: String  = " "
    @State private var username = " "
    @State private var password = " "
    @State private var confirm_email = " "
    var body: some View {
        VStack (alignment:.leading, spacing: 15, content: {
            Text("Create account")
        })
    }
}
    
    
#Preview {
    ContentView()
}
