import SwiftUI


struct RowView: View {
    let books: [Book]
    let width: CGFloat
    let height: CGFloat
    let horizontalSpacing: CGFloat
    var body: some View {
        HStack(spacing: horizontalSpacing) {
            ForEach(books) { book in
                BookCell(title: book.titulo)
                    .frame(width: width, height: height)
            }
        }
        .padding()
    }
}
